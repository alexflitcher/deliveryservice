<?php
  require_once '../connect.php';
  require_once '../models/Client.php';

  $id = $_POST['id'];
  $type = $_POST['type'];
  $nfield = ['name' => 'Имя', 'family' => 'Фамилия', 'email' => "Почта",
             'phone' => 'Телефон', 'birthday' => 'День рождения'];
  $client = new DeliveryService\Core\Client($pdo);
  $data = $client->get($id);
?>

<form method="post" class="changeuserdata">
  <?php if ($type !== 'birthday'): ?>
  <?=$nfield[$type]?> <input type="text" id="<?=$id?>" class='cud-data' placeholder="<?=$nfield[$type]?>" value="<?=$data[$type]?>" name="<?=$type?>" required><br>
  <?php else: ?>
  <?=$nfield[$type]?> <input type="date" id="<?=$id?>" class='cud-data' placeholder="<?=$nfield[$type]?>" value="<?=$data[$type]?>" name="<?=$type?>" required><br>
  <?php endif; ?>
  <input type="submit" value="Сохранить">
</form>

<script type="text/javascript">
        $('.changeuserdata').submit(function(e) {
          e.preventDefault();
          let id = $('.cud-data').attr('id');
          let value = $('.cud-data').val();
          let type = $('.cud-data').attr('name');
          $.ajax({
            url: '../components/component.updatedatauser.php',
            method: 'post',
            data: {
              id: id,
              value: value,
              type: type,
            },
          }).done(function(data) {
            $('.modalWindowEdit .fortab').html(data);
          })
        })
</script>
