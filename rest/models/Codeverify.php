<?php
namespace DeliveryService\Core;
require_once 'trait.php';

class Codeverify {
  use Constr;

  public function add($id_user, $code, $time_active) {
    try {
      $query = "INSERT INTO codesverify VALUES(NULL, :id_user, :code, :time_active)";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute([
        'id_user' => $id_user,
        'code'    => $code,
        'time_active' => $time_active
      ]);
      if ($res) return $this->pdo->lastInsertId();
      else return false;
    } catch (PDOException $e){
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

  public function generateCode($number) {
    $code = "";
    for ($i = 0; $i < $number; $i++) {
      $code .= mt_rand(0, 9);
    }
    return $code;
  }

  public function get($id) {
    try {
      $query = "SELECT * FROM codesverify WHERE id=$id";
      $res   = $this->pdo->query($query);
      if ($res) return $res->fetch();
      else return false;
    } catch (PDOException $e) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

  public function getByCode($code) {
    try {
      $query = "SELECT * FROM codesverify WHERE code=$code";
      $res   = $this->pdo->query($query);
      if ($res) return $res->fetch();
      else return false;
    } catch (PDOException $e) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

  public function getAll() {
    try {
      $query = "SELECT * FROM codesverify";
      $res   = $this->pdo->query($query);
      if ($res) return $res->fetchAll();
      else return false;
    } catch (PDOException $e){
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

  public function set($id, $id_user, $code, $time_active) {
    try {
      $query = "UPDATE codesverify SET id_user=:id_user, code=:code,
                                       time_active=:time_active
                                   WHERE id=:id";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute([
        'id_user'     => $id_user,
        'code'        => $code,
        'time_active' => $time_active,
        'id'          => $id
      ]);
      if ($res) return true;
      else return false;
    } catch (PDOException $e){
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

  public function delete($id) {
    try {
      $query = "DELETE FROM codesverify WHERE id=:id";
      $fix   = $this->pdo->prepare($query);
      $res   = $fix->execute(['id' => $id]);
      if ($res) return true;
      else return false;
    } catch (PDOException $e){
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

}
