<?php
  session_start();

  if(isset($_SESSION["username"])){
    $username = $_SESSION["username"];
}

$name = $_GET['name'];
$price = $_GET['price'];
?>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>Transact</title>

 
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
  .heading{
    padding-top:50px;
    text-align: center;
  }
  .topcorner{
   position:fixed;
   top:0;
   right:0;
   width:8%;
   height:8%;
  }
  div.topcorner{
    display:none;
    padding-top:10px;
    padding-left:10px;
  }
  .image:hover + .hide{
  display: block;
  color: black;
  background-color: white;
  height:50%;
  width:20%;
  }

</style>

  </head>

<body>



  <header class="header-area header-sticky">
  <!--<img src="logo.png" class="topcorner image">
    <div class="topcorner hide">username : <?php echo $username?><br> </div>-->
      <div class="container">
          <div class="row">
              <div class="col-12">
                  <nav class="main-nav">
                      
                      <a href="index.html" class="logo">
                        <img src="Screenshot_2022-03-04_at_2.42.56_PM-removebg-preview-modified.png" id="logo-image" alt="">
                      </a>
                      
                      <ul class="nav">
                        <li ><a href="home.php">Home</a></li>
                        <li ><a href="stock.php">Stocks</a></li>
                        <li ><a href="our-services.html">Learning</a></li>
                        <li ><a href="portfolio.php">Portfolio</a></li>                      
                        <li ><a href="about-us.html">About Us</a></li>
                        <li ><a href="logout.php">Logout</a></li> 
                        <li><a href="contact-us.php">Contact Support</a></li> 
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
            <h2>Buy</h2>
            <div class="div-dec"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
<section class="calculator">
    <div class="container">
      <div class="row">
        
          
        
        
          <div class="section-heading">
            <h4>Get Your <?php echo $name?> Stock!!!</h4>
          </div>
          <form id="calculate" action="buyaction.php" method="post">
          <input type='hidden' name="name" value='<?php echo "$name";?>'/> 
            <div class="row">
              <div class="col-lg-6">
                <fieldset>
                  <label for="number">Quantity</label>
                  <input type="number" name="quantity" id="quantity" placeholder="" autocomplete="on" min="1" required>
                </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
                  <label for="price">Market Price</label>
                  <input type="text" name="price" id="market_price" step="0.01" placeholder="" required="" min="1" value=<?php echo $price?>>
                </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
                  <label for="stoploss">Stoploss</label>
                  <input type="number" name="stoploss" id="stoploss"  min="1" autocomplete="on" >
                </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
                  <label for="limprice">Limit Price</label>
                  <input type="number" name="limprice" id="limit_price" placeholder="" min="1">
                </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
                  <label for="target">Target</label>
                  <input type="number" name="target" id="target" placeholder="" min="1" autocomplete="on" >
                </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
                  <label for="trailing">Trailing Stoploss %</label>
                  <input type="number" name="traling" id="trailing_stoploss" placeholder="" min="1" autocomplete="on" >
                </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <button type="submit" id="form-submit" class="orange-button">Execute</button>
                </fieldset>
              </div>
            </div>
          </form>
        
      </div>
    </div>
    </div>
  </section>
<br><br><br>
<footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <p>Copyright © 2022 Stockify, Ltd. All Rights Reserved. 
          
          <br>Designed by Team 8</p>
        </div>
      </div>
    </div>
  </footer>
</body>
</html>
