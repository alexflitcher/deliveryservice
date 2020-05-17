<?php
// Подключения файлов с классом Catalog и файла с
// экземпляром PDO
ini_set("display_errors", "on");
require_once 'connect.php';
require_once 'models/Catalog.php';

// Инициализация экземпляра класса Catalog
$catalog = new DeliveryService\Catalog($pdo);

// Добавление каталоги Test
$last_id = $catalog->add("Test");

// Вывод id нового каталога
echo $last_id;
