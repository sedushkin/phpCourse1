<?php

    $x=(int)$_POST['x'];
    $y=(int)$_POST['y'];

    if (isset($_POST['operation'])) {
        if ($x==="" || $y==="") {

        } else {
            switch($_POST['operation']) {
                case '+':
                    $result=$x+$y;
                break;
                case '-':
                    $result=$x-$y;
                break;
                case '*':
                    $result=$x*$y;
                break;
            case '/':
                if($y==0) {
                    $result = 'деление на ноль';
                } else {
                    $result=$x/$y;
                }
            break;
                        
            }
        }
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<form action="" method="POST">
<label for="x">First number</label>
<input type="number" name="x">
<label for="y">Second number</label>
<input type="number" name="y">


<div class="calculator">
<div class="numbers">
</div>
<div class="operations">
    <input type="submit" name="operation" value="+">
    <input type="submit" name="operation" value="-">
    <input type="submit" name="operation" value="*">
    <input type="submit" name="operation" value="/">
</div>
<div class="result"><p>Результат <span><?=$result?></span></div>
</div>

</form>
    
</body>
</html>