<?php
/**
* Работа с заказами
*
* Класс для работы с заказами
*
* @author Alex Flitcher <alexflitcher@riseup.net>
* @version v0.1
* @category core
* @license https://www.gnu.org/licenses/gpl-3.0.ru.html
*
* @package DeliveryService
* @subpackage DeliveryService\Core\Restaraunt
*/
namespace DeliveryService\Core;

class Purchase
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
  * @method integer|bool add($name, $family, $address, $pos_menu, $type_pay, $type_delivery, $phone, $message, $totalprice) <добавляет запись>
  * @param string $name <имя заказчика>
  * @param string $family <фамилия заказчика>
  * @param string $address <адрес заказчика>
  * @param string $pos_menu <позиции меню>
  * @param string $type_pay <тип оплаты>
  * @param string $type_delivery <тип доставки>
  * @param string $phone <телефон заказчика>
  * @param string $message <сообщение>
  * @param string $totalprice <общая цена>
  */
  public function add($name, $family, $address, $pos_menu,
                      $type_pay, $type_delivery, $phone,
                      $message, $totalprice, $id_user, $date)
  {
    try {
      $query = "INSERT INTO purchases VALUES(
        NULL, :name, :family, :address, :pos_menu,
        :type_pay, :type_delivery, :phone, :message,
        :totalprice, :id_user, :date, 0
      )";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute([
        'name' => $name, 'family' => $family,
        'address' => $address, 'pos_menu' => $pos_menu,
        'type_pay' => $type_pay, 'type_delivery' => $type_delivery,
        'phone' => $phone, 'message' => $message,
        'totalprice' => $totalprice,
        'id_user' => $id_user,
        'date' => $date
      ]);
      if ($res) return $this->pdo->lastInsertId();
      else return false;

    } catch (PDOExeption $e) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

  /**
  * @method array|bool get($id) <выдаёт запись>
  * @param integer $id <id заказа>
  */
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

  public function getByUserId($id) {
    try {
      $query = "SELECT * FROM purchases WHERE id_user=$id";
      $res = $this->pdo->query($query);
      if ($res) return $res->fetchAll();
      else return false;
    } catch (PDOExeption $pdo) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }
  /**
  * @method array|bool getAll() <выдаёт все записи>
  */
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

  /**
  * @method integer|bool add($id, $name, $family, $address, $pos_menu, $type_pay, $type_delivery, $phone, $message, $totalprice) <редактирует запись>
  * @param integer $id <id заказчика>
  * @param string $name <имя заказчика>
  * @param string $family <фамилия заказчика>
  * @param string $address <адрес заказчика>
  * @param string $pos_menu <позиции меню>
  * @param string $type_pay <тип оплаты>
  * @param string $type_delivery <тип доставки>
  * @param string $phone <телефон заказчика>
  * @param string $message <сообщение>
  * @param string $totalprice <общая цена>
  */
  public function set($id, $name, $family,
                      $address, $pos_menu,
                      $type_pay, $type_delivery,
                      $phone,
                      $message, $totalprice, $id_user,
                      $date, $was_pay)
  {
    try {
      $query = "UPDATE purchases SET
      name=:name, family=:family, address=:address,
      pos_menu=:pos_menu, type_pay=:type_pay,
      type_delivery=:type_delivery, phone=:phone,
      message=:message, totalprice=:totalprice,
      id_user=:id_user, was_pay=:was_pay date=:date WHERE id=:id";
      $fix = $this->pdo->prepare($query);
      $res = $fix->execute([
        'name' => $name, 'family' => $family,
        'address' => $address, 'pos_menu' => $pos_menu,
        'type_pay' => $type_pay, 'type_delivery' => $type_delivery,
        'phone' => $phone, 'message' => $message,
        'totalprice' => $totalprice, 'id' => $id,
        'id_user' => $id_user,
        'date' => $date,
        'was_pay' => $was_pay
      ]);
      if ($res) return true;
      else return false;
    } catch (PDOExeption $e) {
      die("Произошла ошибка: " . $e->getMessage());
    }
  }

  /**
  * @method array|bool delete($id) <удаляет запись>
  * @param integer $id <id заказа>
  */
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
