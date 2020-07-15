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
        echo "<a href='cabinet.php' class='choose'><img class='choose-img' src='{$clients[6]}'></a>";
        if ($_SESSION['buy']) {
          echo "<a href='buy.php' class='buy'><img class='buy-img' src='../img/cart.png'></a>";
        } else {
          echo "<a href='buy.php' class='buy'><img class='buy-img' src='../img/shopping-cart.png'></a>";
        }
      } else {
        echo "<b class='choose'><a href='singup.php'>Регистрация</a>
              |
              <a href='singin.php'>Вход</a></b>";

     }
    ?>
  </div>
