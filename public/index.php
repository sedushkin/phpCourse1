<?php
require_once('../config/config.php');

$url_array = explode("/",$_SERVER['REQUEST_URI']);
if ($url_array == "") {
    $page_name = "index";
} else {
    $page_name = $url_array[1];
}
$variables = prepareVariables($page_name);
echo renderPage($page_name,$variables);


//echo (render(TPL_DIR. '/template_gallery.tpl'));

//gallery_render();



?>