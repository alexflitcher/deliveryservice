<div class="content">
  <?php
   for($i = 0; $i < count($data); $i++) {
  ?>
  <b class="restaraunt"><?=$data[$i]['name']?><br>
   <?=$data[$i]['address']?></br>
   <img class="image" src="<?=$data[$i]['img']?>" alt="image">
   <p class="button_r" id="<?=$data[$i]['id']?>">Просмотреть меню</p>
 </b>
<?php } ?>
<div class="newdata">

</div>
      <b class="loadmore">Загрузить ещё</b>
 </div>
