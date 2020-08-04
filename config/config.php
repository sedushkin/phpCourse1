<?php
/* define constants*/
define('SITE_ROOT', "../");
define('WWW_ROOT', SITE_ROOT . 'public');
define('DATA_DIR', SITE_ROOT . 'data');
define('LIB_DIR', SITE_ROOT . 'engine');
define('TPL_DIR', SITE_ROOT . 'templates');
define('GALLERY_DIR', WWW_ROOT . '/img');
define('UPLOAD_DIR', WWW_ROOT . '/uploads');
define('SITE_TITLE', 'Урок 5');

/* DB config */
define('HOST', '127.0.0.1');
define('USER', 'root');
define('PASS', 'root');
define('DB', 'phpcourse1');

/* required files*/
require_once(LIB_DIR . '/functions.php');
require_once(LIB_DIR . '/db.php');
?>
