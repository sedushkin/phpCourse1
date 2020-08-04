<?php
    if (isset($_GET['$x'])) {
        $x=(int)($_GET['$x']);
    }
    else $x=1;
    if (isset($_GET['$y'])) {
        $y=(int)($_GET['$y']);
    }
    else $y=1;
    if (isset($_GET['$sign'])) {
        $sign=(int)($_GET['$sign']);
    }
    else $sing='plus';
    if (isset($_GET['$result'])) {
        $result=(int)($_GET['$result']);
    }
    if (isset($x) && isset($y)) {
        switch ($sign) {
            case 'plus':
                $result=$x+$y;
            break;
            case 'minus':
                $result=$x-$y;
            break;
            case 'pow':
                $result=$x*$y;
            break;
            case 'division':
                if($y==0) {
                    $result='Деление на ноль';
                break;
                } else {
                    $result=$x/$y;
                break;
                }
                
        }
    };

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="GET">
        <input name="x" type="number" value="<?=$x?>">
        <select name="sign">
            <option <? if ($sign=='plus') echo 'selected'?> value="plus">+</option>
            <option value="minus">-</option>
            <option value="pow">*</option>
            <option value="division">/</option>
        </select>
        <input name="y" type="number" value="<?=$y?>">
        <input type="submit" value="=">         
        <b><? if (isset($result)) echo "$result"?></b>
    </form>
    
</body>
</html>