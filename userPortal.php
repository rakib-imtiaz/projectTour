<?php
session_start();

if (!isset($_SESSION["email"])) {
    header("Location: index.html");
    exit();
}

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "touron";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$email = $_SESSION["email"];

$sql = "SELECT * FROM sign_up WHERE email = '$email'";
$result = $conn->query($sql);

if ($result->num_rows == 1) {
    $row = $result->fetch_assoc();
    $name = $row["Name"];
    $email = $row["Email"];
    $phone = $row["Phone_Number"];
    // Add more fields if needed

    // Display the user data
    ?>
    <!DOCTYPE html>
    <html>
    <head>
        <title>User Portal</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background: url("background1.jpg") center/cover, url("image.gif") center/cover;
                margin: 0;
                padding: 20px;
            }
            .container {
                max-width: 500px;
                margin: 0 auto;
                padding: 20px;
                background-color: rgba(255, 255, 255, 0.8);
                border-radius: 5px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
            }
            h1 {
                color: #333;
                text-align: center;
                margin-bottom: 20px;
            }
            p {
                margin: 10px 0;
            }
            .book-now-button {
                display: block;
                width: 95%;
                padding: 12px;
                background-color: #4CAF50;
                color: #fff;
                text-decoration: none;
                border: none;
                border-radius: 5px;
                text-align: center;
                margin-top: 20px;
                transition: background-color 0.3s ease;
            }
            .book-now-button:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Welcome to the User Portal</h1>
            <p><strong>Name:</strong> <?php echo $name; ?></p>
            <p><strong>Email:</strong> <?php echo $email; ?></p>
            <p><strong>Phone:</strong> <?php echo $phone; ?></p>
            <!-- Add more fields if needed -->
            <a href="bookNow.html" class="book-now-button">Book Now</a>
            <a href="AddTransportation.html" class="book-now-button">Add Transportation</a>
            <a href="AddHotel.html" class="book-now-button">Add Hotel</a>
        </div>
    </body>
    </html>
    <?php
} else {
    echo "User data not found";
}

$conn->close();
?>
