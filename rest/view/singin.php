<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Вход</title>
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

    <div class="singin">
        <form class="singinform" method="post">
          <table>
            <tr><th></th><th></th></tr>
            <tr class="tablemainsingin"><td>Почта&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type="text" class="mailsingin" name="email" placeholder="Введите вашу почту"></td></tr>
            <tr class="tableverifycodesingin"><td>Код верификации</td><td><input type="text" name="codeverify" class="codeverifysingin"></td></tr>
            <tr><td></td><td><input type="submit" value="Войти"></td></tr>
          </table>
      </div>
      <script src="../js/componentjs.singin.js" charset="utf-8"></script>
      <script src="../js/componentjs.location.js" charset="utf-8"></script>
  </div>
</body>
</html>
