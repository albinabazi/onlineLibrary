<?php 
require_once __DIR__ . '/../database/dbCon.php';


class Collection{
    private $conn;

    public function __construct($conn) {
        $this->conn = $conn;
    }

    public function getAllCollections() {
        $sql = "SELECT bc.*, b.title AS book_title, u.name AS user_name 
                FROM book_collections bc 
                INNER JOIN book b ON bc.book_id = b.book_id 
                INNER JOIN users u ON bc.user_id = u.user_id";
        $result = $this->conn->query($sql);
    
        if ($result) {
            return $result->fetch_all(MYSQLI_ASSOC);
        } else {
            return [];
        }
    }
    
}

?>
