<?php
ini_set("display_errors", "on");
require_once '../models/Client.php';
require_once '../connect.php';

use DeliveryService\Core\Client;

if (@$_FILES['image']) {
  $errors = false;
  $type = "";
  switch ($_FILES['image']['type']) {
    case 'image/png': $type = ".png"; break;
    case 'image/jpeg': $type = ".jpeg"; break;
    case 'image/gif': $type = ".gif"; break;
    case 'image/pjpeg': $type = ".pjpeg"; break;
    case 'image/tiff': $type = ".tiff"; break;
    case 'image/webp': $type = ".webp"; break;
    default: $errors .= "Выберите изображение, с одним из\nследующий типов: png, jpeg, pjpeg, gif, tiff, webp\n\n"; break;
  }

  if ($_FILES['image']['size'] > 20971520) $errors .= "Изображение должно весить не более 20мб\n\n";

  if ($errors !== false) {
    echo $errors;
  } else {
    $name = "../img/" .basename($_FILES['image']['name'], $type) . "_" . mt_rand(100000, 10000000) . "_" . date("YmdHis", time()) . $type;
    $client = new Client($pdo);
    $data_about_userid = $client->get($clients[0]);

    $update_img = $client->set($clients[0], $data_about_userid['name'],
                               $data_about_userid['family'], $data_about_userid['email'],
                               $data_about_userid['phone'], $data_about_userid['birthday'],
                               $data_about_userid['verification'], $name);
    if ($update_img) echo "<script>alert('Успех')</script>";
    $_SESSION['img'] = $name;
    move_uploaded_file($_FILES['image']['tmp_name'], $name);
    header('Location: /view/cabinet.php');
  }
}
