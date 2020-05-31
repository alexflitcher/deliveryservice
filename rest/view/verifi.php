<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
  <?php ini_set("display_errors", "no"); ?>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Меню</title>
    <script src="../js/jquery-3.4.0.min.js" charset="utf-8"></script>
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/menu.css">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@600;700;800;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans+Condensed:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=PT+Sans:wght@700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" type="image/ico" href="../img/favicon.ico">
  </head>
  <body>

        <?php require_once '../components/view.headernoreg.php'; ?>
        <?php require_once '../components/components.search.php'; ?>
        <?php require_once '../components/view.menusearch.php'; ?>
        <?php require_once '../components/view.menu.php' ?>


        <?php require_once '../components/component.verify.php'; ?>

  </div>
</body>
</html>
