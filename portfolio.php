<?php
  session_start();

  if(isset($_SESSION["username"])){
    $username = $_SESSION["username"];
}
?>
<?php

// Username is root
$user = 'root';
$password = '';

// Database name is gfg
$database = 'stockify';

// Server is localhost with
// port number 3306
$servername='localhost:3306';
$mysqli = new mysqli($servername, $user,
				$password, $database);

// Checking for connections
if ($mysqli->connect_error) {
	die('Connect Error (' .
	$mysqli->connect_errno . ') '.
	$mysqli->connect_error);
}

// SQL query to select data from database
$sql = "SELECT * FROM user_details WHERE user_id = '$username'" ;
$result = $mysqli->query($sql);

$sql2 = "SELECT * FROM buy_transactions WHERE user_id = '$username'" ;
$result2 = $mysqli->query($sql2);

$mysqli->close();
?>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>Portfolio</title>

 
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-574-mexant.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css">
    <link rel="stylesheet" href="prof.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,600&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts1/icomoon/style.css">

    <link rel="stylesheet" href="css1/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css1/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css1/style.css">

<style>
  #logo-image{
    max-width:578px;
    max-height:431px;
    width:115px;
    height:75px;
  }
          table,table th , table td{
            border-bottom: 1px solid #eee;
    margin-bottom: 25px;
    padding-bottom: 25px;
          }
          td , th{
            padding:30px;
          }
          .name{
            color:#ff511a
          }
      .right{
        padding-left:20%;
        padding-top:10%;
      }
      .profile{
        padding-bottom:20%;
      }
      .sidebar{
        width: 50%;
    float: left;
      }
      h3{
        padding:10px;
      }

      button {
    font-size: 14px;
    color: #fff;
    background-color: #ff511a;
    padding: 12px 30px;
    display: inline-block;
    border-radius: 5px;
    font-weight: 500;
    text-transform: capitalize;
    letter-spacing: 0.5px;
    border: none;
    transition: all .3s;
          }

      </style>

  </head>

<body>



  <header class="header-area header-sticky">
      <div class="container">
          <div class="row">
              <div class="col-12">
                  <nav class="main-nav">
                      
                      <a href="index.html" class="logo">
                        <img src="Screenshot_2022-03-04_at_2.42.56_PM-removebg-preview-modified.png" id="logo-image" alt="">
                      </a>
                      
                      <ul class="nav">
                      <li ><a href="home.php">Home</a></li>
                        <li ><a href="stock.php">Stock</a></li>
                        <li ><a href="our-services.html">Learning</a></li>  
                        <li ><a href="portfolio.php">Portfolio</a></li>                 
                        <li ><a href="logout.php">Logout</a></li>
                    </ul>      
                      <a class='menu-trigger'>
                          <span>Menu</span>
                      </a>
                     
                  </nav>
              </div>
          </div>
      </div>
  </header>
  

  <div class="page-heading">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="header-text">
            <h2>You With Us!</h2>
            <div class="div-dec"></div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="wrapper">
    <div class="section">
        <div class="top_navbar"></div>
    </div>
    <div class="sidebar" style="height:1520px;">
        <div class="profile">
            <img src="https://1.bp.blogspot.com/-vhmWFWO2r8U/YLjr2A57toI/AAAAAAAACO4/0GBonlEZPmAiQW4uvkCTm5LvlJVd_-l_wCNcBGAsYHQ/s16000/team-1-2.jpg" alt="profile_picture">
              <!-- PHP CODE TO FETCH DATA FROM ROWS-->
              <?php // LOOP TILL END OF DATA
                while($rows=$result->fetch_assoc())
                {
              ?>
                <!--FETCHING DATA FROM EACH
                  ROW OF EVERY COLUMN-->
                        
                <h3><?php echo $rows['name'];?><br></h3>
                <p><?php echo $rows['email'];?></p>
                <p><br>Age : <?php echo $rows['age'];?><br></p>
                <p>Mobile : <?php echo $rows['mobile'];?><br></p>
                <p>Address : <?php echo $rows['address'];?><br></p>
                <?php
                }
              ?>
          </div>   
        </div>
    </div>
    <div class="sidebar right">
      <h3>HOLDINGS</h3>
      <table>
			<tr>
				<th>Stock Name</th>
				<th>Date of transaction</th>
				<th>Buy Amount</th>
				<th>Quantity</th>
        <th>Action</th>
			</tr>
			<!-- PHP CODE TO FETCH DATA FROM ROWS-->
			<?php // LOOP TILL END OF DATA
				while($rows2=$result2->fetch_assoc())
				{
			?>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
          <?php $buyid = $rows2['buytransaction_id'];?>
          <?php $name = $rows2['name'];?>
				<td><?php echo $name;?></td>
				<td><?php echo $rows2['date'];?></td>
				<td><?php echo $rows2['buy_amount_'];?></td>
        <?php $price = $rows2['buy_amount_'];?>
				<td><?php echo $rows2['quantity'];?></td>
        <td><a href="sell.php?name=<?php echo $name?>&amp;buyid=<?php echo $buyid?>&price=<?php echo $price?>"><button>Sell</button></a></td>
			</tr>
			<?php
				}
			?>
		</table>

    </div>
  </div>
</div>
<footer style="margin-top:100%;">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <p>Copyright © 2022 Stockify, Ltd. All Rights Reserved. 
          <br>Designed by Team 8</a></p>
        </div>
      </div>
    </div>
  </footer>
</body>
</html>