<?php
require_once '../connect.php';
require_once '../models/Client.php';
require_once '../vendor/autoload.php';
use Monolog\Logger;
use Monolog\Handler\StreamHandler;
session_start();
$id = $_POST['id'];
$value = $_POST['value'];
$type = $_POST['type'];
$client = new DeliveryService\Core\Client($pdo);
$log = new Logger("$id:редактирование_данных");
$log->pushHandler(new StreamHandler("../logs/$id.log", Logger::NOTICE));
$adata = $client->get($id);
if ($value == "") {
  echo "<p class='warning'>Поле не должно быть пустым!</p>";
  @$log->notice('отправка пустого поля');
} else {
  if ($type == "name") {
    if (!preg_match('/^[a-zA-Zа-яА-Я0-9_]/i', $value)) {
    echo "<p class='warning'>Имя должно состаять из наборов символов: A-Z, a-z, а-я, А-Я, 0-9\n</p>";
    @$log->notice('имя: введено некорректное имя: ' . $value);
    } else {
    $res = $client->set($id, $value, $adata['family'],
                        $adata['email'], $adata['phone'],
                        $adata['birthday'], $adata['verification'],
                        $adata['img']);
    $_SESSION['name'] = $value;
    @$log->notice("имя: успешно изменено, старое имя: {$adata['name']}, новое имя: $value");
    }
  } elseif ($type == "family") {
    if (!preg_match('/^[a-zA-Zа-яА-Я0-9_]/i', $value)) {
    echo "<p class='warning'>Фамилия должна состаять из наборов символов: A-Z, a-z, а-я, А-Я, 0-9\n</p>";
    @$log->notice("фамилия: некорректная фамилия: $value");
    } else {
    $res = $client->set($id, $adata['name'], $value,
                        $adata['email'], $adata['phone'],
                        $adata['birthday'], $adata['verification'],
                        $adata['img']);
    $_SESSION['family'] = $value;
    @$log->notice("фамилия: фамилия успешно изменена: старая фамилия: {$adata['family']}, новая фамилия: $value");
    }
  } elseif ($type == "email") {
    if (!filter_var($value, FILTER_VALIDATE_EMAIL)) {
    echo "<p class='warning'>Неправильная почта\n</p>";
    @$log->notice("почта: неправильная почта: $value");
  } elseif ($client->getByEmail($value)) {
    echo "<p class='warning'>Данная почта уже занята\n</p>";
    @$log->notice("почта: почта уже занята: $value");
  } else {
    $res = $client->set($id, $adata['name'], $adata['family'],
                        $value, $adata['phone'],
                        $adata['birthday'], $adata['verification'],
                        $adata['img']);
    $_SESSION['email'] = $value;
    @$log->notice("почта: почта успешно изменена, старая почта: {$adata['email']}, новая почта: $value");
    }
   } elseif ($type == "phone") {
     if (!preg_match('/^[0-9]/', $value)) {
         echo "<p class='warning'>Телефон должен состоять исключительно из цифр\n</p>";
         @$log->notice("телефон: телефон должен состоять только из цифр: $value");
     } elseif (strlen($value) < 10) {
       echo "<p class='warning'>Телефон должен быть больше 10 символов\n</p>";
       @$log->notice("телефон: телефон мень 10 символов: $value");
     } elseif ($client->getByPhone($value)) {
       echo "<p class='warning'>Данный номер телефона уже занят</p>";
       @$log->notice("телефон: телефон уже занят: $value");
     } else {
     $res = $client->set($id, $adata['name'], $adata['family'],
                        $adata['email'], $value,
                        $adata['birthday'], $adata['verification'],
                        $adata['img']);
      $_SESSION['phone'] = $value;
      @$log->notice("телефон: телефон успешно изменён, старый телефон: {$adata['phone']}, новый телефон: $value");
     }
   } elseif ($type == "birthday") {
     $res = $client->set($id, $adata['name'], $adata['family'],
                        $adata['email'], $adata['phone'],
                        $value, $adata['verification'],
                        $adata['img']);
     @$log->notice("день рождения: сохранено, старый: {$adata['birthday']}, новый: $value");  
   }

   if ($res) {
     echo "<p class='good'>Сохранено</p>";
   }
}
