<?php

namespace DeliveryService;

class Purchase
{
  private $pdo;

  public function __construct($pdo)
  {
    $this->pdo = $pdo;
  }

  public function add($name, $family, $address, $pos_menu,
                      $type_pay, $type_delivery, $phone,
                      $message, $totalprice)
  {
    try {
      $query = "INSERT INTO purchases VALUES(
        NULL, :name, :family, :address, :pos_menu,
        :type_pay, :type_delivery, :phone, :message,
        :totalprice
      )";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute([
        'name' => $name, 'family' => $family,
        'address' => $address, 'pos_menu' => $pos_menu,
        'type_pay' => $type_pay, 'type_delivery' => $type_delivery,
        'phone' => $phone, 'message' => $message,
        'totalprice' => $totalprice
      ]);
      if ($res) return $this->pdo->lastInsertId();
      else return false;

    } catch (PDOExeption $e) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

  public function get($id)
  {
    try {
      $query = "SELECT * FROM purchases WHERE id=$id";
      $res = $this->pdo->query($query);
      if ($res) return $res->fetch();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

  public function getAll()
  {
    try {
      $query = "SELECT * FROM purchases";
      $res = $this->pdo->query($query);
      if ($res) return $res->fetchAll();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

  public function set($id, $name, $family,
                      $address, $pos_menu,
                      $type_pay, $type_delivery,
                      $phone,
                      $message, $totalprice)
  {
    try {
      $query = "UPDATE purchases SET
      name=:name, family=:family, address=:address,
      pos_menu=:pos_menu, type_pay=:type_pay,
      type_delivery=:type_delivery, phone=:phone,
      message=:message, totalprice=:totalprice WHERE id=:id";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute([
        'name' => $name, 'family' => $family,
        'address' => $address, 'pos_menu' => $pos_menu,
        'type_pay' => $type_pay, 'type_delivery' => $type_delivery,
        'phone' => $phone, 'message' => $message,
        'totalprice' => $totalprice, 'id' => $id
      ]);
      if ($res) return true;
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

  public function delete($id)
  {
    try {
      $query = "DELETE FROM purchases WHERE id=:id";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute(['id' => $id]);
      if ($res) return true;
      else false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }
}
