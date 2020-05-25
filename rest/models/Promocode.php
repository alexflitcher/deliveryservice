<?php
/**
* Работа с промокодами
*
* Класс для работы с промокодами
*
* @author Alex Flitcher <alexflitcher@riseup.net>
* @version v0.1
* @category core
* @license https://www.gnu.org/licenses/gpl-3.0.ru.html
*
* @package DeliveryService
* @subpackage DeliveryService\Core\Promocode
*/

namespace DeliveryService\Core;


class Promocode
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
  * @method integer|bool add($name, $dateadd, $datedelete, $adder, $category) <добавляет запись>
  * @param string $name <промокод>
  * @param string $dateadd <дата добавления>
  * @param string $datedelete <дата удаления>
  * @param string $adder <ник добавляющего>
  * @param string $category <категория действия промокода>
  */
  public function add($name, $dateadd,
                      $datedelete, $adder,
                      $category)
  {
    try {
      $query = "INSERT INTO promocodes VALUES(NULL, :name, :dateadd,
                                              :datedelete, :adder,
                                              :category)";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute([
        'name' => $name, 'dateadd' => $dateadd, 'datedelete' => $datedelete,
        'adder' => $adder, 'category' => $category
      ]);

      if ($res) return $this->pdo->lastInsertId();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }


  /**
  * @method array|bool get($id) <получает запись>
  * @param integer $id <id промокода>
  */
  public function get($id)
  {
    try {
      $query = "SELECT * FROM promocodes WHERE id=$id";
      $res = $this->pdo->query($query);
      if ($res) return $res->fetch();
      else return false;
    } catch (PDOExeption $e) {
        die("Произошла ошибка: " . $e->getMessage());
    }
  }

  /**
  * @method array|bool getAll() <получает все записи>
  */
  public function getAll()
  {
    try {
      $query = "SELECT * FROM promocodes";
      $res = $this->pdo->query($query);
      if ($res) return $res->fetchAll();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

  /**
  * @method bool set($id, $name, $dateadd, $datedelete, $adder, $category) <редактирует запись>
  * @param integer $id <id промокода>
  * @param string $name <промокод>
  * @param string $dateadd <дата добавления>
  * @param string $datedelete <дата удаления>
  * @param string $adder <ник добавляющего>
  * @param string $category <категория действия промокода>
  */
  public function set($id, $name, $dateadd, $datedelete, $adder, $category)
  {
    try {
      $query = "UPDATE promocodes SET name=:name, dateadd=:dateadd,
                datedelete=:datedelete, adder=:adder, category=:category WHERE id=:id";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute([
        'id' => $id,
        'name' => $name, 'dateadd' => $dateadd, 'datedelete' => $datedelete,
        'adder' => $adder, 'category' => $category
      ]);
      if ($res) return true;
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

  /**
  * @method array|bool delete($id) <удаляет запись>
  * @param integer $id <id промокода>
  */
  public function delete($id) {
    try {
      $query = "DELETE FROM promocodes WHERE id=:id";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute(['id' => $id]);
      if ($res) return true;
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

}
