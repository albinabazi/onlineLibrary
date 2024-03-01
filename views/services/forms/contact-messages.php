<?php

require_once '../../../database/dbCon.php';
require_once '../../../php/Contact.php';

$contactService = new Contact($conn);

$contactMessages = $contactService->getAllContactMessages();

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
                            <th>Message ID</th>
                            <th>Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Message</th>
                            <th>Createt At</th>

                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($contactMessages as $message): ?>
                        <tr>
                            <td><?php echo isset($message['message_id']) ? $message['message_id'] : ''; ?></td>
                            <td><?php echo isset($message['name']) ? $message['name'] : ''; ?></td>
                            <td><?php echo isset($message['lastname']) ? $message['lastname'] : ''; ?></td>
                            <td><?php echo isset($message['email']) ? $message['email'] : ''; ?></td>
                            <td><?php echo isset($message['message']) ? $message['message'] : ''; ?></td>
                            <td><?php echo isset($message['created_at']) ? $message['created_at'] : ''; ?></td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>