<?php

namespace DeliveryService\Core;
require_once 'trait.php';

class Restrate
{
    use Constr;

    public function add($id_user, $id_rest, $reply, $updated, $message)
    {
      try {
        // a making query to mysql
        $query = "INSERT INTO restrate VALUES(NULL, :id_user, :id_rest,
                                              :reply, :updated,
                                              :message)";
        $fix   = $this->pdo->prepare($query);
        $res   = $fix->execute([
          'id_user' => $id_user,
          'reply'   => $reply,
          'updated' => $updated,
          'message' => $message,
          'id_rest' => $id_rest,
        ]);
        if ($res) return $this->pdo->lastInsertId();
        else return false;
      } catch (PDOException $e) {
        die("Произошла ошибка: " . $e->getMessage());
      }
    }

    public function get($id)
    {
      try {
        $query = "SELECT * FROM restrate WHERE id=:id";
        $fix   = $this->pdo->prepare($query);
        $res   = $fix->execute([
          'id' => $id,
        ]);
        if ($res) return $fix->fetch();
        else return false;
      } catch (PDOException $e) {
        die("Произошла ошибка: " . $e->getMessage());
      }
    }

    public function getAllReples($id)
    {
      try {
        $query = "SELECT * FROM restrate WHERE reply=:id";
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

    public function getByRestId($id)
    {
      try {
        $query = "SELECT * FROM restrate WHERE id_rest=:id";
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
        $query = "SELECT * FROM restrate";
        $res   = $this->pdo->query($query);
        if ($res) return $res->fetchAll();
        else return false;
      } catch (PDOException $e) {
        die("Произошла ошибка: " . $e->getMessage());
      }
    }

    public function set($id, $id_user, $id_rest, $reply, $updated, $message)
    {
      try {
        $query = "UPDATE restrate SET id_user=:id_user, id_rest=:id_rest,
                                      reply=:reply, updated=:updated,
                                      message=:message
                                  WHERE id=:id";
        $fix   = $this->pdo->prepare($query);
        $res   = $fix->execute([
          'id_user' => $id_user,
          'reply'   => $reply,
          'updated' => $updated,
          'message' => $message,
          'id_rest' => $id_rest,
          'id'      => $id,
        ]);
        if ($res) return true;
        else return false;
      } catch (PDOException $e) {
        die("Произошла ошибка: " . $e->getMessage());
      }
    }

    public function delete($id)
    {
      try {
        $query = "DELETE FROM restrate WHERE id=:id";
        $fix   = $this->pdo->prepare($query);
        $res   = $fix->execute([
          'id' => $id
        ]);
        if ($res) return true;
        else return false;
      } catch (PDOException $e) {
        die("Произошла ошибка: " . $e->getMessage());
      }
    }
}
