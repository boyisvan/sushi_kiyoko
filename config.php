<?php
$username = 'root';
$password = '';
$servername = 'localhost';
$dbname = 'sushi';


$conn = new mysqli($servername, $username, $password, $dbname);

// Kiểm tra kết nối
if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}
