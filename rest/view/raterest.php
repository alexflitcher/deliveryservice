<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <title>Отзывы ресторана</title>
    <script src="../js/jquery-3.4.0.min.js" charset="utf-8"></script>
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/raterest.css">
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@600;700;800;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans+Condensed:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=PT+Sans:wght@700&display=swap" rel="stylesheet">
    <link rel="shortcut icon" type="image/ico" href="../img/favicon.ico">
  </head>
  <body>
    <?php require_once '../components/view.header.php'; ?>
    <?php require_once '../components/components.search.php'; ?>
    <?php require_once '../components/view.menusearch.php'; ?>
    <?php require_once '../components/view.restrate.php'; ?>

    <div id="openModal" class="modalDialog">
      <div>
        <a href="#close" title="Закрыть" class="close">X</a>
        <div class="modalWindowEdit">
           <p>Пожалуйста, закройте окно.</p>
        </div>
      </div>
    </div>

      <script src="../js/component.changeraterest.js" charset="utf-8"></script>
    <script src="../js/component.restrateadd.js" charset="utf-8"></script>
</div>
</body>
</html>
