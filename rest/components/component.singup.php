<?php
require_once '../models/Client.php';
require_once '../models/Verification.php';
require_once '../vendor/autoload.php';
require_once '../connect.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

ini_set("display_errors", "on");
$alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
$hashGenerate = function ($symNum) use($alphabet) 
{
  $hash = "";
  for($i = 0; $i < $symNum; $i++) {
    $letter = $alphabet[mt_rand(0, count($alphabet)-1)];
    $hash .= $letter;  
  }
  return $hash;
};

if (@$_POST['name'] && @$_POST['family'] && @$_POST['email'] &&
    @$_POST['phone'] && @$_POST['birthday']) {
      $client        = new DeliveryService\Core\Client($pdo);
      $verification  = new DeliveryService\Core\Verification($pdo);
      $errors        = "";
      $name          = htmlentities($_POST['name']);
      $family        = htmlentities($_POST['family']);
      $email         = htmlentities($_POST['email']);
      $phone         = htmlentities($_POST['phone']);
      $birthday      = htmlentities($_POST['birthday']);
      $true          = true;


      
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
      $id_user = $client->add($name, $family, $email, $phone, $birthday, 'false');
      $hash    = $hashGenerate(32);
      if ($id_user && $verification->add($id_user, $hash)) {
        

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
        $mail->setFrom('alexflitcher@yandex.ru', 'Еда.Быстро'); // Адрес самой почты и имя отправителя
        $mail->addAddress($email);

        $mail->isHTML(true);
        $mail->Subject = 'Заголовок письма';
        
        $mail->Body    = "<h1>Здравствуйте</h1>
                          <h2>Подтвердите вашу почту перейдя по ссылке:</h2>
                              <a href=" . "http://{$_SERVER['HTTP_HOST']}/view/verifi.php?hash=$hash" .">Подтвердить</a>
                          <h2>Спаибо, за то, что пользуетесь нашим сервисом!</h2>";

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
