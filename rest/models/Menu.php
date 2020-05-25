<?php

namespace DeliveryService\Core;

class Menu
{
  private $pdo;

  public function __construct($pdo)
  {
    $this->pdo = $pdo;
  }

  public function add($name, $price, $rest_id, $catalog_id, $description, $img)
  {
    try {
      $query = "INSERT INTO menu VALUES (
        NULL, :name, :price, :rest_id, :catalog_id, :description, :img
      )";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute(['name'        => $name,
                            'price'       => $price,
                            'rest_id'     => $rest_id,
                            'catalog_id'  => $catalog_id,
                            'description' => $description,
                            'img'         => $img]);
      if ($res) return $this->pdo->lastInsertId();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  public function get($id)
  {
    try {
      $query = "SELECT * FROM menu WHERE id=$id";
      $res = $this->pdo->query($query);
      if ($res) return $res->fetch();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  public function getAll()
  {
    try {
      $query = "SELECT * FROM menu";
      $res = $this->pdo->query($query);
      if ($res) return $res->fetchAll();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  public function getLimit($min, $max) {
    try {
      $query = "SELECT * FROM menu LIMIT $min, $max";
      $res = $this->pdo->query($query);
      if ($res) return $res->fetchAll();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  public function getMenuByIdRest($id) {
    try {
      $query = "SELECT * FROM menu WHERE rest_id='$id'";
      $res = $this->pdo->query($query);
      if ($res) return $res->fetchAll();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  public function set($id, $name, $price, $rest_id, $catalog_id, $description, $img)
  {
    try {
      $query = "UPDATE menu SET name=:name, price=:price,
                                rest_id=:rest_id,
                                catalog_id=:catalog_id,
                                description=:description,
                                img=:img
                            WHERE id=:id";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute(['id' => $id,
                            'name' => $name,
                            'price' => $price,
                            'rest_id' => $rest_id,
                            'catalog_id' => $catalog_id,
                            'description' => $description,
                            'img' => $img]);

    if ($res) return true;
    else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  public function delete($id)
  {
    try {
      $query = "DELETE FROM menu WHERE id=:id";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute(['id' => $id]);
      if ($res) return true;
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }
}
