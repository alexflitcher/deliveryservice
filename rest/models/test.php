<?php
require_once '../models/Codeverify.php';
require_once '../connect.php';
$c = new DeliveryService\Core\Codeverify($pdo);
print_r($c->getByCode(45270370));
$data2['id'] != $data['id_user']
