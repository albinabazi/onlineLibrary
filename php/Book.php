<?php 
require_once __DIR__ . '/../database/dbCon.php';


class Book{
    private $conn;

    public function __construct($conn) {
        $this->conn = $conn;
    }

     public function addBook($title, $authorId, $genreId, $isbn, $description, $price, $image, $createdBy, $updatedBy) {
        $sql = "INSERT INTO book (title, author_id, genre_id, isbn, description, price, image, created_by, updated_by) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        $stmt = $this->conn->prepare($sql);
        $stmt->execute([$title, $authorId, $genreId, $isbn, $description, $price, $image, $createdBy, $updatedBy]);
        return $stmt->rowCount() > 0; // Return true if at least one row was affected
    }


    public function getAllBooks() {
        // Prepare SQL statement to fetch all books
        $sql = "SELECT * FROM book";
        $result = $this->conn->query($sql);
        // Check if query was successful
        if ($result) {
            // Fetch all rows as an associative array
            return $result->fetch_all(MYSQLI_ASSOC);
        } else {
            // Handle query error
            // You might want to log the error or handle it appropriately
            return [];
        }
    }

}

// Usage example:
// $bookService = new BookService($db);
// $bookService->addBook("Book Title", 1, 2, "ISBN123", "Book description", 19.99);
// $books = $bookService->getAllBooks();
?>
