<?php
session_start();
 $userid=$_POST["username"];
 $email=$_POST["email"];
 $password=$_POST["password"];
 $address=$_POST["address"];
 $phone=$_POST["phone"];
 $name=$_POST["name"];
 $age=$_POST["age"];
 
$conn = new mysqli("localhost","root","","stockify");

$sql = "INSERT INTO user_details VALUES ('$userid','$name', '$age','$phone','$email','$address','$password')";

if ($conn->query($sql) === TRUE) {
    header('Location: login.php');
        exit;
} else {
    $msg = "Error: " . $sql . "<br>" . $conn->error . "</>";
    $_SESSION["error"] = $msg;
    header("Location:login.php");

}

$conn->close();

 ?>