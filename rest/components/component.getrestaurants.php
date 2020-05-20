<?php

require_once '../models/Restaraunt.php';
require_once '../connect.php';

$restaraunt = new DeliveryService\Core\Restaraunt($pdo);
//$restaraunt->add("Tosiba1", "A. A. Flitcher",
//                 "Bt. street, h. 12, c. 175", "216-542-451",
//                 "../img/images.jpeg");
$data = $restaraunt->getAll();
