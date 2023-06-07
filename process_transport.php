<?php

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "touron";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} else {
    echo ("connected");
}

$transID = $_POST["transID"];
$transType = $_POST["transType"];
$transName = $_POST["transName"];
$transPrice = $_POST["transPrice"];

echo "Transport Type: " . $transType . "<br>";
echo "Transport Name: " . $transName . "<br>";
echo "Transport Price: " . $transPrice . "<br>";

$sql = "INSERT INTO transportation (Trans_ID,Trans_Type, Trans_Name, Trans_Price) 
        VALUES ('$transID','$transType', '$transName', '$transPrice')";

if ($conn->query($sql) === TRUE) {
    echo "Transportation added successfully";
    ?>
    <script>
        alert('Transportation added successfully');
    </script>

    header("userPortal.php")
    <?php
    header("Location: index.html");
    exit();
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

?>
