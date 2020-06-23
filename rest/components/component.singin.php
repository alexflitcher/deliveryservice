<?php
ini_set("display_errors", "on");
require_once '../models/Codeverify.php';
require_once '../models/Client.php';
require_once '../connect.php';
require_once '../vendor/autoload.php';
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use Monolog\Logger;
use Monolog\Handler\StreamHandler;
// create a log channel

if (@$_POST['email'] && @$_POST['email'] != "") {
  $email  = htmlentities($_POST['email']);
  $error  = "";
  $code   = new DeliveryService\Core\Codeverify($pdo);
  $client = new DeliveryService\Core\Client($pdo);
  if (!filter_var($email, FILTER_VALIDATE_EMAIL)) $error .= "Невалидная почта\n";

  if ($error != "") {
    echo $error;
  } else {
    if ($data = $client->getByEmail($email)) {
      $id_user = $data['id'];

      if ($idcode = $code->add($id_user,
          $hashcode = $code->generateCode(8),
          date('Y-m-d H-i-s', time()+172800))) {
                  $mail = new PHPMailer();
                  $log = new Logger("$id_user:вход_отправка_кода");
                  $log->pushHandler(new StreamHandler("../logs/$id_user.log", Logger::NOTICE));
                  $msg = "ok";
                  $mail->isSMTP();
                  $mail->CharSet = "UTF-8";
                  $mail->SMTPAuth   = true;

                  $mail->Host       = 'smtp.yandex.ru'; // SMTP сервера GMAIL
                  $mail->Username   = 'nicn1kolai'; // Логин на почте
                  $mail->Password   = '123456789qwerty'; // Пароль на почте
                  $mail->SMTPSecure = 'ssl';
                  $mail->Port       = 465;
                  $mail->setFrom('nicn1kolai@yandex.ru', 'Еда.Быстро'); // Адрес самой почты и имя отправителя
                  $mail->addAddress($email);

                  $mail->isHTML(true);
                  $mail->Subject = 'Код верификации';

                    $mail->Body    = "<h1>Здравствуйте</h1>
                                      <h2>Ваш код подтверждения</h2>
                                      <h2>$hashcode</h2>
                                      <h3>Код активен в течении 48 часов!</h3>
                                      <h2>Спаибо, за то, что пользуетесь нашим сервисом!</h2>";

                    if ($mail->send()) {
                      echo "На вашу почту был отправлен\nкод подтрерждения, введите\nего в появившееся поле,\nесли код не пришёл проверьте\nпапку \"Спам\"";
                      @$log->notice("отправлено сообщение с кодом подтверждения - $hashcode");
                    }
     }
    } else {
      echo "Данная почта не зарегистрирована";
    }

  }
}
