<?php
session_start();
if(isset($_SESSION["username"])){
    $username = $_SESSION["username"];
}

 $name = $_POST["name"];
 $date = date('Y/m/d');
 $amount = $_POST["price"];
 $quantity = $_POST["quantity"];
 $stoploss = $_POST["stoploss"];
 $limit_price = $_POST["limprice"];
 $target = $_POST["target"];
 $traling = $_POST["traling"];

$conn = new mysqli("localhost","root","","stockify");

$sql = "INSERT INTO buy_transactions (user_id , name , date , buy_amount_ , quantity , stoploss , limit_price , target , trailing_stoploss ) 
                                        VALUES ('$username','$name','$date','$amount','$quantity','$stoploss','$limit_price','$target','$traling')";

if ($conn->query($sql) === TRUE) {
    header('Location: portfolio.php');
        exit;
} else {
    $msg = "Error: " . $sql . "<br>" . $conn->error . "</>";
    header("Location:buy.php");

}

$conn->close();
 ?>