<?php
require_once '../models/Purchase.php';
require_once '../connect.php';
require_once '../models/Client.php';
session_start();
ini_set("display_errors", "on");
$nameaar = ["ID", "Имя", "Фамилия", "Эл. почта", "Телефон",
            "День Рождения"];
$nameaara2 = ["id", "name", "family", "email", "phone", "birthday"];
$purchase = new DeliveryService\Core\Purchase($pdo);
$cdatas   = new DeliveryService\Core\Client($pdo);
$purchases = $purchase->getByUserId($clients[0]);
$cdata  = $cdatas->get($clients[0]);

require_once '../components/component.loadimg.php';
?>
<div class="imageuserdata">
  <?php
    $src = $clients[6];
  ?>
  <img src="<?=$src?>" alt="Аватар">
  <form method="post" enctype="multipart/form-data">
    <input type="file" name="image" value="Загрузить фото"><br>
    <input type="submit" value="Загрузить">
  </form>
</div>
<div class="datauser">

<table>
  <tr><th></th><th></th><th></th></tr>
    <?php
      for ($i=0; $i < count($clients); $i++) {
        if ($i == 6) continue;
        if ($i == 0) {
          echo "<tr><td>{$nameaar[$i]}: </td><td>{$clients[$i]}</td><td></td></tr>";
        } else {
          echo "<tr><td>{$nameaar[$i]}: </td><td>{$clients[$i]}</td><td><a class='metadata {$nameaara2[$i]}' id='{$cdata['id']}' href='#openModal'>Изменить</a></td></tr>";
        }
      }
    ?>
</table>
</div>
<div class="purchasesusers">
  Ваши заказы:
  <table>
    <tr><th>Адрес</th><th>Тип оплаты</th><th>Тип доставки</th><th>Всего</th></tr>
    <?php
  //  $purchase->add("qwerty", "qerty", "st.grdfgdfgdfgdfgd", "12,32,123",
  //                      "qweryt", "yesyesy", "899554",
  //                      "sdfsdf", 999999999, 26);
      foreach ($purchases as $key => $value) {
        echo "<tr><td>{$value['address']}</td><td>{$value['type_pay']}</td><td>{$value['type_delivery']}</td><td>{$value['totalprice']}</td></tr>";
      }
    ?>
  </table>
</div>
<div class="button_r exit">
  Выйти
</div>
<script type="text/javascript">
  $('.exit').click(function(e) {
    $.ajax({
      url: '../components/components.exit.php',
    }).done(function(data) {
      location.href = "../view/";
    })
  })

  let id = $('.metadata').attr('id');

  $.ajax({
    url: '../components/components.hrefgoto.php',
    method: 'post',
    data: {
      id: id,
    },
  }).done(function(data) {
  });
</script>
