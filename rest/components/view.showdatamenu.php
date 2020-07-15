<?php
require_once '../vendor/autoload.php';
require_once '../models/Purchase.php';
require_once '../models/Menu.php';
require_once '../connect.php';

if (@$_GET['id']) {
  $id = htmlentities($_GET['id']);
  $menu = new DeliveryService\Core\Menu($pdo);
  $datam = $menu->get($id);
?>
<div class="describemenupos">
  <p class="dmp-img"><img class="dmp-img-img" src='<?=$datam['img']?>'></p>
  <div class="dmp-div">
  <p class='dmp-name'><?=$datam['name']?></p>
  <p class="dmp-price"><?=$datam['price']?> рублей</p>
  <p class="dmp-desc"><?=$datam['description']?></p>
  </div>
  <p class="dmp-purchase button_r" id='<?=$datam['id']?>'>Добавить в корзину</p>
</div>
<?php
} else {
  echo "<p class='novalid'>Не выбрана позиция меню</p>";
}
?>
