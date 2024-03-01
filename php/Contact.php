<?php 
require_once __DIR__ . '/../database/dbCon.php';


class Contact{
    private $conn;

    public function __construct($conn) {
        $this->conn = $conn;
    }

    public function getAllContactMessages() {
        $sql = "SELECT * from contact_messages";
        $result = $this->conn->query($sql);
    
        if ($result) {
            return $result->fetch_all(MYSQLI_ASSOC);
        } else {
            return [];
        }
    }
}

?>
