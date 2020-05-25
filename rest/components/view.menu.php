
<?php
require_once '../models/Menu.php';
require_once '../models/Catalog.php';
require_once '../connect.php';
if ($_REQUEST['id']) {
  $menu = new DeliveryService\Core\Menu($pdo);
  $catalog = new DeliveryService\Core\Catalog($pdo);
  $id = htmlentities($_REQUEST['id']);
  $data = $menu->getMenuByIdRest($id);
//$menu->add("Курочка с инлейкой вкусннааа", 1231231231231231231, $id, 20, "HEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHEHE", '../img/images.jpeg');


?>
<div class="content">
  <?php
   for($i = 0; $i < count($data); $i++) {
  ?>
  <b class="menulist">
    <p class="namemenu"><?=$data[$i]['name']?></p>
    <p class="pricemenu"><?=$data[$i]['price']?></p>
    <?php
    $dataC = $catalog->get($data[$i]['catalog_id']);
    ?>
    <p class="catmenu"><?=$dataC['name']?></p>
    <img class="image" src="<?=$data[$i]['img']?>">
    <p class="descmenu"><?=$data[$i]['description']?></p>
    <p class="button_m" id="<?=$data[$i]['id']?>">Подробнее</p>
 </b>
<?php } ?>
<div class="newdata">

</div>

 </div>

<?php } ?>
