<?php
session_start(); // Start the session (make sure this is added at the top of the file)

$servername ="localhost";
$username = "root";
$password = "root";
$dbname = "touron";

$conn = new mysqli($servername, $username, $password, $dbname);



if($conn->connect_error){
	die("connection failed");
}
else{
	
}

$email = $_POST["email"];
$password = $_POST["password"];


$sql = mysqli_query($conn, "SELECT count(*) as total from sign_up WHERE Email = '".$email."' and 
	Password = '".$password."'");

$row = mysqli_fetch_array($sql);
echo "row:".$row;

if($row["total"] > 0){

	$_SESSION["email"] = $email;
    header("Location: userPortal.php");
	?>
	<script>
		alert('Login successful');
	</script>
	
	<?php
		exit();

}
else{
	?>
	<script>
		alert('Login failed');
	</script>
	<?php
}








?>