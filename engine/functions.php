<?php

//Константы ошибок
define('ERROR_NOT_FOUND', 1);
define('ERROR_TEMPLATE_EMPTY', 2);

/*
* Обрабатывает указанный шаблон, подставляя нужные переменные
*/
function render($file, $variables = [])
{
    if (!is_file($file)) {
      	echo 'Template file "' . $file . '" not found';
      	exit(ERROR_NOT_FOUND);
    }

    if (filesize($file) === 0) {
      	echo 'Template file "' . $file . '" is empty';
      	exit(ERROR_TEMPLATE_EMPTY);
    }

    // если переменных для подстановки не указано, просто
    // возвращаем шаблон как есть
    if (empty($variables)) {
	      $templateContent = file_get_contents($file);
    } else {
      	$templateContent = file_get_contents($file);
      	foreach ($variables as $key => $value) {
              if ($value != null) {
    	        // собираем ключи
              $key = '{{' . strtoupper($key) . '}}';

          		// заменяем ключи на значения в теле шаблона
          		$templateContent = str_replace($key, $value, $templateContent);
	            }
         }
    }

    return $templateContent;
}

function _log($s, $suffix='')
	{
		if (is_array($s) || is_object($s)) $s = print_r($s, 1);
		$s="### ".date("d.m.Y H:i:s")."\r\n".$s."\r\n\r\n\r\n";

		if (mb_strlen($suffix))
			$suffix = "_".$suffix;
			
		      _writeToFile($_SERVER['DOCUMENT_ROOT']."/_log/logs".$suffix.".log",$s,"a+");

		return $s;
	}

function _writeToFile($fileName, $content, $mode="w")
	{
		$dir=mb_substr($fileName,0,strrpos($fileName,"/"));
		if (!is_dir($dir))
		{
			_makeDir($dir);
		}

		if($mode != "r")
		{
			$fh=fopen($fileName, $mode);
			if (fwrite($fh, $content))
			{
				fclose($fh);
				@chmod($fileName, 0644);
				return true;
			}
		}

		return false;
	}

function _makeDir($dir, $is_root = true, $root = '')
        {
            $dir = rtrim($dir, "/");
            if (is_dir($dir)) return true;
            if (mb_strlen($dir) <= mb_strlen($_SERVER['DOCUMENT_ROOT'])) 
return true;
            if (str_replace($_SERVER['DOCUMENT_ROOT'], "", $dir) == $dir) 
return true;

            if ($is_root)
            {
                $dir = str_replace($_SERVER['DOCUMENT_ROOT'], '', $dir);
                $root = $_SERVER['DOCUMENT_ROOT'];
            }
            $dir_parts = explode("/", $dir);

            foreach ($dir_parts as $step => $value)
            {
                if ($value != '')
                {
                    $root = $root . "/" . $value;
                    if (!is_dir($root))
                    {
                        mkdir($root, 0755);
                        chmod($root, 0755);
                    }
                }
            }
            return $root;
        }


function get_files($dir){
    $result = [];
    @$files = scandir($dir);
    foreach ($files as $key => $value) {
        if (!in_array($value,[".", ".."])) {
            if (is_dir($dir . DIRECTORY_SEPARATOR . $value)) {
                $result[$value] = dirToArray($dir . DIRECTORY_SEPARATOR . $value);
            } else {
                $result[] = $value;
            }
        }
    }
    return $result;
}

function gallery_render() {
    $images = get_files(GALLERY_DIR);
    if ($images){
        foreach ($images as $image) {
            $GalleryItem = GALLERY_DIR.'/'.$image;
            //echo ('<div class="gallery_item"><div class="image_small"><a href="'.$GalleryItem.'" target="_blank"><img class="gallery_img" src="'.$GalleryItem.'"></a></div></div>');
        //}
        echo ('<div class="gallery_item"><div class="image_small"><img class="gallery_img" src="'.$GalleryItem.'"></div></div>');
        }
    } else {
            $GalleryItem = "В данной галерее нету картинок";
        };
}

?>


