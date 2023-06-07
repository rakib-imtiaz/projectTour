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

$hotel_id = $_POST["hotel_id"];
$hotelName = $_POST["hotel_name"];
$hotelPrice = $_POST["hotel_price"];
$numberOfRooms = $_POST["num_rooms"];
$address = $_POST["address"];
$email = $_POST["email"];
$phoneNumber = $_POST["phone_number"];

echo "Hotel Name: " . $hotelName . "<br>";
echo "Hotel Price: " . $hotelPrice . "<br>";
echo "Number of Rooms: " . $numberOfRooms . "<br>";
echo "Address: " . $address . "<br>";
echo "Email: " . $email . "<br>";
echo "Phone Number: " . $phoneNumber . "<br>";

$sql = "INSERT INTO hotel (Hotel_ID,Hotel_Name, Hotel_Price, Number_Of_Rooms, Address, Email, Phone_Number) 
        VALUES ('$hotel_id','$hotelName', '$hotelPrice', '$numberOfRooms', '$address', '$email', '$phoneNumber')";

if ($conn->query($sql) === TRUE) {
    echo "Hotel added successfully";
    ?>
    <script>
        alert('Hotel added successfully');
    </script>
    header('');
    <?php
    header("Location: index.html");
    exit();
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

?>
