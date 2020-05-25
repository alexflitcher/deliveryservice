<?php
ob_start("ob_gzhandler");
require_once 'connect.php';
require_once 'models\Promocode.php';
$p = new DeliveryService\Core\Promocode($pdo);

//print_r($p->set(1, "#QWERTY", "2016-12-12", "2018-12-12", "nicolas", "fsdfsdffood"));
print_r($p->delete(1));
