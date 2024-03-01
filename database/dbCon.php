
<?php

$conn = new mysqli('localhost', 'root', '', 'onlineLibraryDB');
if($conn->connect_error){
   die("Connection failed: " . $conn->connect_error);
}

?>