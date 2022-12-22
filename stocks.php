<?php

// Username is root
$user = 'root';
$password = '';

// Database name is gfg
$database = 'stockify';

// Server is localhost with
// port number 3306
$servername='localhost:3306';
$mysqli = new mysqli($servername, $user, $password, $database);

// Checking for connections
if ($mysqli->connect_error) {
	die('Connect Error (' .
	$mysqli->connect_errno . ') '.
	$mysqli->connect_error);
}

// SQL query to select data from stocks table
//all stocks
$sql_b = "SELECT * FROM stocks where Category='Banking' LIMIT 5";
$result_b = $mysqli->query($sql_b);
$sql_f = "SELECT * FROM stocks where Category='Finance' LIMIT 5";
$result_f = $mysqli->query($sql_f);
$sql_i = "SELECT * FROM stocks where Category='IT' LIMIT 5";
$result_i = $mysqli->query($sql_i);
$sql_m = "SELECT * FROM stocks where Category='Medicine' LIMIT 5";
$result_m = $mysqli->query($sql_m);

// banking
$sql1 = "SELECT * FROM stocks where Category='Banking' ";
$result1 = $mysqli->query($sql1);

// finance
$sql2 = "SELECT * FROM stocks where Category='Finance' ";
$result2 = $mysqli->query($sql2);

// it
$sql3 = "SELECT * FROM stocks where Category='IT' ";
$result3 = $mysqli->query($sql3);
// medicine 
$sql4 = "SELECT * FROM stocks where Category='Medicine' ";
$result4 = $mysqli->query($sql4);

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

    <title>Learning</title>

    
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="templatemo-574-mexant.css">
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
          table,table th , table td{
            border-bottom: 1px solid #eee;
    margin-bottom: 25px;
    padding-bottom: 25px;
    margin-left:10%;
    margin-top:5px;
          }
          h2{
            margin-left:10%;
          }
          th{
          }
          td{
            padding:50px;
          }
          .name{
            color:#ff511a
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
                      <li ><a href="index.php">Home</a></li>
                        <li ><a href="stocks.php">Stock</a></li>  
                        <li ><a href="about-us.html">About Us</a></li>                     
                        <li><a href="contact-us.php">Contact Support</a></li> 
                        <li ><a href="login.php">Login</a></li>
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
            <h2>Stocks</h2>
            <div class="div-dec"></div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <section class="about-us1" id="about1">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 offset-lg-3">
          <div class="section-heading">
            
            <h4>Let Us Have a Look</h4>
          </div>
        </div>
        <div class="col-lg-8">
          <div class="naccs">
            <div class="tabs">
              <div class="row">
                <div class="col-lg-12">
                  <div class="menu">
                    <div class="active gradient-border"><span>All Stocks</span></div>                  
                    <div class="gradient-border"><span>Banking</span></div>
                    <div class="gradient-border"><span>Finance</span></div>
                    <div class="gradient-border"><span>IT</span></div>
                    <div class="gradient-border"><span>Medicine</span></div>
                  </div>
                </div>
                <div class="col-lg-12">
                  <ul class="nacc">
                    <li class="active">
                    <table>
			<tr>
				<th>Company Name</th>
				<th>Last Price</th>
				<th>52 Week High</th>
                <th>52 Week Low</th>
				<th>Market Cap(in Cr)</th>
        <th>Category</th>
			</tr>
			<!-- PHP CODE TO FETCH DATA FROM ROWS-->
			<?php // LOOP TILL END OF DATA
				while($rows=$result_b->fetch_assoc())
				{
			?>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
				<td class="name"><?php echo $rows['Company Name'];?></td>
				<td><?php echo $rows['Last Price'];?></td>
				<td><?php echo $rows['52 Week High'];?></td>
                <td><?php echo $rows['52 Week Low'];?></td>
				<td><?php echo $rows['Market Cap(in Cr)'];?></td>
        <td><?php echo $rows['Category'];?></td>
			</tr>
			<?php
				}
			?>
      <?php // LOOP TILL END OF DATA
				while($rows=$result_f->fetch_assoc())
				{
			?>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
				<td class="name"><?php echo $rows['Company Name'];?></td>
				<td><?php echo $rows['Last Price'];?></td>
				<td><?php echo $rows['52 Week High'];?></td>
                <td><?php echo $rows['52 Week Low'];?></td>
				<td><?php echo $rows['Market Cap(in Cr)'];?></td>
        <td><?php echo $rows['Category'];?></td>
			</tr>
			<?php
				}
			?>
      <?php // LOOP TILL END OF DATA
				while($rows=$result_i->fetch_assoc())
				{
			?>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
				<td class="name"><?php echo $rows['Company Name'];?></td>
				<td><?php echo $rows['Last Price'];?></td>
				<td><?php echo $rows['52 Week High'];?></td>
                <td><?php echo $rows['52 Week Low'];?></td>
				<td><?php echo $rows['Market Cap(in Cr)'];?></td>
        <td><?php echo $rows['Category'];?></td>
			</tr>
			<?php
				}
			?>
      <?php // LOOP TILL END OF DATA
				while($rows=$result_m->fetch_assoc())
				{
			?>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
				<td class="name"><?php echo $rows['Company Name'];?></td>
				<td><?php echo $rows['Last Price'];?></td>
				<td><?php echo $rows['52 Week High'];?></td>
                <td><?php echo $rows['52 Week Low'];?></td>
				<td><?php echo $rows['Market Cap(in Cr)'];?></td>
        <td><?php echo $rows['Category'];?></td>
			</tr>
			<?php
				}
			?>
		</table>
                    </li>
                    <li>
                    <table>
			<tr>
				<th>Company Name</th>
				<th>Last Price</th>
				<th>52 Week High</th>
                <th>52 Week Low</th>
				<th>Market Cap(in Cr)</th>
			</tr>
			<!-- PHP CODE TO FETCH DATA FROM ROWS-->
			<?php // LOOP TILL END OF DATA
				while($rows=$result1->fetch_assoc())
				{
			?>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
				<td class="name"><?php echo $rows['Company Name'];?></td>
				<td><?php echo $rows['Last Price'];?></td>
				<td><?php echo $rows['52 Week High'];?></td>
                <td><?php echo $rows['52 Week Low'];?></td>
				<td><?php echo $rows['Market Cap(in Cr)'];?></td>
			</tr>
			<?php
				}
			?>
		</table>
                    </li>
                    <li>
                    <table>
			<tr>
				<th>Company Name</th>
				<th>Last Price</th>
				<th>52 Week High</th>
                <th>52 Week Low</th>
				<th>Market Cap(in Cr)</th>
			</tr>
			<!-- PHP CODE TO FETCH DATA FROM ROWS-->
			<?php // LOOP TILL END OF DATA
				while($rows=$result2->fetch_assoc())
				{
			?>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
				<td class="name"><?php echo $rows['Company Name'];?></td>
				<td><?php echo $rows['Last Price'];?></td>
				<td><?php echo $rows['52 Week High'];?></td>
                <td><?php echo $rows['52 Week Low'];?></td>
				<td><?php echo $rows['Market Cap(in Cr)'];?></td>
			</tr>
			<?php
				}
			?>
		</table>
                    </li>
                    <li>
                    <table>
			<tr>
				<th>Company Name</th>
				<th>Last Price</th>
				<th>52 Week High</th>
                <th>52 Week Low</th>
				<th>Market Cap(in Cr)</th>
			</tr>
			<!-- PHP CODE TO FETCH DATA FROM ROWS-->
			<?php // LOOP TILL END OF DATA
				while($rows=$result3->fetch_assoc())
				{
			?>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
				<td class="name"><?php echo $rows['Company Name'];?></td>
				<td><?php echo $rows['Last Price'];?></td>
				<td><?php echo $rows['52 Week High'];?></td>
                <td><?php echo $rows['52 Week Low'];?></td>
				<td><?php echo $rows['Market Cap(in Cr)'];?></td>
			</tr>
			<?php
				}
			?>
		</table>
                    </li>
                    <li>
                    <table>
			<tr>
				<th>Company Name</th>
				<th>Last Price</th>
				<th>52 Week High</th>
                <th>52 Week Low</th>
				<th>Market Cap(in Cr)</th>
			</tr>
			<!-- PHP CODE TO FETCH DATA FROM ROWS-->
			<?php // LOOP TILL END OF DATA
				while($rows=$result4->fetch_assoc())
				{
			?>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
				<td class="name"><?php echo $rows['Company Name'];?></td>
				<td><?php echo $rows['Last Price'];?></td>
				<td><?php echo $rows['52 Week High'];?></td>
                <td><?php echo $rows['52 Week Low'];?></td>
				<td><?php echo $rows['Market Cap(in Cr)'];?></td>
			</tr>
			<?php
				}
			?>
		</table>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        
      </div>
    </div>
  </section>
  <footer style="margin-top:150%;">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <p>Copyright © 2022 Stockify, Ltd. All Rights Reserved. 
          <br>Designed by Team 8</a></p>
        </div>
      </div>
    </div>
  </footer>

  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <script src="assets/js/isotope.min.js"></script>
  <script src="assets/js/owl-carousel.js"></script>
  <script src="assets/js/wow.js"></script>
  <script src="assets/js/tabs.js"></script>
  <script src="assets/js/swiper.js"></script>
  <script src="assets/js/custom.js"></script>
  <script>
      var interleaveOffset = 0.5;

    var swiperOptions = {
      loop: true,
      speed: 1000,
      grabCursor: true,
      watchSlidesProgress: true,
      mousewheelControl: true,
      keyboardControl: true,
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev"
      },
      on: {
        progress: function() {
          var swiper = this;
          for (var i = 0; i < swiper.slides.length; i++) {
            var slideProgress = swiper.slides[i].progress;
            var innerOffset = swiper.width * interleaveOffset;
            var innerTranslate = slideProgress * innerOffset;
            swiper.slides[i].querySelector(".slide-inner").style.transform =
              "translate3d(" + innerTranslate + "px, 0, 0)";
          }      
        },
        touchStart: function() {
          var swiper = this;
          for (var i = 0; i < swiper.slides.length; i++) {
            swiper.slides[i].style.transition = "";
          }
        },
        setTransition: function(speed) {
          var swiper = this;
          for (var i = 0; i < swiper.slides.length; i++) {
            swiper.slides[i].style.transition = speed + "ms";
            swiper.slides[i].querySelector(".slide-inner").style.transition =
              speed + "ms";
          }
        }
      }
    };

    var swiper = new Swiper(".swiper-container", swiperOptions);
  </script>
</body>
</html>
</body>
</html>
