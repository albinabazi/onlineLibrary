<?php 
require_once __DIR__ . '/../database/dbCon.php';


class Book{
    private $conn;

    public function __construct($conn) {
        $this->conn = $conn;
    }
    
    public function getAllBooks() {
        $sql = "SELECT b.*, a.first_name AS author_first_name, a.last_name AS author_last_name, g.genre_name 
                FROM book b 
                INNER JOIN author a ON b.author_id = a.author_id 
                INNER JOIN genre g ON b.genre_id = g.genre_id";
        $result = $this->conn->query($sql);

        if ($result) {
            return $result->fetch_all(MYSQLI_ASSOC);
        } else {
            return [];
        }
    } 

}

?>
