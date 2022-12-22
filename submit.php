<?php
session_start();
 $username=$_POST["username"];
 $password=$_POST["password"];
 $error = "Invalid Credentials";
 

$conn = new mysqli("localhost","root","","stockify");

$sql= "SELECT * FROM user_details WHERE user_id = '$username' AND password = '$password' ";
$result = mysqli_query($conn,$sql);
$check = mysqli_fetch_array($result);
if(isset($check)){
    $_SESSION["username"] = $username;
    header('Location: portfolio.php');
    exit;
}else{
    $_SESSION["error"] = $error;
    header("location: login.php");
//echo 'failure';
}

$conn->close();

 ?>