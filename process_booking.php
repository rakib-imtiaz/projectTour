<?php

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "touron";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
else{
    echo("conntected");
}
$destination = $_POST["destination"];
$num_persons = $_POST["num_persons"];
$arrival_date = $_POST["arrival_date"];
$leaving_date = $_POST["leaving_date"];
$details = $_POST["details"];

echo "Destination: " . $destination . "<br>";
echo "Number of persons: " . $num_persons . "<br>";
echo "Arrival date: " . $arrival_date . "<br>";
echo "Leaving date: " . $leaving_date . "<br>";

$sql = "INSERT INTO bookings (destination, num_persons, arrival_date, leaving_date, details) 
        VALUES ('$destination', '$num_persons', '$arrival_date', '$leaving_date', '$details')";


if ($conn->query($sql) === TRUE) {
  
  echo "Hoted Aded successful";

  ?>
	<script>
		alert('Hotel added successful');
	</script>
	
	<?php
  header("Location: userPortal.php");
  exit(); 
  
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

?>
