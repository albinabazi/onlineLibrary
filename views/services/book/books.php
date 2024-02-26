<?php

require_once '../../../database/dbCon.php';
require_once '../../../php/Book.php';

$bookService = new Book($conn);

$books = $bookService->getAllBooks();
?>

<style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
        }
        .table th, .table td {
            vertical-align: middle;
        }
        .table thead th {
            background-color: #343a40;
            color: #fff;
        }
</style>

<div class="container">
    <div class="row justify-content-center align-items-center">
        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table table-bordered table-striped">
                    <thead class="thead-dark">
                        <tr>
                            <th>Book ID</th>
                            <th>ISBN</th>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Price</th>
                            <th>Author</th>
                            <th>Genre</th>
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
                            <td><?php echo isset($book['author_first_name']) ? $book['author_first_name'] . ' ' . $book['author_last_name'] : ''; ?></td>
                            <td><?php echo isset($book['genre_name']) ? $book['genre_name'] : ''; ?></td>
                            <td><?php echo isset($book['image']) ? $book['image'] : ''; ?></td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>