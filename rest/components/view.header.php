<div class="page">
  <div class="header">
    <a href="index.php" class="logo">Еда.Быстро</a>
    <?php
      session_start();
      if (@$_SESSION['id']) {
        $clients = [$_SESSION['id'], $_SESSION['name'],
                    $_SESSION['family'], $_SESSION['email'],
                    $_SESSION['phone'], $_SESSION['birthday'],
                    $_SESSION['img']];
        echo "<a href='cabinet.php' class='choose'>{$clients[1]} {$clients[2]}</a>";
      } else {
        echo "<b class='choose'><a href='singup.php'>Регистрация</a>
              |
              <a href='singin.php'>Вход</a></b>";

     }
    ?>
  </div>
