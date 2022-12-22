<?php

session_start();
 $name=$_POST["name"];
 $phone=$_POST["phone"];
 $email=$_POST["email"];
 $subject=$_POST["subject"];
 $messege=$_POST["messege"];
 
$conn = new mysqli("localhost","root","","stockify");

$sql = "INSERT INTO feedback VALUES ('$name','$phone', '$email','$subject','$messege')";

if ($conn->query($sql) === TRUE) {
    header('Location: contact-us.php');
        exit;
} else {
    $msg = "Error: " . $sql . "<br>" . $conn->error . "</>";
    $_SESSION["error"] = $msg;
    header("Location:contact-us.php");

}

$conn->close();

 ?>