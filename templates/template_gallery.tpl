<!DOCTYPE html>
<html lang="en">
  <head>
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../public/css/style.css">
    <title>Галлерея - урок 4</title>
  </head>
<body>
  <h1>Галерея фотографий</h1>
    <form enctype="multipart/form-data" action="../engine/file-handler.php" method="POST">
      <input type="hidden" name="MAX_FILE_SIZE" value="15000000" />
      Отправить этот файл: <input name="userfile" type="file" />
      <input type="submit" value="Отправить файл" />
    </form>
  <br>
  <div class="modal" data-modal="1">
  <span class="modal_close">Х</span>
  <img class="modalContent"></img>
</div>
<div class="overlay" id="overlay-modal"></div>
</div>
  <script src="../public/scripts/script.js"></script>
</body>
</html>