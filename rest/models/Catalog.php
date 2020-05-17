<?php
/**
* Работа с каталогами
*
* Класс для работы с каталогами
*
* @author Alex Flitcher <alexflitcher@riseup.net>
* @version v0.1
* @category core
* @license https://www.gnu.org/licenses/gpl-3.0.ru.html
*
* @package DeliveryService
* @subpackage DeliveryService\Catalog
*/

namespace DeliveryService;

class Catalog
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
  * @method integer|bool add($name) <добавляет запись>
  * @param string $name <имя категории>
  */
  public function add($name)
  {
    try {
      $query = "INSERT INTO catalogs VALUES(
        NULL, :name
      )";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute(['name' => $name]);
      if ($res) return $this->pdo->lastInsertId();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  /**
  * @method array|bool get($id) <выдаёт запись>
  * @param integer $id <id категории>
  */
  public function get($id)
  {
    try {
      $query = "SELECT * FROM catalogs
                WHERE id=$id";
      $res = $this->pdo->query($query);
      if ($res) return $res->fetch();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }
  /**
  * @method array|bool getAll() <выдаёт все записи>
  */
  public function getAll()
  {
    try {
      $query = "SELECT * FROM catalogs";
      $res = $this->pdo->query($query);
      if ($res) return $res->fetchAll();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  /**
  * @method bool set($id, $name) <редактирует запись>
  * @param integer $id <id категории>
  * @param string $name <имя категории>
  */
  public function set($id, $name)
  {
    try {
      $query = "UPDATE catalogs
                SET name=:name
                WHERE id=:id";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute(['id'   => $id,
                            'name' => $name]);
      if ($res) return true;
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  /**
  * @method bool add() <удаляет запись>
  * @param integer $id <id категории>
  */
  public function delete($id)
  {
    try {
      $query = "DELETE FROM catalogs
                WHERE id=:id";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute(['id' => $id]);
      if ($res) return true;
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }
}
