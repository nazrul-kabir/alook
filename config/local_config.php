<?php

$host = $_SERVER['HTTP_HOST'];
$domain = str_replace('www.', '', str_replace('http://', '', $host));
if ($domain == 'arkhairul.com') {
    $config['SITE_NAME'] = 'ALOOK';
    $config['ADMIN_SITE_NAME'] = 'ALOOK | ADMIN PANEL';
    $config['BASE_URL'] = 'http://arkhairul.com/alook/';
    $config['ROOT_DIR'] = '/home/arkhairul/public_html/alook/';
    $config['DB_TYPE'] = 'mysql';
    $config['DB_HOST'] = 'localhost';
    $config['DB_NAME'] = 'arkhairu_alook';
    $config['DB_USER'] = 'arkhairu_aladmin';
    $config['DB_PASSWORD'] = 'z7!{JaS=T]*S';
} elseif ($domain == 'arshiapps.com') {
    $config['SITE_NAME'] = 'ALOOK';
    $config['ADMIN_SITE_NAME'] = 'ALOOK | ADMIN PANEL';
    $config['BASE_URL'] = 'http://arshiapps.com/demo/';
    $config['ROOT_DIR'] = '/home/arshiapps/public_html/demo/';
    $config['DB_TYPE'] = 'mysql';
    $config['DB_HOST'] = 'localhost';
    $config['DB_NAME'] = 'arshiapp_demodb';
    $config['DB_USER'] = 'arshiapp_demo';
    $config['DB_PASSWORD'] = 'z7!{JaS=T]*S';
} else {
    $config['SITE_NAME'] = 'ALOOK';
    $config['ADMIN_SITE_NAME'] = 'ALOOK | ADMIN PANEL';
    $config['BASE_URL'] = 'http://localhost/demo_final/';
    $config['ROOT_DIR'] = '/demo_final/';
    $config['DB_TYPE'] = 'mysql';
    $config['DB_HOST'] = 'localhost';
    $config['DB_NAME'] = 'demo';
    $config['DB_USER'] = 'root';
    $config['DB_PASSWORD'] = '';
}
date_default_timezone_set('Asia/Dhaka');
$config['MASTER_ADMIN_EMAIL'] = "khairul@eyhost.biz";
$config['PASSWORD_KEY'] = "#alook#";
$config['ADMIN_PASSWORD_LENGTH_MAX'] = 15;
$config['ADMIN_PASSWORD_LENGTH_MIN'] = 5;
$config['ADMIN_COOKIE_EXPIRE_DURATION'] = (60 * 60 * 24 * 30);
$config['IMAGE_UPLOAD_PATH'] = $config['BASE_DIR'] . '/upload';
$config['IMAGE_UPLOAD_URL'] = $config['BASE_URL'] . 'upload';
?>