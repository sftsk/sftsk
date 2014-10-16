// load all inline scripts here

// Code for Google Analytics | Change UA-XXXXX-X to be your site's ID
var _gaq=[['_setAccount','UA-3905566-9'],['_trackPageview'],['_trackPageLoadTime']];
	(function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.async=1;
	g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
	s.parentNode.insertBefore(g,s)}(document,'script'));

$(document).ready(function() {		
	var cur_project = null;
	var click_obj = null;
	// Bind a callback that executes when document.location.hash changes.
	$(window).bind( "hashchange", function(e) {		
		var url = e.getState( "project" );
		if (url)
		{
			$('#content').load("http://"+document.domain+"/"+url+ ".html #single_project", projectPreloader);				  
		} 
	}); 
	
	// Since the event is only triggered when the hash changes, we need
	// to trigger the event now, to handle the hash the page may have
	// loaded with.
	$(window).trigger("hashchange");
	
	// $(".tweet").tweet({
	//         avatar_size: 16,
	//         count: 1,
	//         query: "saftsaak",
	//         loading_text: "Fetching latest Tweet..."
	//       });
	
	projectLoaded();	
});
		
function projectPreloader() {
	$('html, body').animate({scrollTop:134}, 'fast');
	projectLoaded();
}		

function projectLoaded() {		
	//get id of current project
	var hash = location.hash.split('=')[1];
	$('a.project').each(function(){
		var that = $(this);
		var t_href = that.attr("href").split('.');
		//style current project
		that[ t_href[0] === hash ? 'addClass' : 'removeClass' ]( 'cur_project' );		
		t_href = "#project="+t_href[0];
		that.attr("href",t_href); 		
	});	
	$('a.project').click(function(){	
		var href = $(this).attr("href").split('=')[1];	
	    // Push this URL "state" onto the history hash.
	    $.bbq.pushState({ project: href });	    
	    if (!$(this).hasClass('cur_project'))
	    {
		    $('.link_btn',this).hide();
		    $('.load_btn',this).show();
		}
		return false;
	});
	
	if((navigator.userAgent.match(/iPad/i) == null) && (navigator.userAgent.match(/iPhone/i) == null) && (navigator.userAgent.match(/iPod/i) == null))
	{
		$('.project')
			.mouseover(function(){
				$('.thumbnail',this).stop().animate({
					backgroundPosition: '0px 100%'
					},200);
					$('.details',this).css('color','#DB218C');  
					if ($('.load_btn:visible',this).length == 0)
					{
						$('.link_btn',this).show();				
					}
				})
			.mouseout(function(){
				$('.thumbnail',this).stop().animate({
					backgroundPosition: '0px 0%'
					},200);
					$('.details',this).css('color','#000');       
					$('.link_btn',this).hide();	
				});
	}
	//proper player for audio/video tag +flash fallback	
	$('video,audio').mediaelementplayer({flashName: '/assets/_js/flashmediaelement.swf'});
	//set up slideshows
	$(".proSlider").slideViewerPro({
	        thumbs: 20,
	        thumbsTopMargin: 4,
	        thumbsBorderWidth: 2, 
	        autoslide: false, 
	        asTimer: 3500,
	        easeTime: 500, 
	        typo: false,
	        galBorderWidth: 0,
	        thumbsPercentReduction: 4,
	        thumbsBorderOpacity: 0, 
	        buttonsTextColor: "#707070",
	        buttonsWidth: 40,
	        thumbsActiveBorderOpacity: 1,
	        thumbsActiveBorderColor: "#DB218C",
	        shuffle: false
	    });
	
	$.each($('.thumbSlider a'), function() { 
		if($('.tmbrdr',this).css('opacity') == 1){
			$(this).addClass('active');
			click_obj = $(this).parent();
		}
		$(this).html('');
	});
	//advance slide on image click
	$('.proSlider img').click( function() {  			
			if (click_obj.next().find('a').length > 0){
				click_obj.find('a').removeClass('active');
				click_obj.next().find('a').addClass('active');   		
				click_obj.next().find('a').trigger("click");
				click_obj = click_obj.next();
			} else {
				click_obj.find('a').removeClass('active');
				$('.thumbSlider a:first').addClass('active');
				$('.thumbSlider a:first').trigger("click");
				click_obj = $('.thumbSlider a:first').parent();
			}
	});  
	$('.load_btn:visible').fadeOut(500);
	$('.thumbSlider a').click( function() { 
			if(!$(this).hasClass('active')){
				$(this).addClass('active');
				click_obj.find('a').removeClass('active');
				click_obj = $(this).parent();
			}
		});    
}