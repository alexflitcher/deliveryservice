<?php
session_start();
$pos = htmlentities($_POST['pos']);
unset($_SESSION['buy'][$pos]);
