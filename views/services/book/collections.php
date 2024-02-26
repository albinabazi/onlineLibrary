<?php

require_once '../../../database/dbCon.php';
require_once '../../../php/Collection.php';

$collectionsService = new Collection($conn);

$collections = $collectionsService->getAllCollections();
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
                            <th>Book</th>
                            <th>User ID</th>
                            <th>User</th>

                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($collections as $collection): ?>
                        <tr>
                            <td><?php echo isset($collection['book_id']) ? $collection['book_id'] : ''; ?></td>
                            <td><?php echo isset($collection['book_title']) ? $collection['book_title'] : ''; ?></td>
                            <td><?php echo isset($collection['user_id']) ? $collection['user_id'] : ''; ?></td>
                            <td><?php echo isset($collection['user_name']) ? $collection['user_name'] : ''; ?></td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>