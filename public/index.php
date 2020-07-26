<?php
require_once('../config/config.php');
//echo('$_SERVER: <br>');
//var_dump($_SERVER);
//echo("<br>");
$url_array = explode("/",$_SERVER['REQUEST_URI']);
//echo('$url_array : <br>');
//var_dump($url_array);
//echo ("<br>");
if ($url_array[1] == "") {
    $page_name = "index";
} else {
    $page_name = $url_array[1];
}
//echo('$page_name:<br>');
//var_dump($page_name);
$variables = prepareVariables($page_name);
echo renderPage($page_name,$variables);


//echo (render(TPL_DIR. '/template_gallery.tpl'));

//gallery_render();



?>