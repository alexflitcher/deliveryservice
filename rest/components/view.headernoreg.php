<div class="page">
  <div class="header">
    <a href="index.php" class="logo">Еда.Быстро</a>
    <?php
      session_start();
      if ($_COOKIE['authorized']) {
        $clients = [$_SESSION['id'], $_SESSION['name'],
                    $_SESSION['family'], $_SESSION['email'],
                    $_SESSION['phone'], $_SESSION['birthday']];
        echo "<a href='cabinet.php' class='choose'>{$user['name']} {$user['family']}</a>";
      } else {


     }
    ?>
  </div>
