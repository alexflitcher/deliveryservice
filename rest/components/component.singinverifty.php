<?php
ini_set("display_errors", "on");
require_once '../models/Codeverify.php';
require_once '../models/Client.php';
require_once '../connect.php';
require_once '../vendor/autoload.php';
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

if (@$_POST['code'] && @$_POST['mail']) {
    $codeverify  = htmlentities($_POST['code']);
    $mailverfy   = htmlentities($_POST['mail']);
    $code        = new DeliveryService\Core\Codeverify($pdo);
    $client      = new DeliveryService\Core\Client($pdo);

    $data = $code->getByCode($codeverify);
    if (@$data['id']) {
      if (time() > strtotime($data['time_active'])) {
        echo "Срок действия кода истёк";
      } else {
        if ($data2 = $client->get($data['id_user'])) {
         if ($data2['email'] != $mailverfy) {
           echo "Введите код который пришёл на вашу почту";
         } else {
          if ($data2['verification'] == "false") {
            echo "Ваш аккаунт не подтверждён";
          } else {

            session_start();
            $_SESSION['id'] = $data2['id'];
            $_SESSION['name'] = $data2['name'];
            $_SESSION['family'] = $data2['family'];
            $_SESSION['email'] = $data2['email'];
            $_SESSION['phone'] = $data2['phone'];
            $_SESSION['birthday'] = $data2['birthday'];
            $_SESSION['img'] = $data2['img'];
            echo "Вы успешно вошли в ваш аккаунт!";
            }
          }
        }
      }
    } else {
      echo "Данного кода подтверждения не существует";
    }

}
