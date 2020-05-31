<?php
/**
* Работа с верификацией
*
* Класс для работы с верификацией
*
* @author Alex Flitcher <alexflitcher@riseup.net>
* @version v0.1
* @category core
* @license https://www.gnu.org/licenses/gpl-3.0.ru.html
*
* @package DeliveryService
* @subpackage DeliveryService\Core\Verification
*/

namespace DeliveryService\Core;

class Verification {
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
  * @method integer|bool add($id_user, $url) <добавляет запись>
  * @param integer $id_user <id пользователя>
  * @param string $url <hash верификации>
  */
  public function add($id_user, $url) {
    try {
      $query = "INSERT INTO verifications VALUES(NULL, :id_user, :url)";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute([
        'id_user' => $id_user,
        'url'     => $url
      ]);
      if ($res) return $this->pdo->lastInsertId();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  /**
  * @method array|bool get($id) <выдаёт запись>
  * @param integer $id <id записи>
  */
  public function get($id) {
    try {
      $query = "SELECT * FROM verifications WHERE id=$id";
      $res = $this->pdo->query($query);
      if ($res) return $res->fetch();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  /**
  * @method array|bool getByHash($hash) <выдаёт запись по хэшу>
  * @param string $hash <хэш пользователя>
  */
  public function getByHash($hash) {
    try {
      $query = "SELECT * FROM verifications WHERE url='$hash'";
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
  public function getAll() {
    try {
      $query = "SELECT * FROM verifications";
      $res = $this->pdo->query($query);
      if ($res) return $res->fetchAll();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  /**
  * @method bool set($id, $name) <редактирует запись>
  * @param integer $id <id записи>
  * @param integer $id_user <id пользователя>
  * @param string $url <hash верификации>
  */
  public function set($id, $id_user, $url) {
    try {
      $query = "UPDATE verifications SET id_user=:id_user,
                                         url=:url WHERE id=:id";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute([
        'id_user' => $id_user,
        'url'     => $url,
        'id'      => $id
      ]);
      if ($res) return true;
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  /**
  * @method bool add() <удаляет запись>
  * @param integer $id <id записи>
  */
  public function delete($id) {
    try {
      $query = "DELETE FROM verifications WHERE id=:id";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute([
        'id' => $id
      ]);
      if ($res) return true;
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }
}
