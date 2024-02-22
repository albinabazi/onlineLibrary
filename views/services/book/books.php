<?php

require_once '../../../database/dbCon.php';
require_once '../../../php/Book.php';

$bookService = new Book($conn);

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['submit'])) {
    $isbn = $_POST['isbn'];
    $title = $_POST['title'];
    $authorId = $_POST['author_id'];
    $genreId = $_POST['genre_id'];
    $description = $_POST['description'];
    $price = $_POST['price'];
    $image = isset($_POST['image']) ? $_POST['image'] : null;
    $createdBy = 1; // Assuming a default value for createdBy
    $updatedBy = 1; // Assuming a default value for updatedBy

    // Add book to the database
    $success = $bookService->addBook($title, $authorId, $genreId, $isbn, $description, $price, $image, $createdBy, $updatedBy);
    if ($success) {
        echo "Book added successfully!";
    } else {
        echo "Failed to add book.";
    }
}

// Fetch all books after adding
$books = $bookService->getAllBooks();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Management</title>
</head>
<body>

<div class="container">
    <div class="row justify-content-center align-items-center p-3 m-3">
        <div class="d mb-5">
            <table class="table">
                <thead class="table-dark">
                    <tr>
                        <th>Book ID</th>
                        <th>ISBN</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Author ID</th>
                        <th>Genre ID</th>
                        <th>Image</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($books as $book): ?>
                    <tr>
                        <td><?php echo isset($book['book_id']) ? $book['book_id'] : ''; ?></td>
                        <td><?php echo isset($book['isbn']) ? $book['isbn'] : ''; ?></td>
                        <td><?php echo isset($book['title']) ? $book['title'] : ''; ?></td>
                        <td><?php echo isset($book['description']) ? $book['description'] : ''; ?></td>
                        <td><?php echo isset($book['price']) ? $book['price'] : ''; ?></td>
                        <td><?php echo isset($book['author_id']) ? $book['author_id'] : ''; ?></td>
                        <td><?php echo isset($book['genre_id']) ? $book['genre_id'] : ''; ?></td>
                        <td><?php echo isset($book['image']) ? $book['image'] : ''; ?></td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        <div class="bg-secondary p-5 pb-1 pt-1 m-3 mb-5 mt-5" style="border-radius: 10px; margin-top: 85px !important;">
            <h1 class="m-4 text-center mt-4">Add Book</h1>
            <div class="justify-content-center">
                <form method="POST" action="books.php">
                    <div class="row g-3">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="isbn">ISBN:</label>
                                <input id="isbn" class="form-control" type="text" name="isbn">
                            </div>
                            <div class="form-group">
                                <label for="title">Title:</label>
                                <input id="title" class="form-control" type="text" name="title">
                            </div>
                            <div class="form-group">
                                <label for="description">Description:</label>
                                <textarea id="description" class="form-control" name="description" rows="6" style="resize: none;"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="price">Price:</label>
                                <input id="price" class="form-control" type="number" name="price">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="author_id">Author ID:</label>
                                <input id="author_id" class="form-control" type="number" name="author_id">
                            </div>
                            <div class="form-group">
                                <label for="genre_id">Genre ID:</label>
                                <input id="genre_id" class="form-control" type="number" name="genre_id">
                            </div>
                            <div class="form-group">
                                <label for="image">Image:</label>
                                <input id="image" class="form-control" type="text" name="image">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <button id="submit" class="btn btn-primary m-2" type="submit" name="submit">Add Book</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
