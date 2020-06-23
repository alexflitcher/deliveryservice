<?php
require_once '../vendor/autoload.php';
use Monolog\Logger;
use Monolog\Handler\StreamHandler;

$log = new Logger("{$_POST['id']}:переход_в_кабинет");
$log->pushHandler(new StreamHandler("../logs/{$_POST['id']}.log", Logger::NOTICE));

@$log->notice('перешёл в личный кабинет');
