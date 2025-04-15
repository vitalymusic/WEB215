<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "web315_project";

// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
// echo "Connected successfully";
// print_r($conn);
?>