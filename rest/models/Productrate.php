<?php

namespace DeliveryService\Core;

require_once 'trait.php';

class Productrate
{
    use Constr;

    public function add($id_user, $id_product, $updated, $message)
    {
        try {
            $query = "INSERT INTO productrate VALUES(NULL, :id_user,
                                                     :id_product,
                                                     :updated, :message)";
            $fix = $this->pdo->prepare($query);
            $res = $fix->execute([
               'id_user'    => $id_user,
               'id_product' => $id_product,
               'updated'    => $updated,
               'message'    => $message,
            ]);
            if ($res) return $this->pdo->lastInsertId();
            return false;
        } catch(PDOException $e) {
            die("Произошла ошибка: " . $e->getMessage());
        }
    }

    public function get($id)
    {
        try {
            $query = "SELECT * FROM productrate WHERE id=:id";
            $fix = $this->pdo->prepare($query);
            $res = $fix->execute([
              'id' => $id,
            ]);
            if ($res) return $fix->fetch();
            return false;
        } catch(PDOException $e) {
            die("Произошла ошибка: " . $e->getMessage());
        }
    }

    public function getByRestId($id)
    {
        try {
            $query = "SELECT * FROM productrate WHERE id_product=:id";
            $fix   = $this->pdo->prepare($query);
            $res   = $fix->execute([
              'id' => $id,
            ]);
            if ($res) return $fix->fetchAll();
            else return false;
        } catch (PDOException $e) {
            die("Произошла ошибка: " . $e->getMessage());
        }
    }

    public function getAll()
    {
        try {
            $query = "SELECT * FROM productrate";
            $res = $this->pdo->query($query);
            if ($res) return $res->fetchAll();
            return false;
        } catch(PDOException $e) {
            die("Произошла ошибка: " . $e->getMessage());
        }
    }

    public function set($id, $id_user, $id_product, $updated, $message)
    {
        try {
            $query = "UPDATE productrate SET id_user=:id_user,
                                             id_product=:id_product,
                                             updated=:updated,
                                             message=:message
                                         WHERE id=:id";
            $fix = $this->pdo->prepare($query);
            $res = $fix->execute([
              'id'         => $id,
              'id_user'    => $id_user,
              'id_product' => $id_product,
              'updated'    => $updated,
              'message'    => $message,
            ]);
            if ($res) return true;
            return false;
        } catch(PDOException $e) {
            die("Произошла ошибка: " . $e->getMessage());
        }
    }

    public function delete($id)
    {
        try {
            $query = "DELETE FROM productrate WHERE id=:id";
            $fix = $this->pdo->prepare($query);
            $res = $fix->execute([
              'id' => $id,
            ]);
            if ($res) return true;
            return false;
        } catch(PDOException $e) {
            die("Произошла ошибка: " . $e->getMessage());
        }
    }
}
