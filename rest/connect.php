<?php
try {
// создаёт экземпляр PDO
$pdo = new PDO("mysql:host=localhost;dbname=data",
               "root",
               "",
               [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
} catch (PDOExeption $e) {
  die("Фатальная ошибка" . $e->getMessage());
}
