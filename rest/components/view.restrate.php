<?php
session_start();
require_once '../connect.php';
require_once '../models/Restrate.php';
require_once '../models/Client.php';

$restrate = new DeliveryService\Core\Restrate($pdo);
$client   = new DeliveryService\Core\Client($pdo);

  if (@$_SESSION['id']):


?>
    <div class="dorate">
      <h1 class="formtitle">Форма</h1>
      <form method="post" class="formrateadd" id="<?=htmlentities($_GET['id'])?>">
        <p>Ваш отзыв</p>
        <textarea name="message" rows="8" cols="80" class="i_search textarea-resize" id="textarea-id"></textarea><br>
        <input type="submit" class="i_search">
      </form>
    </div>

<?php
  else:
?>
    <p class='warning yellow'>Пожалуйста, авторизуйтесь,
                                   чтобы оставить отзыв</p>
<?php
endif;
?>

<div class="allrate">
<?php
  $data = $restrate->getByRestId(htmlentities($_GET['id']));

  foreach($data as $val) :
    $d = $client->get($val['id_user']);

?>


    <?php $class = "arate"; ?>
  <div class="arate" id="<?=$val['id']?>">
    <b class="rate-img"><img src='<?=$d['img']?>'></b>
    <b class="rate-name"><?=$d['name']?> <?=$d['family']?><?php echo $val['updated'] ? "(обновлено)" : ""  ?></b><br><br>
    <?php if ($d['id'] == $_SESSION['id']) : ?>
    <a class="rate-edit" href="#openModal" data-id="<?=$val['id']?>">Редактировать</a><br><br>
  <?php endif; ?>
    <p class="rate-message"><?=$val['message']?></p>
    <?php if (@$_SESSION['id']) : ?>
      <?php if ($class == "areply"): ?>
      <?php else: ?>

  <?php endif; ?>
  <?php endif; ?>
  </div>


<?php endforeach; ?>
</div>
