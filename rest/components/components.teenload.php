<?php

require_once '../models/Restaraunt.php';
require_once '../connect.php';

if (@$_REQUEST['min']) {
  $min = htmlentities($_REQUEST['min']);
  $restaraunt = new DeliveryService\Core\Restaraunt($pdo);

  $data = $restaraunt->getLimit($min, 10);



?>


  <?php
   for($i = 0; $i < count($data); $i++) {
  ?>
  <b class="restaraunt"><?=$data[$i]['name']?><br>
   <?=$data[$i]['address']?></br>
   <img class="image" src="<?=$data[$i]['img']?>" alt="image">
   <p class="button_r" id="<?=$data[$i]['id']?>">Просмотреть меню</p>
 </b>
<?php } ?>


<?php } ?>
