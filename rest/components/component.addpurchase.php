<?php
session_start();
require_once '../models/Purchase.php';
require_once '../models/Menu.php';
require_once '../connect.php';
$id_user = $_SESSION['id'];
$name = $_SESSION['name'];
$family = $_SESSION['family'];
$phone = $_SESSION['phone'];
$pos_menu = implode(",", $_SESSION['buy']);
$purchase = new DeliveryService\Core\Purchase($pdo);
$menu     = new DeliveryService\Core\Menu($pdo);
$address = htmlentities($_POST['address']);
$datetime = htmlentities($_POST['datetime']);
$message = htmlentities($_POST['message']);
$type_pay = htmlentities($_POST['type_pay']);
$type_del = htmlentities($_POST['type_del']);

		$price = [];
		foreach ($_SESSION['buy'] as $key => $value) {
			$d = $menu->get($value);
			$price[] = $d['price'];

		}

		$totalprice = 0;
		for ($i=0; $i < count($price); $i++) { 
			$totalprice += $price[$i];	
		}

$res = $purchase->add($name, $family, $address, $pos_menu,
                      $type_pay, $type_del, $phone,
                      $message, $totalprice*1, $id_user*1, $datetime, 0);
if ($res) $_SESSION['buy'] = [];