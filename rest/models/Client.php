<?php
/**
* Работа с клиентами
*
* Класс для работы с клиентами
*
* @author Alex Flitcher <alexflitcher@riseup.net>
* @version v0.1
* @category core
* @license https://www.gnu.org/licenses/gpl-3.0.ru.html
*
* @package DeliveryService
* @subpackage DeliveryService\Core\Client
*/

namespace DeliveryService\Core;

class Client
{
  /**
  * @var object
  */
  private $pdo;

  /**
  * @method null
  * @param PDO $pdo <класс PDO>
  */
  public function __construct($pdo)
  {
    $this->pdo = $pdo;
  }

  /**
  * @method integer|bool add($name, $family, $email, $phone, $birthday) <добавляет запись>
  * @param string $name <имя клиента>
  * @param string $family <фамилия клиента>
  * @param string $email <email клиента>
  * @param string $phone <телефое клиента>
  * @param string $birthday <день рождения клиента>
  */
  public function add($name, $family, $email,
                      $phone, $birthday, $verification)
  {
      try {
        $query = "INSERT INTO clients VALUES(
          NULL, :name, :family, :email, :phone,
          :birthday, :verification
        )";

        $load = $this->pdo->prepare($query);
        $res = $load->execute(['name'   => $name,
                             'family' => $family,
                             'email'  => $email,
                             'phone'  => $phone,
                             'birthday'=> $birthday,
                             'verification' => $verification]);

       if ($res) return $this->pdo->lastInsertId();
       else return false;

     } catch (PDOExeption $e) {
       die("Произошла ошибка" . $e->getMessage());
     }
  }

  /**
  * @method array|bool get($id) <получает запись>
  * @param integer $id <id клиента>
  */
  public function get($id)
  {
    try {
      $query = "SELECT * FROM clients WHERE id=$id";
      $res = $this->pdo->query($query);

      if ($res) return $res->fetch();
      else return false;
    } catch (PDOException $e) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

  /**
  * @method array|bool getAll() <получает все записи>
  * @param integer $id <id клиента>
  */
  public function getAll()
  {
    try {
      $query = "SELECT * FROM clients";
      $res = $this->pdo->query($query);

     if ($res) return $res->fetchAll();
     else return false;
    } catch (PDOException $e) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

  public function getByEmail($email) {
    try {
      $query = "SELECT * FROM clients WHERE email='$email'";
      $res = $this->pdo->query($query);

      if ($res) return $res->fetch();
      else return false;
    } catch (PDOException $e) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

  public function getByPhone($phone) {
    try {
      $query = "SELECT * FROM clients WHERE phone='$phone'";
      $res = $this->pdo->query($query);

      if ($res) return $res->fetch();
      else return false;
    } catch (PDOException $e) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

  /**
  * @method bool set($id, $name, $family, $email, $phone, $birthday) <редактирует запись>
  * @param integer $id <id клиента>
  * @param string $name <имя клиента>
  * @param string $family <фамилия клиента>
  * @param string $email <email клиента>
  * @param string $phone <телефое клиента>
  * @param string $birthday <день рождения клиента>
  */
  public function set($id, $name, $family,
                      $email, $phone, $birthday, $verification)
  {
    try {
      $query = "UPDATE clients SET name=:name, family=:family,
                                   email=:email, phone=:phone,
                                   birthday=:birthday
                                   WHERE id=:id";
      $load = $this->pdo->prepare($query);
      $res = $load->execute(['id'       => $id,
                             'name'     => $name,
                             'family'   => $family,
                             'email'    => $email,
                             'phone'    => $phone,
                             'birthday' => $birthday,
                             'verification' => $verification]);
     if ($res) return true;
     else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

  /**
  * @method bool delete() <удаляет запись>
  * @param integer $id <id клиента>
  */
  public function delete($id)
  {
    try {
      $query = "DELETE FROM clients WHERE id=:id";
      $load = $this->pdo->prepare($query);
      $res = $load->execute(['id' => $id]);

      if ($res) return true;
      else return false;
    } catch (PDOException $e) {
        die("Произошла ошибка: " . $e->getMessage());
    }
  }
}
