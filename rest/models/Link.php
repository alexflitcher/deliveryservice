<?php
/**
* Работа с сотрудниками
*
* Класс для работы с ссылками на регестрацию
*
* @author Alex Flitcher <alexflitcher@riseup.net>
* @version v0.3
* @category core
* @license https://www.gnu.org/licenses/gpl-3.0.ru.html
*
* @package DeliveryService
* @subpackage DeliveryService\Core\Link
*/

namespace DeliveryService\Core;
require_once 'trait.php';

class Link
{

    /**
    * Подключение конструктора
    */
    use Constr;

    /**
    * @var string
    */
    private $hash;

    /**
    * @var array
    */
    private const ARR_EN = ['a', 'b', 'c', 'd', 'e', 'f', 'g',
                            'h', 'i', 'j', 'k', 'l', 'm', 'n',
                            'o', 'p', 'q', 'r', 's', 't', 'u',
                            'v', 'w', 'x', 'y', 'z', 'A', 'B',
                            'C', 'D', 'E', 'F', 'G', 'H', 'I',
                            'J', 'K', 'L', 'M', 'N', 'O', 'P',
                            'Q', 'R', 'S', 'T', 'U', 'V', 'W',
                            'X', 'Y', 'Z', '1', '2', '3', '4',
                            '5', '6', '7', '8', '9', '0',];

    /**
    * @method string generateHash($symbols) <генерирует хэш>
    * @param integer $symbols <кол-во знаков в исходном хэшэ>
    */
    final public static function generateHash($symbols)
    {
        $hash = "";

        for($i = 0; $i < $symbols; $i++) {
            $random_let = self::ARR_EN[mt_rand(0, count(self::ARR_EN))];
            $hash .= $random_let;
        }

        return $hash;
    }

    public function add($hash, $ip, $status)
    {
        try {
            $query = "INSERT INTO links VALUES(NULL, :ip, :status)";
            $fix = $this->pdo->prepare($query);
        } catch(PDOException $e) {
            die("Произошла ошибка: " . $e->getMessage());
        }
    }

    public function get($id)
    {
        try {

        } catch(PDOException $e) {
            die("Произошла ошибка: " . $e->getMessage());
        }
    }

    public function getMulti(...$ids)
    {
        try {

        } catch(PDOException $e) {
            die("Произошла ошибка: " . $e->getMessage());
        }
    }

    public function getByHash($hash)
    {
        try {

        } catch(PDOException $e) {
            die("Произошла ошибка: " . $e->getMessage());
        }
    }

    public function getAll()
    {
        try {

        } catch(PDOException $e) {
            die("Произошла ошибка: " . $e->getMessage());
        }
    }

    public function set($id, $hash, $ip, $status)
    {
        try {

        } catch(PDOException $e) {
            die("Произошла ошибка: " . $e->getMessage());
        }
    }

    public function setMulti($params)
    {
        try {

        } catch(PDOException $e) {
            die("Произошла ошибка: " . $e->getMessage());
        }
    }

    public function setAll($hash, $ip, $status)
    {
        try {

        } catch(PDOException $e) {
            die("Произошла ошибка: " . $e->getMessage());
        }
    }

    public function delete($id)
    {
        try {

        } catch(PDOException $e) {
            die("Произошла ошибка: " . $e->getMessage());
        }
    }

    public function deleteMulti(...$ids)
    {
        try {
          return $ids;
        } catch(PDOException $e) {
            die("Произошла ошибка: " . $e->getMessage());
        }
    }

    public function deleteAll()
    {
        try {

        } catch(PDOException $e) {
            die("Произошла ошибка: " . $e->getMessage());
        }
    }
}
