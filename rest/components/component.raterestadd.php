<?php
session_start();
require_once '../models/Restrate.php';
require_once '../connect.php';

$restrate = new DeliveryService\Core\Restrate($pdo);

$id_user  = $_SESSION['id'];
$id_rest  = htmlentities($_POST['id_rest']);
$message  = htmlentities($_POST['message']);

if ($message == "") {
  echo "Пожалуйста, заполните поле 'Ваш отзыв'";
} elseif (!$id_rest) {
  echo "Произошла ошибка, перезагрузите страницу";
} else {
  $res = $restrate->add($id_user, $id_rest, 0, 0, $message);
  echo "Отзыв добавлен!";
}
