<?php
require_once '../models/Link.php';
require_once '../connect.php';

$a = new DeliveryService\Core\Link($pdo);
echo "<pre>";
