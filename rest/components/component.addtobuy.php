<?php
session_start();
$id = htmlentities($_POST['id']);
$_SESSION['buy'][] = $id;
echo "Добавлено";
