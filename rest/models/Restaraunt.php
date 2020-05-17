<?php
/**
* Работа с ресторанами
*
* Класс для работы с ресторанами
*
* @author Alex Flitcher <alexflitcher@riseup.net>
* @version v0.1
* @category core
* @license https://www.gnu.org/licenses/gpl-3.0.ru.html
*
* @package DeliveryService
* @subpackage DeliveryService\Restaraunt
*/

namespace DeliveryService;

class Restaraunt
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
  * @method integer|bool add($name, $director, $address, $phone) <добавляет запись>
  * @param string $name <имя ресторана>
  * @param string $director <директор ресторана>
  * @param string $address <адрес ресторан>
  * @param string $phone <телефон ресторана>
  */
  public function add($name, $director,
                      $address, $phone)
  {
    try {
      $query = "INSERT INTO restaraunts VALUES(
        NULL,
        :name,
        :director,
        :address,
        :phone
      )";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute(['name'     => $name,
                            'director' => $director,
                            'address'  => $address,
                            'phone'    => $phone]);
      if ($res) return $this->pdo->lastInsertId();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  /**
  * @method array|bool get($id) <получает запись>
  * @param integer $id <id ресторана>
  */
  public function get($id)
  {
    try {
      $query = "SELECT * FROM restaraunts
                WHERE id=$id";
      $res = $this->pdo->query($query);
      if ($res) return $res->fetch();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  /**
  * @method array|bool getAll() <получает все записи>
  */
  public function getAll()
  {
    try {
      $query = "SELECT * FROM restaraunts";
      $res = $this->pdo->query($query);
      if ($res) return $res->fetchAll();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  /**
  * @method integer|bool set($id, $name, $director, $address, $phone) <редактирует запись>
  * @param integer $id <id ресторана>
  * @param string $name <имя ресторана>
  * @param string $director <директор ресторана>
  * @param string $address <адрес ресторан>
  * @param string $phone <телефон ресторана>
  */
  public function set($id, $name, $director,
                      $address, $phone)
  {
    try {
      $query = "UPDATE restaraunts
                SET name=:name, director=:director,
                    address=:address, phone=:phone";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute(['name' => $name,
                            'director' => $director,
                            'address' => $address,
                            'phone' => $phone]);
      if ($res) return true;
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  /**
  * @method array|bool delete($id) <удаляет запись>
  * @param integer $id <id ресторана>
  */
  public function delete($id)
  {
    try {
      $query = "DELETE FROM restaraunts WHERE id=:id";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute(['id' => $id]);
      if ($res) return true;
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }
}
