<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Меню</title>
    <script src="../js/jquery-3.4.0.min.js" charset="utf-8"></script>
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/more.css">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@600;700;800;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans+Condensed:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=PT+Sans:wght@700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" type="image/ico" href="../img/favicon.ico">
  </head>
  <body>
        <?php require_once '../components/view.header.php'; ?>
        <?php require_once '../components/components.search.php'; ?>
        <?php require_once '../components/view.menusearch.php'; ?>
        <?php require_once '../components/view.showdatamenu.php'; ?>
        <a href='../view/morerest.php?id=<?=$_GET['id']?>'><p class="rate button_m_r">Отзывы</p></a>
        <script src="../js/component.addtobuy.js" charset="utf-8"></script>
</div>
</body>
</html>
