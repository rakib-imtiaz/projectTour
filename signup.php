<?php

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "touron";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$name = $_POST["name"];
$email = $_POST["email"];
$phone = $_POST["phone"];
$password = $_POST["password"];
// $salt = "codeflix";
// $password_encrypted = sha1($password . $salt);

$sql = "INSERT INTO sign_up (Name, Phone_Number, Email, Password) 
        VALUES ('$name', '$phone', '$email', '$password')";

if ($conn->query($sql) === TRUE) {
    ?>
    <script>
        alert('Signup successful');
        window.location.href = "index.html"; // Redirect to the index page
    </script>
    <?php
} else {
    ?>
    <script>
        alert('Signup failed');
        window.history.back(); // Go back to the previous page
    </script>
    <?php
}

$conn->close();

?>
