<?php
/**
 *  MODX Configuration file
 */
$database_type = 'mysql';
$database_server = 'internal-db.s128501.gridserver.com';
$database_user = 'db128501_maakee';
$database_password = 'maakee_db_87';
$database_connection_charset = 'utf8';
$dbase = 'db128501_modx_maakee';
$table_prefix = 'modx_';
$database_dsn = 'mysql:host=internal-db.s128501.gridserver.com;dbname=db128501_modx_maakee;charset=utf8';
$config_options = array (
);

$lastInstallTime = 1309890905;

$site_id = 'modx4e135959d53170.36709481';
$site_sessionname = 'SN4e1358ae8b9f4';
$https_port = '443';
$uuid = '621c48ef-2c81-4023-b8d4-005ee57f6593';

if (!defined('MODX_CORE_PATH')) {
    $modx_core_path= '/nfs/c09/h01/mnt/128501/domains/maakee.me/html/modx/core/';
    define('MODX_CORE_PATH', $modx_core_path);
}
if (!defined('MODX_PROCESSORS_PATH')) {
    $modx_processors_path= '/nfs/c09/h01/mnt/128501/domains/maakee.me/html/modx/core/model/processors/';
    define('MODX_PROCESSORS_PATH', $modx_processors_path);
}
if (!defined('MODX_CONNECTORS_PATH')) {
    $modx_connectors_path= '/nfs/c09/h01/mnt/128501/domains/maakee.me/html/modx/connectors/';
    $modx_connectors_url= '/modx/connectors/';
    define('MODX_CONNECTORS_PATH', $modx_connectors_path);
    define('MODX_CONNECTORS_URL', $modx_connectors_url);
}
if (!defined('MODX_MANAGER_PATH')) {
    $modx_manager_path= '/nfs/c09/h01/mnt/128501/domains/maakee.me/html/modx/manager/';
    $modx_manager_url= '/modx/manager/';
    define('MODX_MANAGER_PATH', $modx_manager_path);
    define('MODX_MANAGER_URL', $modx_manager_url);
}
if (!defined('MODX_BASE_PATH')) {
    $modx_base_path= '/nfs/c09/h01/mnt/128501/domains/maakee.me/html/modx/';
    $modx_base_url= '/modx/';
    define('MODX_BASE_PATH', $modx_base_path);
    define('MODX_BASE_URL', $modx_base_url);
}
if(defined('PHP_SAPI') && (PHP_SAPI == "cli" || PHP_SAPI == "embed")) {
    $isSecureRequest = false;
} else {
    $isSecureRequest = ((isset ($_SERVER['HTTPS']) && strtolower($_SERVER['HTTPS']) == 'on') || $_SERVER['SERVER_PORT'] == $https_port);
}
if (!defined('MODX_URL_SCHEME')) {
    $url_scheme=  $isSecureRequest ? 'https://' : 'http://';
    define('MODX_URL_SCHEME', $url_scheme);
}
if (!defined('MODX_HTTP_HOST')) {
    if(defined('PHP_SAPI') && (PHP_SAPI == "cli" || PHP_SAPI == "embed")) {
        $http_host='www.maakee.me';
        define('MODX_HTTP_HOST', $http_host);
    } else {
        $http_host= $_SERVER['HTTP_HOST'];
        if ($_SERVER['SERVER_PORT'] != 80) {
            $http_host= str_replace(':' . $_SERVER['SERVER_PORT'], '', $http_host); // remove port from HTTP_HOST
        }
        $http_host .= ($_SERVER['SERVER_PORT'] == 80 || $isSecureRequest) ? '' : ':' . $_SERVER['SERVER_PORT'];
        define('MODX_HTTP_HOST', $http_host);
    }
}
if (!defined('MODX_SITE_URL')) {
    $site_url= $url_scheme . $http_host . MODX_BASE_URL;
    define('MODX_SITE_URL', $site_url);
}
if (!defined('MODX_ASSETS_PATH')) {
    $modx_assets_path= '/nfs/c09/h01/mnt/128501/domains/maakee.me/html/modx/assets/';
    $modx_assets_url= '/modx/assets/';
    define('MODX_ASSETS_PATH', $modx_assets_path);
    define('MODX_ASSETS_URL', $modx_assets_url);
}
if (!defined('MODX_LOG_LEVEL_FATAL')) {
    define('MODX_LOG_LEVEL_FATAL', 0);
    define('MODX_LOG_LEVEL_ERROR', 1);
    define('MODX_LOG_LEVEL_WARN', 2);
    define('MODX_LOG_LEVEL_INFO', 3);
    define('MODX_LOG_LEVEL_DEBUG', 4);
}
if (!defined('MODX_CACHE_DISABLED')) {
    $modx_cache_disabled= true;
    define('MODX_CACHE_DISABLED', $modx_cache_disabled);
}
