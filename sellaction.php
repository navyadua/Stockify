<?php
session_start();
if(isset($_SESSION["username"])){
    $username = $_SESSION["username"];
}

 $name = $_POST["name"];
 $date = date('Y/m/d');
 $amount = $_POST["price"];
 $quantity = $_POST["quantity"];
 $target = $_POST["target"];
 $disclosed_quantity = $_POST["disclosed_quantity"];
 $buyid = $_POST["buyid"];

$conn = new mysqli("localhost","root","","stockify");

$sql = "INSERT INTO sell_transactions (user_id , name , date , buy_amount_ , quantity , target , disclosed_quantity ) 
                                        VALUES ('$username','$name','$date','$amount','$quantity','$target','$disclosed_quantity')";

$sql2 = "UPDATE buy_transactions SET quantity = quantity - $quantity where buytransaction_id = '".$buyid."'";

$sql3 = "DELETE from buy_transactions WHERE quantity <= 0";

if (($conn->query($sql) === TRUE )&& ($conn->query($sql2) === TRUE )&& ($conn->query($sql3) === TRUE )){
    header('Location: portfolio.php');
        exit;
} else {
    $msg = "Error: " . $sql . "<br>" . $conn->error . "</>";
    header("Location:sell.php");

}

$conn->close();
 ?>