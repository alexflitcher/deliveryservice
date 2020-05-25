<?php

require_once '../models/Restaraunt.php';
require_once '../connect.php';


 $q = htmlentities($_GET['q']);
 $rest = new DeliveryService\Core\Restaraunt($pdo);

$data = $rest->searchName($q);
