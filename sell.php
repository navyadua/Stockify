<?php
  session_start();

  if(isset($_SESSION["username"])){
    $username = $_SESSION["username"];
}

$name = $_GET['name'];
$buyid = $_GET['buyid'];
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
</style>

  </head>

<body>



  <header class="header-area header-sticky">
      <div class="container">
          <div class="row">
              <div class="col-12">
                  <nav class="main-nav">
                      
                      <a href="home.php" class="logo">
                        <img src="Screenshot_2022-03-04_at_2.42.56_PM-removebg-preview-modified.png" id="logo-image" alt="">
                      </a>
                      
                      <ul class="nav">
                      <li ><a href="index.php">Home</a></li>
                        <li ><a href="stock.php">Stock</a></li>
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
            <h2>Sell</h2>
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
            <h4>Sell Your <?php echo $name ?> Stock!!!</h4>
          </div>
          <form id="calculate" action="sellaction.php" method="post">
          <input type='hidden' name="name" value='<?php echo "$name";?>'/> 
          <input type='hidden' name="buyid" value='<?php echo "$buyid";?>'/> 
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
                  <input type="number" name="price" id="market_price" placeholder="" required="" min="1" value=<?php echo $price?>>
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
                  <label for="trailing">Disclosed Qty</label>
                  <input type="number" name="disclosed_quantity" id="disclosed_quantity" placeholder="" min="1" autocomplete="on" >
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
