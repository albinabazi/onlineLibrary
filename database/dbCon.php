
<?php

$conn = new mysqli('localhost', 'root', '', 'test2222');
if($conn->connect_error){
   die("Connection failed: " . $conn->connect_error);
}

?>