<?php

require_once '../connect.php';
require_once '../models/Productrate.php';

$id = htmlentities($_POST['id']);
$message = htmlentities($_POST['message']);
$restrate = new DeliveryService\Core\Productrate($pdo);
$data = $restrate->get($id);

if (strlen(trim($message)) == "") {
  echo "<p class='warning'>Отзыв должен состоять, как минимум из одной буквы</p>";
} else {
  if ($restrate->set($id, $data['id_user'], $data['id_product'], 1, $message))
  {
    echo "<p class='good'>Сохранено</p>";
  } else {
    echo "<p class='warning'>Ошибка</p>";
  }
}
