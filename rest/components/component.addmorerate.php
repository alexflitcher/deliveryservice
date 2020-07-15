<?php
session_start();
require_once '../connect.php';
require_once '../models/Productrate.php';

$id          = htmlentities($_POST['id']);
$message     = htmlentities($_POST['message']);
$productrate = new DeliveryService\Core\Productrate($pdo);

if (strlen(trim($message))) {
    if ( $productrate->add($_SESSION['id'], $id, 0, $message) ) {
        echo "Отзыв добавлен";
    } else {
        echo "Ошибка";
    }
} else {
  echo "Пожалуйста, введите отзыв";
}
