<?php
require_once '../models/Client.php';
require_once '../connect.php';
require_once '../vendor/autoload.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

ini_set("display_errors", "on");

if (@$_POST['name'] && @$_POST['family'] && @$_POST['email'] &&
    @$_POST['phone'] && @$_POST['birthday']) {
      $client   = new DeliveryService\Core\Client($pdo);
      $errors   = "";
      $name     = htmlentities($_POST['name']);
      $family   = htmlentities($_POST['family']);
      $email    = htmlentities($_POST['email']);
      $phone    = htmlentities($_POST['phone']);
      $birthday = htmlentities($_POST['birthday']);
      $true     = true;
    if (!preg_match('/^[a-zA-Zа-яА-Я0-9_]/i', $name)) {
    $errors .=
    "Имя должно состаять из наборов символов: A-Z, a-z, а-я, А-Я, 0-9\n";
    }

    if (!preg_match('/^[a-zA-Zа-яА-Я0-9_]/i', $family)) {
    $errors .=
    "Фамилия должна состаять из наборов символов: A-Z, a-z, а-я, А-Я, 0-9\n";
    }

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $errors .=
    "Неправильная почта\n";
    }

    if (!preg_match('/^[0-9]/', $phone)) {
        $errors .=
        "Телефон должен состоять исключительно из цифр\n";

    }

    if (strlen($phone) < 10) {
      $errors .=
      "Телефон должен быть больше 10 символов\n";
    }


    if ($errors == "") {
      if ($client->getByEmail($email)) {
        echo "Данная почта уже зарегестрирована!\n";
        $true = false;
      }

      if ($client->getByPhone($phone)) {
        echo "Данный телефон уже зарегестрирован!\n";
        $true = false;
      }
    if ($true) {
      if ($client->add($name, $family, $email, $phone, $birthday, 'false')) {


        $mail = new PHPMailer();
        $msg = "ok";
        $mail->isSMTP();
        $mail->CharSet = "UTF-8";
        $mail->SMTPAuth   = true;

        $mail->Host       = 'smtp.yandex.ru'; // SMTP сервера GMAIL
        $mail->Username   = 'alexflitcher'; // Логин на почте
        $mail->Password   = 'passforsite'; // Пароль на почте
        $mail->SMTPSecure = 'ssl';
        $mail->Port       = 465;
        $mail->setFrom('alexflitcher@yandex.ru', 'Alex Flitcher'); // Адрес самой почты и имя отправителя
        $mail->addAddress($email);

        $mail->isHTML(true);
        $mail->Subject = 'Заголовок письма';
        $mail->Body    = "Самал алуйкум дядь!";

        if ($mail->send()) {
          echo "Вы успешно были зарегистрированны!
  Проверьте ваше почту чтобы окончить регестрацию
  Если сообщение не пришло проверьте папку \"Спам\"";
        }

        }
      }
    } else {
      echo $errors;
    }
} else {
  echo "Пожалуйста заполните все поля";
}
