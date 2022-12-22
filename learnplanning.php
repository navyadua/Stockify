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
$sql = "SELECT Links FROM learning WHERE Course_Name = 'Financial Planning'";
$result = $mysqli->query($sql);
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

    <title>Contact us</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-574-mexant.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css">


<style>
  #logo-image{
    max-width:578px;
    max-height:431px;
    width:115px;
    height:75px;
  }
  iframe{
    padding:15px;
    margin:10px;
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
            <h2>Financial Planning</h2>
            <div class="div-dec"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="content">

<?php // LOOP TILL END OF DATA
              while($rows=$result->fetch_assoc())
              {
          ?>
          
              <!--FETCHING DATA FROM EACH
                  ROW OF EVERY COLUMN-->
                  <iframe width="420" height="315"
src="
              <?php echo $rows['Links'];?>
              ">
              </iframe>
          <?php
              }
          ?>
</div>
<footer>
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