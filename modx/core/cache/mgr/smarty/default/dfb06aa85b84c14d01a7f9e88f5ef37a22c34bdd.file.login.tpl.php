<?php /* Smarty version Smarty-3.0.4, created on 2011-07-06 12:15:14
         compiled from "/nfs/c09/h01/mnt/128501/domains/maakee.me/html/modx/manager/templates/default/security/login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2766585004e14b44245c077-80008944%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'dfb06aa85b84c14d01a7f9e88f5ef37a22c34bdd' => 
    array (
      0 => '/nfs/c09/h01/mnt/128501/domains/maakee.me/html/modx/manager/templates/default/security/login.tpl',
      1 => 1309888696,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2766585004e14b44245c077-80008944',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" <?php if ((isset($_smarty_tpl->getVariable('_config')->value['manager_direction']) ? $_smarty_tpl->getVariable('_config')->value['manager_direction'] : null)=='rtl'){?>dir="rtl"<?php }?> lang="<?php echo (isset($_smarty_tpl->getVariable('_config')->value['manager_lang_attribute']) ? $_smarty_tpl->getVariable('_config')->value['manager_lang_attribute'] : null);?>
" xml:lang="<?php echo (isset($_smarty_tpl->getVariable('_config')->value['manager_lang_attribute']) ? $_smarty_tpl->getVariable('_config')->value['manager_lang_attribute'] : null);?>
">
<head>
	<title><?php echo (isset($_smarty_tpl->getVariable('_lang')->value['login_title']) ? $_smarty_tpl->getVariable('_lang')->value['login_title'] : null);?>
</title>
	<meta http-equiv="Content-Type" content="text/html; charset=<?php echo (isset($_smarty_tpl->getVariable('_config')->value['modx_charset']) ? $_smarty_tpl->getVariable('_config')->value['modx_charset'] : null);?>
" />
    <?php if ((isset($_smarty_tpl->getVariable('_config')->value['manager_favicon_url']) ? $_smarty_tpl->getVariable('_config')->value['manager_favicon_url'] : null)){?><link rel="shortcut icon" type="image/x-icon" href="<?php echo (isset($_smarty_tpl->getVariable('_config')->value['manager_favicon_url']) ? $_smarty_tpl->getVariable('_config')->value['manager_favicon_url'] : null);?>
" /><?php }?>
    
    <link rel="stylesheet" type="text/css" href="<?php echo (isset($_smarty_tpl->getVariable('_config')->value['manager_url']) ? $_smarty_tpl->getVariable('_config')->value['manager_url'] : null);?>
assets/ext3/resources/css/ext-all-notheme-min.css" />
	<?php if ((isset($_smarty_tpl->getVariable('_config')->value['compress_css']) ? $_smarty_tpl->getVariable('_config')->value['compress_css'] : null)){?>
	<link rel="stylesheet" type="text/css" href="<?php echo (isset($_smarty_tpl->getVariable('_config')->value['manager_url']) ? $_smarty_tpl->getVariable('_config')->value['manager_url'] : null);?>
templates/<?php echo (isset($_smarty_tpl->getVariable('_config')->value['manager_theme']) ? $_smarty_tpl->getVariable('_config')->value['manager_theme'] : null);?>
/css/modx-min.css" />
	<?php }else{ ?>
	<link rel="stylesheet" type="text/css" href="<?php echo (isset($_smarty_tpl->getVariable('_config')->value['manager_url']) ? $_smarty_tpl->getVariable('_config')->value['manager_url'] : null);?>
templates/<?php echo (isset($_smarty_tpl->getVariable('_config')->value['manager_theme']) ? $_smarty_tpl->getVariable('_config')->value['manager_theme'] : null);?>
/css/xtheme-modx.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo (isset($_smarty_tpl->getVariable('_config')->value['manager_url']) ? $_smarty_tpl->getVariable('_config')->value['manager_url'] : null);?>
templates/<?php echo (isset($_smarty_tpl->getVariable('_config')->value['manager_theme']) ? $_smarty_tpl->getVariable('_config')->value['manager_theme'] : null);?>
/css/index.css" />
	<?php }?>
    <link rel="stylesheet" type="text/css" href="templates/<?php echo (isset($_smarty_tpl->getVariable('_config')->value['manager_theme']) ? $_smarty_tpl->getVariable('_config')->value['manager_theme'] : null);?>
/css/login<?php if ((isset($_smarty_tpl->getVariable('_config')->value['compress_css']) ? $_smarty_tpl->getVariable('_config')->value['compress_css'] : null)){?>-min<?php }?>.css" />
    
    <script src="assets/ext3/adapter/ext/ext-base.js" type="text/javascript"></script>
    <script src="assets/ext3/ext-all.js" type="text/javascript"></script>
    <script src="assets/modext/<?php if ((isset($_smarty_tpl->getVariable('_config')->value['compress_js']) ? $_smarty_tpl->getVariable('_config')->value['compress_js'] : null)){?>build/core/modx-min<?php }else{ ?>core/modx<?php }?>.js" type="text/javascript"></script>
	<script src="<?php echo (isset($_smarty_tpl->getVariable('_config')->value['connectors_url']) ? $_smarty_tpl->getVariable('_config')->value['connectors_url'] : null);?>
lang.js.php?topic=login" type="text/javascript"></script>

	<?php if ((isset($_smarty_tpl->getVariable('_config')->value['compress_js']) ? $_smarty_tpl->getVariable('_config')->value['compress_js'] : null)){?>
    <script src="assets/modext/build/core/modx.component-min.js" type="text/javascript"></script>
    <script src="assets/modext/build/util/utilities-min.js" type="text/javascript"></script>
    <script src="assets/modext/build/widgets/core/modx.panel-min.js" type="text/javascript"></script>
    <script src="assets/modext/build/widgets/core/modx.window-min.js" type="text/javascript"></script>
    <script src="assets/modext/build/sections/login-min.js" type="text/javascript"></script>
	<?php }else{ ?>
    <script src="assets/modext/core/modx.component.js" type="text/javascript"></script>
    <script src="assets/modext/util/utilities.js" type="text/javascript"></script>
	<script src="assets/modext/widgets/core/modx.panel.js" type="text/javascript"></script>
    <script src="assets/modext/widgets/core/modx.window.js" type="text/javascript"></script>
    <script src="assets/modext/sections/login.js" type="text/javascript"></script>
    <?php }?>
    
    <meta name="robots" content="noindex, nofollow" />
</head>
<body id="login">
<?php echo $_smarty_tpl->getVariable('onManagerLoginFormPrerender')->value;?>

<br />
<div id="modx-panel-login-div" class="x-panel modx-form x-form-label-right" style="border: 1px solid #e0e0e0;">
 
 <div class="x-panel-tl">
  <div class="x-panel-tr">
   <div class="x-panel-tc">
    <div class="x-panel-header x-unselectable">
     <span class="x-panel-header-text"><?php echo (isset($_smarty_tpl->getVariable('_lang')->value['login_button']) ? $_smarty_tpl->getVariable('_lang')->value['login_button'] : null);?>
</span>
    </div>
   </div>
  </div>
 </div>
 <div class="x-panel-bwrap">
  <div class="x-panel-ml">
   <div class="x-panel-mr">
    <div class="x-panel-mc">
    
<form id="modx-login-form" action="" method="post">
    <input type="hidden" name="login_context" value="mgr" />
    <input type="hidden" name="modahsh" value="<?php echo $_smarty_tpl->getVariable('modahsh')->value;?>
" />
    <input type="hidden" name="returnUrl" value="<?php echo $_smarty_tpl->getVariable('returnUrl')->value;?>
" />
    	    
    <div class="x-panel x-panel-noborder"><div class="x-panel-bwrap"><div class="x-panel-body x-panel-body-noheader">
    <h2><?php echo (isset($_smarty_tpl->getVariable('_config')->value['site_name']) ? $_smarty_tpl->getVariable('_config')->value['site_name'] : null);?>
</h2>
    <p><?php echo (isset($_smarty_tpl->getVariable('_lang')->value['login_message']) ? $_smarty_tpl->getVariable('_lang')->value['login_message'] : null);?>
</p>
    
    <?php if ($_smarty_tpl->getVariable('error_message')->value){?><p class="error"><?php echo $_smarty_tpl->getVariable('error_message')->value;?>
</p><?php }?>
    </div></div></div>
    
    <div class="x-form-item">
      <label for="modx-login-username" class="x-form-item-label"><?php echo (isset($_smarty_tpl->getVariable('_lang')->value['login_username']) ? $_smarty_tpl->getVariable('_lang')->value['login_username'] : null);?>
</label>
      <div class="x-form-element">
        <input type="text" id="modx-login-username" name="username" tabindex="1" autocomplete="on" value="<?php echo (isset($_smarty_tpl->getVariable('_post')->value['username']) ? $_smarty_tpl->getVariable('_post')->value['username'] : null);?>
" class="x-form-text x-form-field" />
      </div>
      <div class="x-form-clear-left"></div>
    </div>
    
    <div class="x-form-item">
      <label for="modx-login-password" class="x-form-item-label"><?php echo (isset($_smarty_tpl->getVariable('_lang')->value['login_password']) ? $_smarty_tpl->getVariable('_lang')->value['login_password'] : null);?>
</label>
      <div class="x-form-element">
        <input type="password" id="modx-login-password" name="password" tabindex="2" autocomplete="on" class="x-form-text x-form-field" />
      </div>
      <div class="x-form-clear-left"></div>
    </div>
    
    <div class="x-form-item">
      <div class="x-form-element">
          <div class="x-form-check-wrap">
              <input type="checkbox" id="modx-login-rememberme" name="rememberme" tabindex="3" autocomplete="on" <?php if ((isset($_smarty_tpl->getVariable('_post')->value['rememberme']) ? $_smarty_tpl->getVariable('_post')->value['rememberme'] : null)){?>checked="checked"<?php }?> class="x-form-checkbox x-form-field" value="1" />
              <label for="modx-login-rememberme" class="x-form-cb-label"><?php echo (isset($_smarty_tpl->getVariable('_lang')->value['login_remember']) ? $_smarty_tpl->getVariable('_lang')->value['login_remember'] : null);?>
</label>
          </div>
      </div>
      <div class="x-form-clear-left"></div>
    </div>
            
    <?php echo $_smarty_tpl->getVariable('onManagerLoginFormRender')->value;?>

    
    <br class="clear" />

   <table cellspacing="0" class="x-btn x-btn-noicon" style="float: right; width: 71px;" id="modx-login-btn-ct">
   <tbody class="x-btn-small x-btn-icon-small-left">
    <tr>
        <td class="x-btn-tl"><em></em></td>
        <td class="x-btn-tc"></td>
        <td class="x-btn-tr"><em></em></td>
    </tr>
    <tr>
        <td class="x-btn-ml"><em></em></td>
        <td class="x-btn-mc"><em>
            <button class="x-btn-text" name="login" type="submit" value="1" id="modx-login-btn" tabindex="4"><?php echo (isset($_smarty_tpl->getVariable('_lang')->value['login_button']) ? $_smarty_tpl->getVariable('_lang')->value['login_button'] : null);?>
</button>
        </em></td>
        <td class="x-btn-mr"><em></em></td>
    </tr>
    <tr>
        <td class="x-btn-bl"><em></em></td>
        <td class="x-btn-bc"></td>
        <td class="x-btn-br"><em></em></td>
    </tr>
   </tbody>
   </table>
</form>

    <div class="modx-forgot-login">
    <form id="modx-fl-form" action="" method="post">
       <a href="javascript:void(0);" id="modx-fl-link" style="<?php if ((isset($_smarty_tpl->getVariable('_post')->value['email']) ? $_smarty_tpl->getVariable('_post')->value['email'] : null)){?>display:none;<?php }?>"><?php echo (isset($_smarty_tpl->getVariable('_lang')->value['login_forget_your_login']) ? $_smarty_tpl->getVariable('_lang')->value['login_forget_your_login'] : null);?>
</a>
       <div id="modx-forgot-login-form" style="<?php if (!(isset($_smarty_tpl->getVariable('_post')->value['email']) ? $_smarty_tpl->getVariable('_post')->value['email'] : null)){?>display: none;<?php }?>">
                      
           <div class="x-form-item">
              <label for="modx-login-email" class="x-form-item-label"><?php echo (isset($_smarty_tpl->getVariable('_lang')->value['login_email_label']) ? $_smarty_tpl->getVariable('_lang')->value['login_email_label'] : null);?>
</label>
              <div class="x-form-element">
                <input type="text" id="modx-login-email" name="email" class="x-form-text x-form-field" value="<?php echo (isset($_smarty_tpl->getVariable('_post')->value['email']) ? $_smarty_tpl->getVariable('_post')->value['email'] : null);?>
" />
              </div>
              <div class="x-form-clear-left"></div>
           </div>
           
           
            <table cellspacing="0" class="x-btn x-btn-noicon" style="float: right; width: 71px;" id="modx-fl-btn-ct">
               <tbody class="x-btn-small x-btn-icon-small-left">
                <tr>
                    <td class="x-btn-tl"><em></em></td>
                    <td class="x-btn-tc"></td>
                    <td class="x-btn-tr"><em></em></td>
                </tr>
                <tr>
                    <td class="x-btn-ml"><em></em></td>
                    <td class="x-btn-mc"><em>
                        <button class="x-btn-text" name="forgotlogin" type="submit" value="1" id="modx-fl-btn"><?php echo (isset($_smarty_tpl->getVariable('_lang')->value['login_send_activation_email']) ? $_smarty_tpl->getVariable('_lang')->value['login_send_activation_email'] : null);?>
</button>
                    </em></td>
                    <td class="x-btn-mr"><em></em></td>
                </tr>
                <tr>
                    <td class="x-btn-bl"><em></em></td>
                    <td class="x-btn-bc"></td>
                    <td class="x-btn-br"><em></em></td>
                </tr>
               </tbody>
           </table>
           
           <br class="clear" />
           <br class="clear" />
           
       </div>
    </form>
    </div>
    
    <br class="clear" />

    </div>
   </div>
  </div>      
 </div>
</div>

<p class="loginLicense">
<?php echo (isset($_smarty_tpl->getVariable('_lang')->value['login_copyright']) ? $_smarty_tpl->getVariable('_lang')->value['login_copyright'] : null);?>

</p>

</body>
</html>
