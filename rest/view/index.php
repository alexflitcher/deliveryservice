<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Главная</title>
    <script src="https://code.jquery.com/jquery-3.4.0.min.js" charset="utf-8"></script>
    <link rel="stylesheet" href="../css/main.css">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@600;700;800;900&display=swap" rel="stylesheet">
  </head>
  <body>
    <div class="page">
      <div class="header">
        <a href="index.php" class="logo">Еда.Быстро</a>
      </div>

      <div class="menu">
        <form action="<?=$_SERVER['SCRIPT_NAME']?>" method="get" class="form_search">
          <input class="i_search" type="search" name="q" placeholder="Введите свой запрос">
          <input class="search" type="image" src="../img/utensils.png" value="Поиск">
        </form>
      </div>

     <div class="content">
       <?php require_once '../components/component.getrestaurants.php'; ?>
       <?php
        for($i = 0; $i < count($data); $i++) {
       ?>
       <b class="restaraunt"><?=$data[$i]['name']?><br>
        <?=$data[$i]['address']?></br>
        <img class="image" src="<?=$data[$i]['img']?>" alt="image">
        <p class="button_r" id="<?=$data[$i]['id']?>">Просмотреть меню</p>
      </b>
     <?php } ?>

      </div>


      <div class="footer">

      </div>
    </div>
  </body>
</html>
