
<?php

$conn = new mysqli('localhost', 'root', '', 'onlineLibrary');
if($conn->connect_error){
   die("Connection failed: " . $conn->connect_error);
}

?>