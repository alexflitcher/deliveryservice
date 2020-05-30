<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Регистрация</title>
    <script src="../js/jquery-3.4.0.min.js" charset="utf-8"></script>
    <link rel="stylesheet" href="../css/main.css">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@600;700;800;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans+Condensed:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=PT+Sans:wght@700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" type="image/ico" href="../img/favicon.ico">
  </head>
  <body>
    <?php require_once '../components/view.header.php'; ?>
    <?php require_once '../components/components.search.php'; ?>
    <?php require_once '../components/view.menusearch.php'; ?>

  <div class="singup">
    <form class="singupform" method="post">
      <table>
        <tr><th></th><th></th></tr>
        <tr><td>Ваше имя</td><td><input class="namesingup" type="text" name="name"><td></tr>
        <tr><td>Ваша фамилия</td><td><input class="familysingup" type="text" name="family"></td></tr>
        <tr><td>Ваша почта</td><td><input class="emailsingup" type="text" name="email"></td></tr>
        <tr><td>Ваш телефон</td><td><input class="phonesingup" type="text" name="phone"></td></tr>
        <tr><td>Дата рождения</td><td><input class="birthdaysingup" type="date" name="birthday"></td></tr>
        <tr><td></td><td><input type="submit" name="submit" value="Зарегистрироваться"></td></tr>
      </table>
    </form>
  </div>
    <script src="../js/componentjs.singup.js" charset="utf-8"></script>
    <script src="../js/componentjs.location.js" charset="utf-8"></script>
  </div>
</body>
</html>
