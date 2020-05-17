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
* @subpackage DeliveryService\Restaraunt
*/
namespace DeliveryService;

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
