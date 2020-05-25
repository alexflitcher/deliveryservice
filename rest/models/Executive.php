<?php
/**
* Работа с сотрудниками
*
* Класс для работы с сотрудниками
*
* @author Alex Flitcher <alexflitcher@riseup.net>
* @version v0.1
* @category core
* @license https://www.gnu.org/licenses/gpl-3.0.ru.html
*
* @package DeliveryService
* @subpackage DeliveryService\Core\Executive
*/


namespace DeliveryService\Core;

class Executive
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
  * @method integer|bool add($name, $family, $nick, $phone, $email, $password, $position) <добавляет запись>
  * @param string $name <имя сотрудника>
  * @param string $family <фамилия сотрудника>
  * @param string $nick <ник сотрудника>
  * @param string $phone <телефон сотрудника>
  * @param string $email <email сотрудника>
  * @param string $password <пароль в зашифрованном виде>
  * @param string $position <должность сотрудника>
  */
  public function add($name, $family, $nick,
                      $phone, $email, $password,
                      $position) {
  try {
  $query = "INSERT INTO executives VALUES(
    NULL, :name, :family, :nick, :phone,
    :email, :password, :position
  )";

  $fix = $this->pdo->prepare($query);
  $res = $fix->execute([
    'name' => $name, 'family' => $family,
    'nick' => $nick, 'phone' => $phone,
    'email' => $email, 'password' => $password,
    'position' => $position
  ]);
  if ($res) return $this->pdo->lastInsertId();
  else return false;

    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  /**
  * @method array|bool get($id) <получает запись>
  * @param integer $id <id сотрудника>
  */
  public function get($id) {
    try {
      $query = "SELECT * FROM executives WHERE id=$id";
      $res = $this->pdo->query($query);
      if ($res) return $res->fetch();
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  /**
  * @method array|bool getAll() <получает запись>
  */
  public function getAll() {
    try {
      $query = "SELECT * FROM executives";
      $res = $this->pdo->query($query);
      if ($res) return $res->fetchAll();
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  /**
  * @method bool set($id, $name, $family, $nick, $phone, $email, $password, $position) <редактирует запись>
  * @param integer $id <id сотрудника>
  * @param string $name <имя сотрудника>
  * @param string $family <фамилия сотрудника>
  * @param string $nick <ник сотрудника>
  * @param string $phone <телефон сотрудника>
  * @param string $email <email сотрудника>
  * @param string $password <пароль в зашифрованном виде>
  * @param string $position <должность сотрудника>
  */
  public function set($id, $name, $family, $nick,
                      $phone, $email, $password,
                      $position) {
    try {
      $query = "UPDATE executives SET
                name=:name, family=:family,
                nick=:nick, phone=:phone, email=:email,
                password=:password, position=:position
                WHERE id=:id";
     $fix = $this->pdo->prepare($query);
     $res = $fix->execute([
           'id' => $id,'name' => $name, 'family' => $family,
          'nick' => $nick, 'phone' => $phone,
          'email' => $email, 'password' => $password,
          'position' => $position
                ]);
      if ($res) return true;
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка" . $e->getMessage());
    }
  }

  /**
  * @method bool delete($id) <удаляет запись>
  * @param integer $id <id сотрудника>
  */
  public function delete($id) {
    try {
      $query = "DELETE FROM executives WHERE id=:id";
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
