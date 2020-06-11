<?php

require_once '../models/Verification.php';
require_once '../models/Client.php';
require_once '../connect.php';

if (@$_GET['hash']) {
    $verifi = new DeliveryService\Core\Verification($pdo);
    $client   = new DeliveryService\Core\Client($pdo);
    $hash   = $_GET['hash'];

    $string = $verifi->getByHash($hash);
    if (!$string) {
        echo "<b class='novalid'>Не валидная ссылка</b>";
    } else {
    $id_user = $string['id_user'];
    $data_user = $client->get($id_user);
    $reform = $client->set($id_user, $data_user['name'],
                           $data_user['family'], $data_user['email'],
                           $data_user['phone'], $data_user['birthday'],
                           'true', 'false');
    if ($reform) {
        echo "<b class='novalid'>Ваш аккаунт подтверждён!<br>
              Теперь вы можете войти в аккаунт</b>";
        $verifi->delete($string['id']);
    }
  }
} else {
    echo "<b class='novalid'>Не валидная ссылка</b>";
}
