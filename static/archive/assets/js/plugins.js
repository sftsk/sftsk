// usage: log('inside coolFunc', this, arguments);
// paulirish.com/2009/log-a-lightweight-wrapper-for-consolelog/
window.log = function(){
  log.history = log.history || [];  
  log.history.push(arguments);
  arguments.callee = arguments.callee.caller;  
  if(this.console) console.log( Array.prototype.slice.call(arguments) );
};
(function(b){function c(){}for(var d="assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,markTimeline,profile,profileEnd,time,timeEnd,trace,warn".split(","),a;a=d.pop();)b[a]=b[a]||c})(window.console=window.console||{});

// place any jQuery/helper plugins in here, instead of separate, slower script files.

//jquery.tweet.js

(function($) {
  $.fn.tweet = function(o){
    var s = $.extend({
      username: null,                           // [string or array] required unless using the 'query' option; one or more twitter screen names
      list: null,                               // [string]   optional name of list belonging to username
      favorites: false,                         // [boolean]  display the user's favorites instead of his tweets
      query: null,                              // [string]   optional search query
      avatar_size: null,                        // [integer]  height and width of avatar if displayed (48px max)
      count: 3,                                 // [integer]  how many tweets to display?
      fetch: null,                              // [integer]  how many tweets to fetch via the API (set this higher than 'count' if using the 'filter' option)
      page: 1,                                  // [integer]  which page of results to fetch (if count != fetch, you'll get unexpected results)
      retweets: true,                           // [boolean]  whether to fetch (official) retweets (not supported in all display modes)
      intro_text: null,                         // [string]   do you want text BEFORE your your tweets?
      outro_text: null,                         // [string]   do you want text AFTER your tweets?
      join_text:  null,                         // [string]   optional text in between date and tweet, try setting to "auto"
      auto_join_text_default: "i said,",        // [string]   auto text for non verb: "i said" bullocks
      auto_join_text_ed: "i",                   // [string]   auto text for past tense: "i" surfed
      auto_join_text_ing: "i am",               // [string]   auto tense for present tense: "i was" surfing
      auto_join_text_reply: "i replied to",     // [string]   auto tense for replies: "i replied to" @someone "with"
      auto_join_text_url: "i was looking at",   // [string]   auto tense for urls: "i was looking at" http:...
      loading_text: null,                       // [string]   optional loading text, displayed while tweets load
      refresh_interval: null ,                  // [integer]  optional number of seconds after which to reload tweets
      twitter_url: "twitter.com",               // [string]   custom twitter url, if any (apigee, etc.)
      twitter_api_url: "api.twitter.com",       // [string]   custom twitter api url, if any (apigee, etc.)
      twitter_search_url: "search.twitter.com", // [string]   custom twitter search url, if any (apigee, etc.)
      template: "{avatar}{time}{join}{text}",   // [string or function] template used to construct each tweet <li> - see code for available vars
      comparator: function(tweet1, tweet2) {    // [function] comparator used to sort tweets (see Array.sort)
        return tweet2["tweet_time"] - tweet1["tweet_time"];
      },
      filter: function(tweet) {                 // [function] whether or not to include a particular tweet (be sure to also set 'fetch')
        return true;
      }
    }, o);

    // See https://daringfireball.net/2010/07/improved_regex_for_matching_urls
    var url_regexp = /\b((?:[a-z][\w-]+:(?:\/{1,3}|[a-z0-9%])|www\d{0,3}[.]|[a-z0-9.\-]+[.][a-z]{2,4}\/)(?:[^\s()<>]+|\(([^\s()<>]+|(\([^\s()<>]+\)))*\))+(?:\(([^\s()<>]+|(\([^\s()<>]+\)))*\)|[^\s`!()\[\]{};:'".,<>?«»“”‘’]))/gi;

    // Expand values inside simple string templates with {placeholders}
    function t(template, info) {
      if (typeof template === "string") {
        var result = template;
        for(var key in info) {
          var val = info[key];
          result = result.replace(new RegExp('{'+key+'}','g'), val === null ? '' : val);
        }
        return result;
      } else return template(info);
    }
    // Export the t function for use when passing a function as the 'template' option
    $.extend({tweet: {t: t}});

    function replacer (regex, replacement) {
      return function() {
        var returning = [];
        this.each(function() {
          returning.push(this.replace(regex, replacement));
        });
        return $(returning);
      };
    }

    $.fn.extend({
      linkUrl: replacer(url_regexp, function(match) {
        var url = (/^[a-z]+:/i).test(match) ? match : "https://"+match;
        return "<a href=\""+url+"\">"+match+"</a>";
      }),
      linkUser: replacer(/@(\w+)/gi, "@<a href=\"https://"+s.twitter_url+"/$1\">$1</a>"),
      // Support various latin1 (\u00**) and arabic (\u06**) alphanumeric chars
      linkHash: replacer(/(?:^| )[\#]+([\w\u00c0-\u00d6\u00d8-\u00f6\u00f8-\u00ff\u0600-\u06ff]+)/gi,
                         ' <a href="https://'+s.twitter_search_url+'/search?q=&tag=$1&lang=all'+((s.username && s.username.length == 1) ? '&from='+s.username.join("%2BOR%2B") : '')+'">#$1</a>'),
      capAwesome: replacer(/\b(awesome)\b/gi, '<span class="awesome">$1</span>'),
      capEpic: replacer(/\b(epic)\b/gi, '<span class="epic">$1</span>'),
      makeHeart: replacer(/(&lt;)+[3]/gi, "<tt class='heart'>&#x2665;</tt>")
    });

    function parse_date(date_str) {
      // The non-search twitter APIs return inconsistently-formatted dates, which Date.parse
      // cannot handle in IE. We therefore perform the following transformation:
      // "Wed Apr 29 08:53:31 +0000 2009" => "Wed, Apr 29 2009 08:53:31 +0000"
      return Date.parse(date_str.replace(/^([a-z]{3})( [a-z]{3} \d\d?)(.*)( \d{4})$/i, '$1,$2$4$3'));
    }

    function relative_time(date) {
      var relative_to = (arguments.length > 1) ? arguments[1] : new Date();
      var delta = parseInt((relative_to.getTime() - date) / 1000, 10);
      var r = '';
      if (delta < 60) {
        r = delta + ' seconds ago';
      } else if(delta < 120) {
        r = 'a minute ago';
      } else if(delta < (45*60)) {
        r = (parseInt(delta / 60, 10)).toString() + ' minutes ago';
      } else if(delta < (2*60*60)) {
        r = 'an hour ago';
      } else if(delta < (24*60*60)) {
        r = '' + (parseInt(delta / 3600, 10)).toString() + ' hours ago';
      } else if(delta < (48*60*60)) {
        r = 'a day ago';
      } else {
        r = (parseInt(delta / 86400, 10)).toString() + ' days ago';
      }
      return 'about ' + r;
    }

    function build_auto_join_text(text) {
      if (text.match(/^(@([A-Za-z0-9-_]+)) .*/i)) {
        return s.auto_join_text_reply;
      } else if (text.match(url_regexp)) {
        return s.auto_join_text_url;
      } else if (text.match(/^((\w+ed)|just) .*/im)) {
        return s.auto_join_text_ed;
      } else if (text.match(/^(\w*ing) .*/i)) {
        return s.auto_join_text_ing;
      } else {
        return s.auto_join_text_default;
      }
    }

    function build_api_url() {
      var proto = ('https:' == document.location.protocol ? 'https:' : 'http:');
      var count = (s.fetch === null) ? s.count : s.fetch;
      if (s.list) {
        return proto+"//"+s.twitter_api_url+"/1/"+s.username[0]+"/lists/"+s.list+"/statuses.json?page="+s.page+"&per_page="+count+"&callback=?";
      } else if (s.favorites) {
        return proto+"//"+s.twitter_api_url+"/favorites/"+s.username[0]+".json?page="+s.page+"&count="+count+"&callback=?";
      } else if (s.query === null && s.username.length == 1) {
        return proto+'//'+s.twitter_api_url+'/1/statuses/user_timeline.json?screen_name='+s.username[0]+'&count='+count+(s.retweets ? '&include_rts=1' : '')+'&page='+s.page+'&callback=?';
      } else {
        var query = (s.query || 'from:'+s.username.join(' OR from:'));
        return proto+'//'+s.twitter_search_url+'/search.json?&q='+encodeURIComponent(query)+'&rpp='+count+'&page='+s.page+'&callback=?';
      }
    }

    // Convert twitter API objects into data available for
    // constructing each tweet <li> using a template
    function extract_template_data(item){
      var o = {};
      o.item = item;
      o.source = item.source;
      o.screen_name = item.from_user || item.user.screen_name;
      o.avatar_size = s.avatar_size;
      o.avatar_url = item.profile_image_url || item.user.profile_image_url;
      o.retweet = typeof(item.retweeted_status) != 'undefined';
      o.tweet_time = parse_date(item.created_at);
      o.join_text = s.join_text == "auto" ? build_auto_join_text(item.text) : s.join_text;
      o.tweet_id = item.id_str;
      o.twitter_base = "https://"+s.twitter_url+"/";
      o.user_url = o.twitter_base+o.screen_name;
      o.tweet_url = o.user_url+"/status/"+o.tweet_id;
      o.reply_url = o.twitter_base+"intent/tweet?in_reply_to="+o.tweet_id;
      o.retweet_url = o.twitter_base+"intent/retweet?tweet_id="+o.tweet_id;
      o.favorite_url = o.twitter_base+"intent/favorite?tweet_id="+o.tweet_id;
      o.retweeted_screen_name = o.retweet && item.retweeted_status.user.screen_name;
      o.tweet_relative_time = relative_time(o.tweet_time);
      o.tweet_raw_text = o.retweet ? ('RT @'+o.retweeted_screen_name+' '+item.retweeted_status.text) : item.text; // avoid '...' in long retweets
      o.tweet_text = $([o.tweet_raw_text]).linkUrl().linkUser().linkHash()[0];
      o.tweet_text_fancy = $([o.tweet_text]).makeHeart().capAwesome().capEpic()[0];

      // Default spans, and pre-formatted blocks for common layouts
      o.user = t('<a class="tweet_user" href="{user_url}">{screen_name}</a>', o);
      o.join = s.join_text ? t(' <span class="tweet_join">{join_text}</span> ', o) : ' ';
      o.avatar = o.avatar_size ?
        t('<a class="tweet_avatar" href="{user_url}"><img src="{avatar_url}" height="{avatar_size}" width="{avatar_size}" alt="{screen_name}\'s avatar" title="{screen_name}\'s avatar" border="0"/></a>', o) : '';
      o.time = t('<span class="tweet_time"><a href="{tweet_url}" title="view tweet on twitter">{tweet_relative_time}</a></span>', o);
      o.text = t('<span class="tweet_text">{tweet_text_fancy}</span>', o);
      o.reply_action = t('<a class="tweet_action tweet_reply" href="{reply_url}">reply</a>', o);
      o.retweet_action = t('<a class="tweet_action tweet_retweet" href="{retweet_url}">retweet</a>', o);
      o.favorite_action = t('<a class="tweet_action tweet_favorite" href="{favorite_url}">favorite</a>', o);
      return o;
    }

    return this.each(function(i, widget){
      var list = $('<ul class="tweet_list">').appendTo(widget);
      var intro = '<p class="tweet_intro">'+s.intro_text+'</p>';
      var outro = '<p class="tweet_outro">'+s.outro_text+'</p>';
      var loading = $('<p class="loading">'+s.loading_text+'</p>');

      if(s.username && typeof(s.username) == "string"){
        s.username = [s.username];
      }

      if (s.loading_text) $(widget).append(loading);
      $(widget).bind("tweet:load", function(){
        $.getJSON(build_api_url(), function(data){
          if (s.loading_text) loading.remove();
          if (s.intro_text) list.before(intro);
          list.empty();

          var tweets = $.map(data.results || data, extract_template_data);
          tweets = $.grep(tweets, s.filter).sort(s.comparator).slice(0, s.count);
          list.append($.map(tweets, function(o) { return "<li>" + t(s.template, o) + "</li>"; }).join('')).
              children('li:first').addClass('tweet_first').end().
              children('li:odd').addClass('tweet_even').end().
              children('li:even').addClass('tweet_odd');

          if (s.outro_text) list.after(outro);
          $(widget).trigger("loaded").trigger((tweets.length === 0 ? "empty" : "full"));
          if (s.refresh_interval) {
            window.setTimeout(function() { $(widget).trigger("tweet:load"); }, 1000 * s.refresh_interval);
          }
        });
      }).trigger("tweet:load");
    });
  };
})(jQuery);


/*!
 * slideViewerPro 1.0
 * Examples and documentation at: 
 * https://www.gcmingati.net/wordpress/wp-content/lab/jquery/svwt/
 * 2009-2010 Gian Carlo Mingati
 * Version: 1.0.5 (26-JULY-2009)
 * Dual licensed under the MIT and GPL licenses:
 * https://www.opensource.org/licenses/mit-license.php
 * https://www.gnu.org/licenses/gpl.html
 * Requires:
 * jQuery v1.3.2 or later
 * Option:
 * jQuery Timers plugin | plugins.jquery.com/project/timers (for autoslide mode)
 * 
 */
jQuery.extend( jQuery.easing, // from the jquery.easing plugin
{
	easeInOutExpo: function (x, t, b, c, d) {
		if (t==0) return b;
		if (t==d) return b+c;
		if ((t/=d/2) < 1) return c/2 * Math.pow(2, 10 * (t - 1)) + b;
		return c/2 * (-Math.pow(2, -10 * --t) + 2) + b;
	}
});
jQuery(function(){
   jQuery("div.svwp").prepend("<img src='images/svwloader.gif' class='ldrgif' alt='loading...'/ >"); //change with YOUR loader image path   
});
var j = 0;
jQuery.fn.slideViewerPro = function(settings) {
	  settings = jQuery.extend({
			galBorderWidth: 6,
			thumbsTopMargin: 3, 
			thumbsRightMargin: 3,
			thumbsBorderWidth: 3,
			buttonsWidth: 20,
			galBorderColor: "#ff0000",
			thumbsBorderColor: "#d8d8d8",
			thumbsActiveBorderColor: "#ff0000",
			buttonsTextColor: "#ff0000",
			thumbsBorderOpacity: 1.0, // could be 0, 0.1 up to 1.0
			thumbsActiveBorderOpacity: 1.0, // could be 0, 0.1 up to 1.0
			easeTime: 750,
			asTimer: 4000,
			thumbs: 5,
			thumbsPercentReduction: 12,
			thumbsVis: true,
			easeFunc: "easeInOutExpo",
			leftButtonInner: "-", //could be an image "<img src='images/larw.gif' />" or an escaped char as "&larr";
			rightButtonInner: "+", //could be an image or an escaped char as "&rarr";
			autoslide: false,
			typo: false,
			typoFullOpacity: 0.9,
			shuffle: false
		}, settings);
		
	return this.each(function(){
		function shuffle(a) {
	    var i = a.size();
	    while (--i) {
	        var j = Math.floor(Math.random() * (i));
	        var tmp = a.slice(i, i+1);
	        a.slice(j, j+1).insertAfter(tmp);
	    }
		} 
		var container = jQuery(this);
		(!settings.shuffle) ? null : shuffle(container.find("li"));
		container.find("img.ldrgif").remove();
		container.removeClass("svwp").addClass("slideViewer");	
		container.attr("id", "svwp"+j);
		var pictWidth = container.find("img").attr("width");
		var pictHeight = container.find("img").attr("height");
		var pictEls = container.find("li").size();
		(pictEls >= settings.thumbs) ? null : settings.thumbs = pictEls;
		var slideViewerWidth = pictWidth*pictEls;
		var thumbsWidth = Math.round(pictWidth*settings.thumbsPercentReduction/100);
		var thumbsHeight =  Math.round(pictHeight*settings.thumbsPercentReduction/100);
		var pos = 0;
		var r_enabled = true;
		var l_enabled = true;
    container.find("ul").css("width" , slideViewerWidth)
    .wrap(jQuery("<div style='width:"+ pictWidth +"px; overflow: hidden; position: relative; top: 0; left: 0'>"));
		container.css("width" , pictWidth);
		container.css("height" , pictHeight);
		container.each(function(i) {
			if(settings.typo)
			{
			jQuery(this).find("img").each(function(z) {
				jQuery(this).after("<span class='typo' style='position: absolute; width:"+(pictWidth-12)+"px; margin: 0 0 0 -"+pictWidth+"px'>"+jQuery(this).attr("alt")+"<\/span>");
			});
			}
			jQuery(this).after("<div class='thumbSlider' id='thumbSlider" + j + "'><ul><\/ul><\/div>");
			jQuery(this).next().after("<a href='#' class='left' id='left" + j + "'><span>"+settings.leftButtonInner+"</span><\/a><a href='#' class='right' id='right" + j + "'><span>"+settings.rightButtonInner+"<\/span><\/a>");
			
			jQuery(this).find("li").each(function(n) { 
						jQuery("div#thumbSlider" + j + " ul").append("<li><a title='" + jQuery(this).find("img").attr("alt") + "' href='#'><img width='"+ thumbsWidth +"' height='"+ thumbsHeight +"' src='" + jQuery(this).find("img").attr("src") + "' /><p class='tmbrdr'>&nbsp;<\/p><\/a><\/li>");						
			});
    
			jQuery("div#thumbSlider" + j + " a").each(function(z) {			
				jQuery(this).bind("click", function(){
					jQuery(this).find("p.tmbrdr").css({borderColor: settings.thumbsActiveBorderColor, opacity: settings.thumbsActiveBorderOpacity});
					jQuery(this).parent().parent().find("p.tmbrdr").not(jQuery(this).find("p.tmbrdr")).css({borderColor: settings.thumbsBorderColor, opacity: settings.thumbsBorderOpacity});
					var cnt = -(pictWidth*z);
					(cnt != container.find("ul").css("left").replace(/px/, "")) ? container.find("span.typo").animate({"opacity": 0}, 250) : null ;
					container.find("ul").animate({ left: cnt}, settings.easeTime, settings.easeFunc, function(){container.find("span.typo").animate({"opacity": settings.typoFullOpacity}, 250)});					
					return false;
				});
			});
			// shortcuts to +/- buttons
			var jQuerybtl = jQuery("a#left" + j);	
			var jQuerybtr = jQuery("a#right" + j);	
			
			// right/left 			
			jQuerybtr.bind("click", function(){
					if (r_enabled) (pictEls-pos > settings.thumbs*2 || pictEls%settings.thumbs == 0)? pos += settings.thumbs : pos += pictEls % settings.thumbs;
					r_enabled = false;
					jQuery(this).prev().prev().find("ul:not(:animated)").animate({ left: -(thumbsWidth+settings.thumbsRightMargin)*pos}, 500, settings.easeFunc, function(){authorityMixing();});					
					return false;
			});
			jQuerybtl.bind("click", function(){	
					if (l_enabled && pos!=0) (pictEls-pos > settings.thumbs || pictEls%settings.thumbs == 0)? pos -= settings.thumbs : pos -= pictEls % settings.thumbs;
					l_enabled = false;
					jQuery(this).prev().find("ul:not(:animated)").animate({ left: -(thumbsWidth+settings.thumbsRightMargin)*pos}, 500, settings.easeFunc, function(){authorityMixing();});			
					return false;
			});						
			
			function authorityMixing()
			{				
				
				//right btt
				(pos == pictEls-settings.thumbs) ? jQuerybtr.addClass("r_dis") : jQuerybtr.removeClass("r_dis");
				(pos == pictEls-settings.thumbs) ? r_enabled = false : r_enabled = true;
				//left btt
				(pos == 0) ? jQuerybtl.addClass("l_dis") : jQuerybtl.removeClass("l_dis");
				(pos == 0) ? l_enabled = false : l_enabled = true;
			}
			
			//CSS	defs @ runtime
			var tBorder = settings.thumbsBorderWidth;
			var contBorder = settings.galBorderWidth
			
			jQuery(".slideViewer a img").css({border: "0"});
			if(settings.typo)
					{
						jQuery(this).find("span.typo").each(function(z) {
							jQuery(this).css({marginTop: (pictHeight-jQuery(this).innerHeight()), opacity: settings.typoFullOpacity});
						});
					}
			jQuery("div#svwp"+ j).css({border: settings.galBorderWidth +"px solid "+settings.galBorderColor});
			
			jQuery("div#thumbSlider" + j).css({position: "relative", left: contBorder, top: settings.thumbsTopMargin+"px", width: settings.thumbs*thumbsWidth+((settings.thumbsRightMargin*settings.thumbs)-settings.thumbsRightMargin), height: thumbsHeight, textAlign: "center", overflow: "hidden", margin: "0 auto"});
			jQuery("div#thumbSlider" + j + " ul").css({width: (thumbsWidth*pictEls)+settings.thumbsRightMargin*pictEls, position: "relative", left: "0", top: "0"});
			jQuery("div#thumbSlider" + j + " ul li").css({marginRight: settings.thumbsRightMargin});
					
			jQuery("div#thumbSlider" + j).find("p.tmbrdr").css({width: (thumbsWidth-tBorder*2)+"px", height: (thumbsHeight-tBorder*2) +"px", top: -(thumbsHeight) +"px", border: settings.thumbsBorderWidth +"px solid "+settings.thumbsBorderColor, opacity: settings.thumbsBorderOpacity});			
			jQuery("div#thumbSlider" + j + " a:first p.tmbrdr").css({borderColor: settings.thumbsActiveBorderColor, opacity: settings.thumbsActiveBorderOpacity});
			
			var rbttLeftMargin = (pictWidth/2) + (jQuery("div#thumbSlider" + j).width()/2) + settings.thumbsRightMargin + contBorder;
			var lbttLeftMargin = (pictWidth/2) - (jQuery("div#thumbSlider" + j).width()/2) - (settings.buttonsWidth + settings.thumbsRightMargin) + contBorder;			

			
			var innerLeftImg = jQuerybtl.find("img");
			var innerRightImg = jQuerybtr.find("img");
			if(innerLeftImg.length != 0 && innerRightImg.length != 0)
			{		
				jQuery(innerLeftImg).load(function() {
					jQuery(this).css({margin: Math.round((thumbsHeight/2)-(jQuery(this).height()/2))+"px 0 0 0"});
				});				
				jQuery(innerRightImg).load(function() {
					jQuery(this).css({margin: Math.round((thumbsHeight/2)-(jQuery(this).height()/2))+"px 0 0 0"});
				});			
			}

			
			jQuery("a#left" + j).css({display: "block", textAlign: "center", width: settings.buttonsWidth + "px" , height: thumbsHeight+"px",  margin: -(thumbsHeight-settings.thumbsTopMargin) +"px 0 0 "+lbttLeftMargin+"px", textDecoration: "none", lineHeight: thumbsHeight+"px", color: settings.buttonsTextColor});
			jQuery("a#right" + j).css({display: "block", textAlign: "center", width: settings.buttonsWidth + "px", height: thumbsHeight+"px" , margin: -(thumbsHeight) +"px 0 0 "+rbttLeftMargin+"px", textDecoration: "none", lineHeight: thumbsHeight+"px", color: settings.buttonsTextColor});			


			authorityMixing();
	
			if(settings.autoslide){					
					var i = 1;
					
					jQuery("div#thumbSlider" + j).everyTime(settings.asTimer, "asld", function() {			
		  			jQuery(this).find("a").eq(i).trigger("click");
		  			if(i == 0)
		  			{
						pos = 0;
						l_enabled = false;
						jQuery("div#thumbSlider" + j).find("ul:not(:animated)").animate({ left: -(thumbsWidth+settings.thumbsRightMargin)*pos}, 500, settings.easeFunc, function(){authorityMixing();});
		  			}
		  			else l_enabled = true;
		  			
						(i%settings.thumbs == 0)? jQuery(this).next().next().trigger("click") : null;
						(i < pictEls-1)?	i++ : i=0;		  			
					});		
					
					//stops autoslidemode	
					jQuery("a#right" + j).bind("mouseup", function(){
						jQuery(this).prev().prev().stopTime("asld");
		    	});
					jQuery("a#left" + j).bind("mouseup", function(){
						jQuery(this).prev().stopTime("asld");	
					});
					jQuery("div#thumbSlider" + j + " a").bind("mouseup", function(){
						jQuery(this).parent().parent().parent().stopTime("asld");
					});
			}
			var uiDisplay = (settings.thumbsVis)? "block":"none";
			jQuery("div#thumbSlider" + j + ", a#left" + j + ", a#right" + j).wrapAll("<div style='width:"+ pictWidth +"px; display: "+uiDisplay+"' id='ui"+j+"'><\/div>");			
			jQuery("div#svwp"+ j + ", div#ui" + j).wrapAll("<div style='width:"+ pictWidth +"px'><\/div>");
			});
			(jQuery("div#thumbSlider" + j).width()+(settings.buttonsWidth*2) >= pictWidth)? alert("ALERT: THE THUMBNAILS SLIDER IS TOO WIDE! \nthumbsPercentReduction and/or buttonsWidth needs to be scaled down!") : null;
		j++;
  });	
};

/*
 * jQuery BBQ: Back Button & Query Library - v1.2.1 - 2/17/2010
 * https://benalman.com/projects/jquery-bbq-plugin/
 * 
 * Copyright (c) 2010 "Cowboy" Ben Alman
 * Dual licensed under the MIT and GPL licenses.
 * https://benalman.com/about/license/
 */
(function($,p){var i,m=Array.prototype.slice,r=decodeURIComponent,a=$.param,c,l,v,b=$.bbq=$.bbq||{},q,u,j,e=$.event.special,d="hashchange",A="querystring",D="fragment",y="elemUrlAttr",g="location",k="href",t="src",x=/^.*\?|#.*$/g,w=/^.*\#/,h,C={};function E(F){return typeof F==="string"}function B(G){var F=m.call(arguments,1);return function(){return G.apply(this,F.concat(m.call(arguments)))}}function n(F){return F.replace(/^[^#]*#?(.*)$/,"$1")}function o(F){return F.replace(/(?:^[^?#]*\?([^#]*).*$)?.*/,"$1")}function f(H,M,F,I,G){var O,L,K,N,J;if(I!==i){K=F.match(H?/^([^#]*)\#?(.*)$/:/^([^#?]*)\??([^#]*)(#?.*)/);J=K[3]||"";if(G===2&&E(I)){L=I.replace(H?w:x,"")}else{N=l(K[2]);I=E(I)?l[H?D:A](I):I;L=G===2?I:G===1?$.extend({},I,N):$.extend({},N,I);L=a(L);if(H){L=L.replace(h,r)}}O=K[1]+(H?"#":L||!K[1]?"?":"")+L+J}else{O=M(F!==i?F:p[g][k])}return O}a[A]=B(f,0,o);a[D]=c=B(f,1,n);c.noEscape=function(G){G=G||"";var F=$.map(G.split(""),encodeURIComponent);h=new RegExp(F.join("|"),"g")};c.noEscape(",/");$.deparam=l=function(I,F){var H={},G={"true":!0,"false":!1,"null":null};$.each(I.replace(/\+/g," ").split("&"),function(L,Q){var K=Q.split("="),P=r(K[0]),J,O=H,M=0,R=P.split("]["),N=R.length-1;if(/\[/.test(R[0])&&/\]$/.test(R[N])){R[N]=R[N].replace(/\]$/,"");R=R.shift().split("[").concat(R);N=R.length-1}else{N=0}if(K.length===2){J=r(K[1]);if(F){J=J&&!isNaN(J)?+J:J==="undefined"?i:G[J]!==i?G[J]:J}if(N){for(;M<=N;M++){P=R[M]===""?O.length:R[M];O=O[P]=M<N?O[P]||(R[M+1]&&isNaN(R[M+1])?{}:[]):J}}else{if($.isArray(H[P])){H[P].push(J)}else{if(H[P]!==i){H[P]=[H[P],J]}else{H[P]=J}}}}else{if(P){H[P]=F?i:""}}});return H};function z(H,F,G){if(F===i||typeof F==="boolean"){G=F;F=a[H?D:A]()}else{F=E(F)?F.replace(H?w:x,""):F}return l(F,G)}l[A]=B(z,0);l[D]=v=B(z,1);$[y]||($[y]=function(F){return $.extend(C,F)})({a:k,base:k,iframe:t,img:t,input:t,form:"action",link:k,script:t});j=$[y];function s(I,G,H,F){if(!E(H)&&typeof H!=="object"){F=H;H=G;G=i}return this.each(function(){var L=$(this),J=G||j()[(this.nodeName||"").toLowerCase()]||"",K=J&&L.attr(J)||"";L.attr(J,a[I](K,H,F))})}$.fn[A]=B(s,A);$.fn[D]=B(s,D);b.pushState=q=function(I,F){if(E(I)&&/^#/.test(I)&&F===i){F=2}var H=I!==i,G=c(p[g][k],H?I:{},H?F:2);p[g][k]=G+(/#/.test(G)?"":"#")};b.getState=u=function(F,G){return F===i||typeof F==="boolean"?v(F):v(G)[F]};b.removeState=function(F){var G={};if(F!==i){G=u();$.each($.isArray(F)?F:arguments,function(I,H){delete G[H]})}q(G,2)};e[d]=$.extend(e[d],{add:function(F){var H;function G(J){var I=J[D]=c();J.getState=function(K,L){return K===i||typeof K==="boolean"?l(I,K):l(I,L)[K]};H.apply(this,arguments)}if($.isFunction(F)){H=F;return G}else{H=F.handler;F.handler=G}}})})(jQuery,this);
/*
 * jQuery hashchange event - v1.2 - 2/11/2010
 * https://benalman.com/projects/jquery-hashchange-plugin/
 * 
 * Copyright (c) 2010 "Cowboy" Ben Alman
 * Dual licensed under the MIT and GPL licenses.
 * https://benalman.com/about/license/
 */
(function($,i,b){var j,k=$.event.special,c="location",d="hashchange",l="href",f=$.browser,g=document.documentMode,h=f.msie&&(g===b||g<8),e="on"+d in i&&!h;function a(m){m=m||i[c][l];return m.replace(/^[^#]*#?(.*)$/,"$1")}$[d+"Delay"]=100;k[d]=$.extend(k[d],{setup:function(){if(e){return false}$(j.start)},teardown:function(){if(e){return false}$(j.stop)}});j=(function(){var m={},r,n,o,q;function p(){o=q=function(s){return s};if(h){n=$('<iframe src="javascript:0"/>').hide().insertAfter("body")[0].contentWindow;q=function(){return a(n.document[c][l])};o=function(u,s){if(u!==s){var t=n.document;t.open().close();t[c].hash="#"+u}};o(a())}}m.start=function(){if(r){return}var t=a();o||p();(function s(){var v=a(),u=q(t);if(v!==t){o(t=v,u);$(i).trigger(d)}else{if(u!==t){i[c][l]=i[c][l].replace(/#.*/,"")+"#"+u}}r=setTimeout(s,$[d+"Delay"])})()};m.stop=function(){if(!n){r&&clearTimeout(r);r=0}};return m})()})(jQuery,this);


/**
 * jquery.backgroundPosition.js	
 * @author Alexander Farkas
 * v. 1.22
 */


(function($) {
	if(!document.defaultView || !document.defaultView.getComputedStyle){ // IE6-IE8
		var oldCurCSS = $.curCSS;
		$.curCSS = function(elem, name, force){
			if(name === 'background-position'){
				name = 'backgroundPosition';
			}
			if(name !== 'backgroundPosition' || !elem.currentStyle || elem.currentStyle[ name ]){
				return oldCurCSS.apply(this, arguments);
			}
			var style = elem.style;
			if ( !force && style && style[ name ] ){
				return style[ name ];
			}
			return oldCurCSS(elem, 'backgroundPositionX', force) +' '+ oldCurCSS(elem, 'backgroundPositionY', force);
		};
	}
	
	var oldAnim = $.fn.animate;
	$.fn.animate = function(prop){
		if('background-position' in prop){
			prop.backgroundPosition = prop['background-position'];
			delete prop['background-position'];
		}
		if('backgroundPosition' in prop){
			prop.backgroundPosition = '('+ prop.backgroundPosition;
		}
		return oldAnim.apply(this, arguments);
	};
	
	function toArray(strg){
		strg = strg.replace(/left|top/g,'0px');
		strg = strg.replace(/right|bottom/g,'100%');
		strg = strg.replace(/([0-9\.]+)(\s|\)|$)/g,"$1px$2");
		var res = strg.match(/(-?[0-9\.]+)(px|\%|em|pt)\s(-?[0-9\.]+)(px|\%|em|pt)/);
		return [parseFloat(res[1],10),res[2],parseFloat(res[3],10),res[4]];
	}
	
	$.fx.step. backgroundPosition = function(fx) {
		if (!fx.bgPosReady) {
			var start = $.curCSS(fx.elem,'backgroundPosition');
			if(!start){//FF2 no inline-style fallback
				start = '0px 0px';
			}
			
			start = toArray(start);
			fx.start = [start[0],start[2]];
			var end = toArray(fx.end);
			fx.end = [end[0],end[2]];
			
			fx.unit = [end[1],end[3]];
			fx.bgPosReady = true;
		}
		//return;
		var nowPosX = [];
		nowPosX[0] = ((fx.end[0] - fx.start[0]) * fx.pos) + fx.start[0] + fx.unit[0];
		nowPosX[1] = ((fx.end[1] - fx.start[1]) * fx.pos) + fx.start[1] + fx.unit[1];           
		fx.elem.style.backgroundPosition = nowPosX[0]+' '+nowPosX[1];

	};
})(jQuery);

/*!
* MediaElement.js
* HTML5 <video> and <audio> shim and player
* https://mediaelementjs.com/
*
* Creates a JavaScript object that mimics HTML5 MediaElement API
* for browsers that don't understand HTML5 or can't play the provided codec
* Can play MP4 (H.264), Ogg, WebM, FLV, WMV, WMA, ACC, and MP3
*
* Copyright 2010, John Dyer (https://johndyer.me)
* Dual licensed under the MIT or GPL Version 2 licenses.
*
*/var mejs=mejs||{};mejs.version="2.1.0";mejs.meIndex=0;mejs.plugins={silverlight:[{version:[3,0],types:["video/mp4","video/m4v","video/mov","video/wmv","audio/wma","audio/m4a","audio/mp3","audio/wav","audio/mpeg"]}],flash:[{version:[9,0,124],types:["video/mp4","video/m4v","video/mov","video/flv","audio/flv","audio/mp3","audio/m4a","audio/mpeg"]}]};
mejs.Utility={encodeUrl:function(a){return encodeURIComponent(a)},escapeHTML:function(a){return a.split("&").join("&amp;").split("<").join("&lt;").split('"').join("&quot;")},absolutizeUrl:function(a){var b=document.createElement("div");b.innerHTML='<a href="'+this.escapeHTML(a)+'">x</a>';return b.firstChild.href},getScriptPath:function(a){for(var b=0,c,d="",e="",f,g=document.getElementsByTagName("script");b<g.length;b++){f=g[b].src;for(c=0;c<a.length;c++){e=a[c];if(f.indexOf(e)>-1){d=f.substring(0,
f.indexOf(e));break}}if(d!=="")break}return d},secondsToTimeCode:function(a){a=Math.round(a);var b=Math.floor(a/60);b=b>=10?b:"0"+b;a=Math.floor(a%60);a=a>=10?a:"0"+a;return b+":"+a}};
mejs.PluginDetector={hasPluginVersion:function(a,b){var c=this.plugins[a];b[1]=b[1]||0;b[2]=b[2]||0;return c[0]>b[0]||c[0]==b[0]&&c[1]>b[1]||c[0]==b[0]&&c[1]==b[1]&&c[2]>=b[2]?true:false},nav:window.navigator,ua:window.navigator.userAgent.toLowerCase(),plugins:[],addPlugin:function(a,b,c,d,e){this.plugins[a]=this.detectPlugin(b,c,d,e)},detectPlugin:function(a,b,c,d){var e=[0,0,0],f;if(typeof this.nav.plugins!="undefined"&&typeof this.nav.plugins[a]=="object"){if((c=this.nav.plugins[a].description)&&
!(typeof this.nav.mimeTypes!="undefined"&&this.nav.mimeTypes[b]&&!this.nav.mimeTypes[b].enabledPlugin)){e=c.replace(a,"").replace(/^\s+/,"").replace(/\sr/gi,".").split(".");for(a=0;a<e.length;a++)e[a]=parseInt(e[a].match(/\d+/),10)}}else if(typeof window.ActiveXObject!="undefined")try{if(f=new ActiveXObject(c))e=d(f)}catch(g){}return e}};
mejs.PluginDetector.addPlugin("flash","Shockwave Flash","application/x-shockwave-flash","ShockwaveFlash.ShockwaveFlash",function(a){var b=[];if(a=a.GetVariable("$version")){a=a.split(" ")[1].split(",");b=[parseInt(a[0],10),parseInt(a[1],10),parseInt(a[2],10)]}return b});
mejs.PluginDetector.addPlugin("silverlight","Silverlight Plug-In","application/x-silverlight-2","AgControl.AgControl",function(a){var b=[0,0,0,0],c=function(d,e,f,g){for(;d.isVersionSupported(e[0]+"."+e[1]+"."+e[2]+"."+e[3]);)e[f]+=g;e[f]-=g};c(a,b,0,1);c(a,b,1,1);c(a,b,2,1E4);c(a,b,2,1E3);c(a,b,2,100);c(a,b,2,10);c(a,b,2,1);c(a,b,3,1);return b});
if(mejs.PluginDetector.ua.match(/Android 2\.[12]/)!==null)HTMLMediaElement.canPlayType=function(a){return a.match(/video\/(mp4|m4v)/gi)!==null?"probably":""};
mejs.MediaFeatures={init:function(){var a=mejs.PluginDetector.nav,b=mejs.PluginDetector.ua,c,d=["source","track","audio","video"];this.isiPad=b.match(/iPad/i)!==null;this.isiPhone=b.match(/iPhone/i)!==null;this.isAndroid=b.match(/Android/i)!==null;this.isIE=a.appName.indexOf("Microsoft")!=-1;this.isChrome=b.match(/Chrome/gi)!==null;for(a=0;a<d.length;a++)c=document.createElement(d[a]);this.hasNativeFullScreen=typeof c.webkitEnterFullScreen!=="undefined";if(this.isChrome)this.hasNativeFullScreen=false}};
mejs.MediaFeatures.init();mejs.HtmlMediaElement={pluginType:"native",setCurrentTime:function(a){this.currentTime=a},setMuted:function(a){this.muted=a},setVolume:function(a){this.volume=a},stop:function(){this.pause()},setSrc:function(a){if(typeof a=="string")this.src=a;else{var b,c;for(b=0;b<a.length;b++){c=a[b];if(this.canPlayType(c.type))this.src=c.src}}},setVideoSize:function(a,b){this.width=a;this.height=b}};
mejs.PluginMediaElement=function(a,b,c){this.id=a;this.pluginType=b;this.src=c;this.events={}};
mejs.PluginMediaElement.prototype={pluginElement:null,pluginType:"",playbackRate:-1,defaultPlaybackRate:-1,seekable:[],played:[],paused:true,ended:false,seeking:false,duration:0,error:null,muted:false,volume:1,currentTime:0,play:function(){if(this.pluginApi!=null){this.pluginApi.playMedia();this.paused=false}},load:function(){if(this.pluginApi!=null){this.pluginApi.loadMedia();this.paused=false}},pause:function(){if(this.pluginApi!=null){this.pluginApi.pauseMedia();this.paused=true}},stop:function(){if(this.pluginApi!=
null){this.pluginApi.stopMedia();this.paused=true}},canPlayType:function(a){var b,c,d,e=mejs.plugins[this.pluginType];for(b=0;b<e.length;b++){d=e[b];if(mejs.PluginDetector.hasPluginVersion(this.pluginType,d.version))for(c=0;c<d.types.length;c++)if(a==d.types[c])return true}return false},setSrc:function(a){if(typeof a=="string"){this.pluginApi.setSrc(mejs.Utility.absolutizeUrl(a));this.src=mejs.Utility.absolutizeUrl(a)}else{var b,c;for(b=0;b<a.length;b++){c=a[b];if(this.canPlayType(c.type)){this.pluginApi.setSrc(mejs.Utility.absolutizeUrl(c.src));
this.src=mejs.Utility.absolutizeUrl(a)}}}},setCurrentTime:function(a){if(this.pluginApi!=null){this.pluginApi.setCurrentTime(a);this.currentTime=a}},setVolume:function(a){if(this.pluginApi!=null){this.pluginApi.setVolume(a);this.volume=a}},setMuted:function(a){if(this.pluginApi!=null){this.pluginApi.setMuted(a);this.muted=a}},setVideoSize:function(a,b){if(this.pluginElement.style){this.pluginElement.style.width=a+"px";this.pluginElement.style.height=b+"px"}this.pluginApi!=null&&this.pluginApi.setVideoSize(a,
b)},setFullscreen:function(a){this.pluginApi!=null&&this.pluginApi.setFullscreen(a)},addEventListener:function(a,b){this.events[a]=this.events[a]||[];this.events[a].push(b)},dispatchEvent:function(a){var b,c,d=this.events[a];if(d){c=Array.prototype.slice.call(arguments,1);for(b=0;b<d.length;b++)d[b].apply(null,c)}}};
mejs.MediaPluginBridge={pluginMediaElements:{},htmlMediaElements:{},registerPluginElement:function(a,b,c){this.pluginMediaElements[a]=b;this.htmlMediaElements[a]=c},initPlugin:function(a){var b=this.pluginMediaElements[a],c=this.htmlMediaElements[a];switch(b.pluginType){case "flash":b.pluginElement=b.pluginApi=document.getElementById(a);break;case "silverlight":b.pluginElement=document.getElementById(b.id);b.pluginApi=b.pluginElement.Content.MediaElementJS}b.pluginApi!=null&&b.success&&b.success(b,
c)},fireEvent:function(a,b,c){var d,e;a=this.pluginMediaElements[a];a.ended=false;a.paused=true;b={type:b,target:a};for(d in c){a[d]=c[d];b[d]=c[d]}e=c.bufferedTime||0;b.target.buffered=b.buffered={start:function(){return 0},end:function(){return e},length:1};a.dispatchEvent(b.type,b)}};
mejs.MediaElementDefaults={mode:"auto",plugins:["flash","silverlight"],enablePluginDebug:false,type:"",pluginPath:mejs.Utility.getScriptPath(["mediaelement.js","mediaelement.min.js","mediaelement-and-player.js","mediaelement-and-player.min.js"]),flashName:"flashmediaelement.swf",enablePluginSmoothing:false,silverlightName:"silverlightmediaelement.xap",defaultVideoWidth:480,defaultVideoHeight:270,pluginWidth:-1,pluginHeight:-1,timerRate:250,success:function(){},error:function(){}};
mejs.MediaElement=function(a,b){mejs.HtmlMediaElementShim.create(a,b)};
mejs.HtmlMediaElementShim={create:function(a,b){var c=mejs.MediaElementDefaults,d=typeof a=="string"?document.getElementById(a):a,e=d.tagName.toLowerCase()=="video",f=typeof d.canPlayType!="undefined",g={method:"",url:""},j=d.getAttribute("poster"),h=d.getAttribute("autoplay"),k=d.getAttribute("preload"),i=d.getAttribute("controls"),m;for(m in b)c[m]=b[m];j=typeof j=="undefined"||j===null?"":j;k=typeof k=="undefined"||k===null||k==="false"?"none":k;h=!(typeof h=="undefined"||h===null||h==="false");
i=!(typeof i=="undefined"||i===null||i==="false");g=this.determinePlayback(d,c,e,f);if(g.method=="native")this.updateNative(d,c,h,k,g);else g.method!==""?this.createPlugin(d,c,e,g.method,g.url!==null?mejs.Utility.absolutizeUrl(g.url):"",j,h,k,i):this.createErrorMessage(d,c,g.url!==null?mejs.Utility.absolutizeUrl(g.url):"",j)},determinePlayback:function(a,b,c,d){var e=[],f,g,j={method:"",url:""},h=a.getAttribute("src"),k,i;if(typeof b.type!="undefined"&&b.type!=="")e.push({type:b.type,url:null});else if(h!=
"undefined"&&h!==null){g=this.checkType(h,a.getAttribute("type"),c);e.push({type:g,url:h})}else for(f=0;f<a.childNodes.length;f++){g=a.childNodes[f];if(g.nodeType==1&&g.tagName.toLowerCase()=="source"){h=g.getAttribute("src");g=this.checkType(h,g.getAttribute("type"),c);e.push({type:g,url:h})}}if(d&&(b.mode==="auto"||b.mode==="native"))for(f=0;f<e.length;f++)if(a.canPlayType(e[f].type).replace(/no/,"")!==""||a.canPlayType(e[f].type.replace(/mp3/,"mpeg")).replace(/no/,"")!==""){j.method="native";j.url=
e[f].url;return j}if(b.mode==="auto"||b.mode==="shim")for(f=0;f<e.length;f++){g=e[f].type;for(a=0;a<b.plugins.length;a++){h=b.plugins[a];k=mejs.plugins[h];for(c=0;c<k.length;c++){i=k[c];if(mejs.PluginDetector.hasPluginVersion(h,i.version))for(d=0;d<i.types.length;d++)if(g==i.types[d]){j.method=h;j.url=e[f].url;return j}}}}if(j.method==="")j.url=e[0].url;return j},checkType:function(a,b,c){if(a&&!b){a=a.substring(a.lastIndexOf(".")+1);return(c?"video":"audio")+"/"+a}else return b&&~b.indexOf(";")?
b.substr(0,b.indexOf(";")):b},createErrorMessage:function(a,b,c,d){var e=document.createElement("div");e.className="me-cannotplay";try{e.style.width=a.width+"px";e.style.height=a.height+"px"}catch(f){}e.innerHTML=d!==""?'<a href="'+c+'"><img src="'+d+'" /></a>':'<a href="'+c+'"><span>Download File</span></a>';a.parentNode.insertBefore(e,a);a.style.display="none";b.error(a)},createPlugin:function(a,b,c,d,e,f,g,j,h){var k=f=1,i="me_"+d+"_"+mejs.meIndex++,m=new mejs.PluginMediaElement(i,d,e),n=document.createElement("div"),
l;for(l=a.parentNode;l!==null&&l.tagName.toLowerCase()!="body";){if(l.parentNode.tagName.toLowerCase()=="p"){l.parentNode.parentNode.insertBefore(l,l.parentNode);break}l=l.parentNode}if(c){f=b.videoWidth>0?b.videoWidth:a.getAttribute("width")!==null?a.getAttribute("width"):b.defaultVideoWidth;k=b.videoHeight>0?b.videoHeight:a.getAttribute("height")!==null?a.getAttribute("height"):b.defaultVideoHeight}else if(b.enablePluginDebug){f=320;k=240}m.success=b.success;mejs.MediaPluginBridge.registerPluginElement(i,
m,a);n.className="me-plugin";a.parentNode.insertBefore(n,a);c=["id="+i,"isvideo="+(c?"true":"false"),"autoplay="+(g?"true":"false"),"preload="+j,"width="+f,"timerrate="+b.timerRate,"height="+k];if(e!==null)d=="flash"?c.push("file="+mejs.Utility.encodeUrl(e)):c.push("file="+e);b.enablePluginDebug&&c.push("debug=true");b.enablePluginSmoothing&&c.push("smoothing=true");h&&c.push("controls=true");switch(d){case "silverlight":n.innerHTML='<object data="data:application/x-silverlight-2," type="application/x-silverlight-2" id="'+
i+'" name="'+i+'" width="'+f+'" height="'+k+'"><param name="initParams" value="'+c.join(",")+'" /><param name="windowless" value="true" /><param name="background" value="black" /><param name="minRuntimeVersion" value="3.0.0.0" /><param name="autoUpgrade" value="true" /><param name="source" value="'+b.pluginPath+b.silverlightName+'" /></object>';break;case "flash":if(mejs.MediaFeatures.isIE){d=document.createElement("div");n.appendChild(d);d.outerHTML='<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="https://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab" id="'+
i+'" width="'+f+'" height="'+k+'"><param name="movie" value="'+b.pluginPath+b.flashName+"?x="+new Date+'" /><param name="flashvars" value="'+c.join("&amp;")+'" /><param name="quality" value="high" /><param name="bgcolor" value="#000000" /><param name="wmode" value="transparent" /><param name="allowScriptAccess" value="always" /><param name="allowFullScreen" value="true" /></object>'}else n.innerHTML='<embed id="'+i+'" name="'+i+'" play="true" loop="false" quality="high" bgcolor="#000000" wmode="transparent" allowScriptAccess="always" allowFullScreen="true" type="application/x-shockwave-flash" pluginspage="https://www.macromedia.com/go/getflashplayer" src="'+
b.pluginPath+b.flashName+"?"+c.join("&")+'" width="'+f+'" height="'+k+'"></embed>'}a.style.display="none"},updateNative:function(a,b,c,d,e){for(var f in mejs.HtmlMediaElement)a[f]=mejs.HtmlMediaElement[f];if(mejs.MediaFeatures.isChrome)if(d==="none"&&!c){a.src="";a.load();a.canceledPreload=true;a.addEventListener("play",function(){if(a.canceledPreload){a.src=e.url;a.load();a.play();a.canceledPreload=false}},false)}else if(c){a.load();a.play()}b.success(a,a)}};window.mejs=mejs;
window.MediaElement=mejs.MediaElement;

/*!
 * MediaElementPlayer
 * https://mediaelementjs.com/
 *
 * Creates a controller bar for HTML5 <video> add <audio> tags
 * using jQuery and MediaElement.js (HTML5 Flash/Silverlight wrapper)
 *
 * Copyright 2010, John Dyer (https://johndyer.me)
 * Dual licensed under the MIT or GPL Version 2 licenses.
 *
 */(function(f){mejs.MepDefaults={poster:"",defaultVideoWidth:480,defaultVideoHeight:270,videoWidth:-1,videoHeight:-1,audioWidth:400,audioHeight:30,startVolume:0.8,loop:false,enableAutosize:true,features:["playpause","current","progress","duration","tracks","volume","fullscreen"]};mejs.mepIndex=0;mejs.MediaElementPlayer=function(a,c){if(!(this instanceof mejs.MediaElementPlayer))return new mejs.MediaElementPlayer(a,c);var b=this,d=mejs.MediaFeatures;b.options=f.extend({},mejs.MepDefaults,c);b.$media=
b.$node=f(a);if(a[0].player)return a[0].player;else a[0].player=b;b.isVideo=b.$media[0].tagName.toLowerCase()==="video";if(d.isiPad||d.isiPhone){b.$media.attr("controls","controls");b.$media.removeAttr("poster");if(d.isiPad&&b.$media[0].getAttribute("autoplay")!==null){b.$media[0].load();b.$media[0].play()}}else{if(d.isAndroid){if(b.isVideo){if(b.$media.find("source").length>0)b.$media[0].src=b.$media.find('source[src$="mp4"]').attr("src");b.$media.click(function(){b.$media[0].play()});return}}else b.$media.removeAttr("controls");
b.init();return b}};mejs.MediaElementPlayer.prototype={init:function(){var a=this,c=f.extend(true,{},a.options,{success:function(b,d){a.meReady(b,d)},error:function(b){a.handleError(b)}});a.id="mep_"+mejs.mepIndex++;a.container=f('<div id="'+a.id+'" class="mejs-container"><div class="mejs-inner"><div class="mejs-mediaelement"></div><div class="mejs-layers"></div><div class="mejs-controls"></div><div class="mejs-clear"></div></div></div>').addClass(a.$media[0].className).insertBefore(a.$media);a.container.find(".mejs-mediaelement").append(a.$media);
a.controls=a.container.find(".mejs-controls");a.layers=a.container.find(".mejs-layers");if(a.isVideo){a.width=a.options.videoWidth>0?a.options.videoWidth:a.$media[0].getAttribute("width")!==null?a.$media.attr("width"):a.options.defaultVideoWidth;a.height=a.options.videoHeight>0?a.options.videoHeight:a.$media[0].getAttribute("height")!==null?a.$media.attr("height"):a.options.defaultVideoHeight}else{a.width=a.options.audioWidth;a.height=a.options.audioHeight}a.setPlayerSize(a.width,a.height);c.pluginWidth=
a.height;c.pluginHeight=a.width;mejs.MediaElement(a.$media[0],c)},meReady:function(a,c){var b=this,d,e;if(!this.created){this.created=true;b.media=a;b.domNode=c;b.buildposter(b,b.controls,b.layers,b.media);b.buildoverlays(b,b.controls,b.layers,b.media);b.findTracks();for(d in b.options.features){e=b.options.features[d];if(b["build"+e])try{b["build"+e](b,b.controls,b.layers,b.media)}catch(g){}}b.setPlayerSize(b.width,b.height);b.setControlsSize();if(b.isVideo){b.container.bind("mouseenter",function(){b.controls.css("visibility",
"visible");b.controls.stop(true,true).fadeIn(200)}).bind("mouseleave",function(){b.media.paused||b.controls.stop(true,true).fadeOut(200,function(){f(this).css("visibility","hidden");f(this).css("display","block")})});b.options.enableAutosize&&b.media.addEventListener("loadedmetadata",function(h){if(b.options.videoHeight<=0&&b.$media[0].getAttribute("height")===null&&!isNaN(h.target.videoHeight)){b.setPlayerSize(h.target.videoWidth,h.target.videoHeight);b.setControlsSize();b.media.setVideoSize(h.target.videoWidth,
h.target.videoHeight)}},false)}b.media.addEventListener("ended",function(){b.media.setCurrentTime(0);b.media.pause();b.options.loop?b.media.play():b.controls.css("visibility","visible")},true);setTimeout(function(){b.setControlsSize();b.setPlayerSize(b.width,b.height)},50);b.options.success&&b.options.success(b.media,b.domNode)}},handleError:function(a){this.options.error&&this.options.error(a)},setPlayerSize:function(a,c){this.width=parseInt(a,10);this.height=parseInt(c,10);this.container.width(this.width).height(this.height);
this.layers.children("div.mejs-layer").width(this.width).height(this.height)},setControlsSize:function(){var a=0,c=0,b=this.controls.find(".mejs-time-rail"),d=this.controls.find(".mejs-time-total");b.siblings().each(function(){if(f(this).css("position")!="absolute")a+=f(this).outerWidth(true)});c=this.controls.width()-a-(b.outerWidth(true)-b.outerWidth(false));b.width(c);d.width(c-(d.outerWidth(true)-d.width()))},buildposter:function(a,c,b,d){var e=f('<div class="mejs-poster mejs-layer"><img /></div>').appendTo(b);
c=a.$media.attr("poster");b=e.find("img").width(a.width).height(e.height);if(a.options.poster!="")b.attr("src",a.options.poster);else c!==""&&c!=null?b.attr("src",c):e.remove();d.addEventListener("play",function(){e.hide()},false)},buildoverlays:function(a,c,b,d){if(a.isVideo){var e=f('<div class="mejs-overlay mejs-layer"><div class="mejs-overlay-loading"><span></span></div></div>').hide().appendTo(b),g=f('<div class="mejs-overlay mejs-layer"><div class="mejs-overlay-error"></div></div>').hide().appendTo(b),
h=f('<div class="mejs-overlay mejs-layer mejs-overlay-play"><div class="mejs-overlay-button"></div></div>').appendTo(b).click(function(){d.paused?d.play():d.pause()});d.addEventListener("play",function(){h.hide();g.hide()},false);d.addEventListener("pause",function(){h.show()},false);d.addEventListener("loadstart",function(){e.show()},false);d.addEventListener("canplay",function(){e.hide()},false);d.addEventListener("error",function(){e.hide();g.show();g.find("mejs-overlay-error").html("Error loading this resource")},
false)}},findTracks:function(){var a=this,c=a.$media.find("track");a.tracks=[];c.each(function(){a.tracks.push({srclang:f(this).attr("srclang").toLowerCase(),src:f(this).attr("src"),kind:f(this).attr("kind"),entries:[],isLoaded:false})})},changeSkin:function(a){this.container[0].className="mejs-container "+a;this.setPlayerSize();this.setControlsSize()},play:function(){this.media.play()},pause:function(){this.media.pause()},load:function(){this.media.load()},setMuted:function(a){this.media.setMuted(a)},
setCurrentTime:function(a){this.media.setCurrentTime(a)},getCurrentTime:function(){return this.media.currentTime},setVolume:function(a){this.media.setVolume(a)},getVolume:function(){return this.media.volume},setSrc:function(a){this.media.setSrc(a)}};jQuery.fn.mediaelementplayer=function(a){return this.each(function(){new mejs.MediaElementPlayer(f(this),a)})};window.MediaElementPlayer=mejs.MediaElementPlayer})(jQuery);
(function(f){MediaElementPlayer.prototype.buildplaypause=function(a,c,b,d){var e=f('<div class="mejs-button mejs-playpause-button mejs-play"><span></span></div>').appendTo(c).click(function(){d.paused?d.play():d.pause()});d.addEventListener("play",function(){e.removeClass("mejs-play").addClass("mejs-pause")},false);d.addEventListener("playing",function(){e.removeClass("mejs-play").addClass("mejs-pause")},false);d.addEventListener("pause",function(){e.removeClass("mejs-pause").addClass("mejs-play")},
false);d.addEventListener("paused",function(){e.removeClass("mejs-pause").addClass("mejs-play")},false)}})(jQuery);
(function(f){MediaElementPlayer.prototype.buildstop=function(a,c,b,d){f('<div class="mejs-button mejs-stop-button mejs-stop"><span></span></div>').appendTo(c).click(function(){d.paused||d.pause();if(d.currentTime>0){d.setCurrentTime(0);c.find(".mejs-time-current").width("0px");c.find(".mejs-time-handle").css("left","0px");c.find(".mejs-time-float-current").html(mejs.Utility.secondsToTimeCode(0));c.find(".mejs-currenttime").html(mejs.Utility.secondsToTimeCode(0));b.find(".mejs-poster").show()}})}})(jQuery);
(function(f){MediaElementPlayer.prototype.buildprogress=function(a,c,b,d){f('<div class="mejs-time-rail"><span class="mejs-time-total"><span class="mejs-time-loaded"></span><span class="mejs-time-current"></span><span class="mejs-time-handle"></span><span class="mejs-time-float"><span class="mejs-time-float-current">00:00</span><span class="mejs-time-float-corner"></span></span></span></div>').appendTo(c);var e=c.find(".mejs-time-total"),g=c.find(".mejs-time-loaded"),h=c.find(".mejs-time-current"),
k=c.find(".mejs-time-handle"),n=c.find(".mejs-time-float"),p=c.find(".mejs-time-float-current"),m=function(i){if(i){var l=i.target,q=null;if(l&&l.buffered&&l.buffered.length>0&&l.buffered.end&&l.duration)q=l.buffered.end(0)/l.duration;else if(l&&l.bytesTotal!=undefined&&l.bytesTotal>0&&l.bufferedBytes!=undefined)q=l.bufferedBytes/l.bytesTotal;else if(i.lengthComputable&&i.total!=0)q=i.loaded/i.total;if(q!==null){q=Math.min(1,Math.max(0,q));g.width(e.width()*q)}}},j=function(i){i=i.pageX;var l=e.offset(),
q=e.outerWidth(),s=0;s=0;if(i>l.left&&i<=q+l.left&&d.duration){s=(i-l.left)/q;s=s<=0.02?0:s*d.duration;r&&d.setCurrentTime(s);n.css("left",i-l.left);p.html(mejs.Utility.secondsToTimeCode(s))}},r=false,o=false;e.bind("mousedown",function(i){r=true;j(i);return false});c.find(".mejs-time-rail").bind("mouseenter",function(){o=true}).bind("mouseleave",function(){o=false});f(document).bind("mouseup",function(){r=false}).bind("mousemove",function(i){if(r||o)j(i)});d.addEventListener("progress",function(i){m(i)},
false);d.addEventListener("timeupdate",function(i){m(i);if(d.currentTime&&d.duration){i=e.width()*d.currentTime/d.duration;var l=i-k.outerWidth(true)/2;h.width(i);k.css("left",l)}},false)}})(jQuery);
(function(f){MediaElementPlayer.prototype.buildcurrent=function(a,c,b,d){f('<div class="mejs-time"><span class="mejs-currenttime">00:00</span></div>').appendTo(c);d.addEventListener("timeupdate",function(){d.currentTime&&c.find(".mejs-currenttime").html(mejs.Utility.secondsToTimeCode(d.currentTime))},false)};MediaElementPlayer.prototype.buildduration=function(a,c,b,d){c.children().last().find(".mejs-currenttime").length>0?f(' <span> | </span> <span class="mejs-duration">00:00</span>').appendTo(c.find(".mejs-time")):
f('<div class="mejs-time"><span class="mejs-duration">00:00</span></div>').appendTo(c);d.addEventListener("timeupdate",function(){d.duration&&c.find(".mejs-duration").html(mejs.Utility.secondsToTimeCode(d.duration))},false)}})(jQuery);
(function(f){MediaElementPlayer.prototype.buildvolume=function(a,c,b,d){var e=f('<div class="mejs-button mejs-volume-button mejs-mute"><span></span><div class="mejs-volume-slider"><div class="mejs-volume-total"></div><div class="mejs-volume-current"></div><div class="mejs-volume-handle"></div></div></div>').appendTo(c);c=e.find(".mejs-volume-slider");var g=e.find(".mejs-volume-total"),h=e.find(".mejs-volume-current"),k=e.find(".mejs-volume-handle"),n=function(j){j=g.height()-g.height()*j;k.css("top",
j-k.height()/2);h.height(g.height()-j+parseInt(g.css("top").replace(/px/,""),10));h.css("top",j)},p=function(j){var r=g.height(),o=g.offset(),i=parseInt(g.css("top").replace(/px/,""),10);j=j.pageY-o.top;o=(r-j)/r;if(j<0)j=0;else if(j>r)j=r;k.css("top",j-k.height()/2+i);h.height(r-j);h.css("top",j+i);if(o==0){d.setMuted(true);e.removeClass("mejs-mute").addClass("mejs-unmute")}else{d.setMuted(false);e.removeClass("mejs-unmute").addClass("mejs-mute")}o=Math.max(0,o);o=Math.min(o,1);d.setVolume(o)},m=
false;c.bind("mousedown",function(j){p(j);m=true;return false});f(document).bind("mouseup",function(){m=false}).bind("mousemove",function(j){m&&p(j)});e.find("span").click(function(){if(d.muted){d.setMuted(false);e.removeClass("mejs-unmute").addClass("mejs-mute");n(1)}else{d.setMuted(true);e.removeClass("mejs-mute").addClass("mejs-unmute");n(0)}});d.addEventListener("volumechange",function(j){m||n(j.target.volume)},true);n(a.options.startVolume);d.setVolume(a.options.startVolume)}})(jQuery);
(function(f){MediaElementPlayer.prototype.buildfullscreen=function(a,c,b,d){if(a.isVideo){var e=false,g=0,h=0,k=a.container,n=f('<div class="mejs-button mejs-fullscreen-button"><span></span></div>').appendTo(c).click(function(){p(!e)}),p=function(m){switch(d.pluginType){case "flash":case "silverlight":d.setFullscreen(m);break;case "native":if(mejs.MediaFeatures.hasNativeFullScreen)m?d.webkitEnterFullScreen():d.webkitExitFullScreen();else{if(m){g=a.$media.height();h=a.$media.width();k.addClass("mejs-container-fullscreen").width("100%").height("100%").css("z-index",
1E3);a.$media.width("100%").height("100%");b.children("div").width("100%").height("100%");n.removeClass("mejs-fullscreen").addClass("mejs-unfullscreen")}else{k.removeClass("mejs-container-fullscreen").width(h).height(g).css("z-index",1);a.$media.width(h).height(g);b.children("div").width(h).height(g);n.removeClass("mejs-unfullscreen").addClass("mejs-fullscreen")}a.setControlsSize()}}e=m};f(document).bind("keydown",function(m){e&&m.keyCode==27&&p(false)})}}})(jQuery);
(function(f){f.extend(mejs.MepDefaults,{startLanguage:"",translations:[],translationSelector:false,googleApiKey:""});f.extend(MediaElementPlayer.prototype,{buildtracks:function(a,c,b,d){if(a.isVideo)if(a.tracks.length!=0){var e,g="";a.chapters=f('<div class="mejs-chapters mejs-layer"></div>').prependTo(b).hide();a.captions=f('<div class="mejs-captions-layer mejs-layer"><div class="mejs-captions-position"><span class="mejs-captions-text"></span></div></div>').prependTo(b).hide();a.captionsText=a.captions.find(".mejs-captions-text");
a.captionsButton=f('<div class="mejs-button mejs-captions-button"><span></span><div class="mejs-captions-selector"><ul><li><input type="radio" name="'+a.id+'_captions" id="'+a.id+'_captions_none" value="none" checked="checked" /><label for="'+a.id+'_captions_none">None</label></li></ul></div></div>').appendTo(c).delegate("input[type=radio]","click",function(){lang=this.value;if(lang=="none")a.selectedTrack=null;else for(e=0;e<a.tracks.length;e++)if(a.tracks[e].srclang==lang){a.selectedTrack=a.tracks[e];
a.captions.attr("lang",a.selectedTrack.srclang);a.displayCaptions();break}});a.container.bind("mouseenter",function(){a.container.find(".mejs-captions-position").addClass("mejs-captions-position-hover")}).bind("mouseleave",function(){d.paused||a.container.find(".mejs-captions-position").removeClass("mejs-captions-position-hover")});a.trackToLoad=-1;a.selectedTrack=null;a.isLoadingTrack=false;if(a.tracks.length>0&&a.options.translations.length>0)for(e=0;e<a.options.translations.length;e++)a.tracks.push({srclang:a.options.translations[e].toLowerCase(),
src:null,kind:"subtitles",entries:[],isLoaded:false,isTranslation:true});for(e=0;e<a.tracks.length;e++)a.tracks[e].kind=="subtitles"&&a.addTrackButton(a.tracks[e].srclang,a.tracks[e].isTranslation);a.loadNextTrack();d.addEventListener("timeupdate",function(){a.displayCaptions()},false);d.addEventListener("loadedmetadata",function(){a.displayChapters()},false);a.container.hover(function(){a.chapters.css("visibility","visible");a.chapters.fadeIn(200)},function(){d.paused||a.chapters.fadeOut(200,function(){f(this).css("visibility",
"hidden");f(this).css("display","block")})});if(a.options.translationSelector){for(e in mejs.language.codes)g+='<option value="'+e+'">'+mejs.language.codes[e]+"</option>";a.container.find(".mejs-captions-selector ul").before(f('<select class="mejs-captions-translations"><option value="">--Add Translation--</option>'+g+"</select>"));a.container.find(".mejs-captions-translations").change(function(){lang=f(this).val();if(lang!=""){a.tracks.push({srclang:lang,src:null,entries:[],isLoaded:false,isTranslation:true});
if(!a.isLoadingTrack){a.trackToLoad--;a.addTrackButton(lang,true);a.options.startLanguage=lang;a.loadNextTrack()}}})}}},loadNextTrack:function(){this.trackToLoad++;if(this.trackToLoad<this.tracks.length){this.isLoadingTrack=true;this.loadTrack(this.trackToLoad)}else this.isLoadingTrack=false},loadTrack:function(a){var c=this,b=c.tracks[a],d=function(){b.isLoaded=true;c.enableTrackButton(b.srclang);c.loadNextTrack()};b.isTranslation?mejs.SrtParser.translateSrt(c.tracks[0].entries,c.tracks[0].srclang,
b.srclang,c.options.googleApiKey,function(e){b.entries=e;d()}):f.ajax({url:b.src,success:function(e){b.entries=mejs.SrtParser.parse(e);d();b.kind=="chapters"&&c.media.duration>0&&c.drawChapters(b)},error:function(){c.loadNextTrack()}})},enableTrackButton:function(a){this.captionsButton.find("input[value="+a+"]").attr("disabled","").siblings("label").html(mejs.language.codes[a]||a);this.options.startLanguage==a&&f("#"+this.id+"_captions_"+a).click();this.adjustLanguageBox()},addTrackButton:function(a,
c){var b=mejs.language.codes[a]||a;this.captionsButton.find("ul").append(f('<li><input type="radio" name="'+this.id+'_captions" id="'+this.id+"_captions_"+a+'" value="'+a+'" disabled="disabled" /><label for="'+this.id+"_captions_"+a+'">'+b+(c?" (translating)":" (loading)")+"</label></li>"));this.adjustLanguageBox();this.container.find(".mejs-captions-translations option[value="+a+"]").remove()},adjustLanguageBox:function(){this.captionsButton.find(".mejs-captions-selector").height(this.captionsButton.find(".mejs-captions-selector ul").outerHeight(true)+
this.captionsButton.find(".mejs-captions-translations").outerHeight(true))},displayCaptions:function(){if(typeof this.tracks!="undefined"){var a,c=this.selectedTrack;if(c!=null&&c.isLoaded)for(a=0;a<c.entries.times.length;a++)if(this.media.currentTime>=c.entries.times[a].start&&this.media.currentTime<=c.entries.times[a].stop){this.captionsText.html(c.entries.text[a]);this.captions.show();return}this.captions.hide()}},displayChapters:function(){var a;for(a=0;a<this.tracks.length;a++)if(this.tracks[a].kind==
"chapters"&&this.tracks[a].isLoaded){this.drawChapters(this.tracks[a]);break}},drawChapters:function(a){var c=this,b,d,e=d=0;c.chapters.empty();for(b=0;b<a.entries.times.length;b++){d=a.entries.times[b].stop-a.entries.times[b].start;d=Math.floor(d/c.media.duration*100);if(d+e>100||b==a.entries.times.length-1&&d+e<100)d=100-e;c.chapters.append(f('<div class="mejs-chapter" rel="'+a.entries.times[b].start+'" style="left: '+e.toString()+"%;width: "+d.toString()+'%;"><div class="mejs-chapter-block'+(b==
a.entries.times.length-1?" mejs-chapter-block-last":"")+'"><span class="ch-title">'+a.entries.text[b]+'</span><span class="ch-time">'+mejs.Utility.secondsToTimeCode(a.entries.times[b].start)+"&ndash;"+mejs.Utility.secondsToTimeCode(a.entries.times[b].stop)+"</span></div></div>"));e+=d}c.chapters.find("div.mejs-chapter").click(function(){c.media.setCurrentTime(parseFloat(f(this).attr("rel")));c.media.paused&&c.media.play()});c.chapters.show()}});mejs.language={codes:{af:"Afrikaans",sq:"Albanian",ar:"Arabic",
be:"Belarusian",bg:"Bulgarian",ca:"Catalan",zh:"Chinese","zh-cn":"Chinese Simplified","zh-tw":"Chinese Traditional",hr:"Croatian",cs:"Czech",da:"Danish",nl:"Dutch",en:"English",et:"Estonian",tl:"Filipino",fi:"Finnish",fr:"French",gl:"Galician",de:"German",el:"Greek",ht:"Haitian Creole",iw:"Hebrew",hi:"Hindi",hu:"Hungarian",is:"Icelandic",id:"Indonesian",ga:"Irish",it:"Italian",ja:"Japanese",ko:"Korean",lv:"Latvian",lt:"Lithuanian",mk:"Macedonian",ms:"Malay",mt:"Maltese",no:"Norwegian",fa:"Persian",
pl:"Polish",pt:"Portuguese",ro:"Romanian",ru:"Russian",sr:"Serbian",sk:"Slovak",sl:"Slovenian",es:"Spanish",sw:"Swahili",sv:"Swedish",tl:"Tagalog",th:"Thai",tr:"Turkish",uk:"Ukrainian",vi:"Vietnamese",cy:"Welsh",yi:"Yiddish"}};mejs.SrtParser={pattern_identifier:/^[0-9]+$/,pattern_timecode:/^([0-9]{2}:[0-9]{2}:[0-9]{2}(,[0-9]{1,3})?) --\> ([0-9]{2}:[0-9]{2}:[0-9]{2}(,[0-9]{3})?)(.*)$/,timecodeToSeconds:function(a){a=a.split(":");return a[0]*60*60+a[1]*60+parseFloat(a[2].replace(",","."))},split2:function(a,
c){return a.split(c)},parse:function(a){var c=0;a=this.split2(a,/\r?\n/);for(var b={text:[],times:[]},d,e;c<a.length;c++)if(this.pattern_identifier.exec(a[c])){c++;if((d=this.pattern_timecode.exec(a[c]))&&c<a.length){c++;e=a[c];for(c++;a[c]!==""&&c<a.length;){e=e+"\n"+a[c];c++}b.text.push(e);b.times.push({start:this.timecodeToSeconds(d[1]),stop:this.timecodeToSeconds(d[3]),settings:d[5]})}}return b},translateSrt:function(a,c,b,d,e){var g={text:[],times:[]},h,k;this.translateText(a.text.join(" <a></a>"),
c,b,d,function(n){h=n.split("<a></a>");for(k=0;k<a.text.length;k++){g.text[k]=h[k];g.times[k]={start:a.times[k].start,stop:a.times[k].stop,settings:a.times[k].settings}}e(g)})},translateText:function(a,c,b,d,e){for(var g,h=[],k,n="",p=function(){if(h.length>0){k=h.shift();mejs.SrtParser.translateChunk(k,c,b,d,function(m){if(m!="undefined")n+=m;p()})}else e(n)};a.length>0;)if(a.length>1E3){g=a.lastIndexOf(".",1E3);h.push(a.substring(0,g));a=a.substring(g+1)}else{h.push(a);a=""}p()},translateChunk:function(a,
c,b,d,e){a={q:a,langpair:c+"|"+b,v:"1.0"};if(d!==""&&d!==null)a.key=d;f.ajax({url:"https://ajax.googleapis.com/ajax/services/language/translate",data:a,type:"GET",dataType:"jsonp",success:function(g){e(g.responseData.translatedText)},error:function(){e(null)}})}};if("x\n\ny".split(/\n/gi).length!=3)mejs.SrtParser.split2=function(a,c){var b=[],d="",e;for(e=0;e<a.length;e++){d+=a.substring(e,e+1);if(c.test(d)){b.push(d.replace(c,""));d=""}}b.push(d);return b}})(jQuery);




/*
 * Accessifyhtml5.js
 * Adds ARIA to new elements in browsers which don't do it by themselves.
 * Just drop into the bottom of your web page:
 * <script src="accessifyhtml5.js"></script>
 * 
 * Yes, it depends on jQuery.
 *
 * Souce: https://www.html5accessibility.com/index-aria.html
 *
 * Todo: Extend Script for other elements, probably even play with fallback JS for inaccessible audio/video.
 *
 * Acknowledgements: 
 * - @stevefaulkner for his work exploring html5 a11y,
 * - @paddya91 for object notation & document ready
 * - @ginader for reporting typo
 * - @webaxe for reporting an error
 */

$(document).ready(function() {
    
    var fixes = {
        'header.site'   : { 'role':          'banner'        },
        'footer.site'   : { 'role':          'contentinfo'   },
        'article'       : { 'role':          'article'       },
        'aside'         : { 'role':          'complementary' },
        'nav'           : { 'role':          'navigation'    },
        'output'        : { 'aria-live':     'polite'        },
        'section'       : { 'role':          'region'        },
        '[required]'    : { 'aria-required': 'true'          }
    };

    $.each(fixes,
        function(index, item) {
            $(index).attr(item);
        }
    );
    
});