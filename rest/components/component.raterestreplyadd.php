<?php
session_start();
require_once '../models/Restrate.php';
require_once '../connect.php';

$restrate = new DeliveryService\Core\Restrate($pdo);

$id_user  = $_SESSION['id'];
$id_rest  = htmlentities($_POST['id_rest']);
$id_com   = htmlentities($_POST['id_com']);
$message  = htmlentities($_POST['message']);

if ($message == "") {
  echo "Пожалуйста, заполните поле 'Ваш отзыв'";
} elseif (!$id_rest || !$id_com) {
  echo "Произошла ошибка, перезагрузите страницу";
} else {
  $res = $restrate->add($id_user, $id_rest, $id_com, 0, $message);
  echo "Ответ добавлен!";
}
