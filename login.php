<?php
  session_start();
  ?>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>Login</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-574-mexant.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css">
    <link rel="stylesheet" href="assets/css/login.css">

<style>
  #logo-image{
    max-width:578px;
    max-height:431px;
    width:115px;
    height:75px;
  }

  span{
  color:red;
  font-weight: bold;
  margin-top:10px;
  padding:5px;
  border:1px solid red;
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
            <h2>Login</h2>
            <div class="div-dec"></div>
          </div>
        </div>
      </div>
    </div>
  </div>

<div class =check id="check">
<div class="container" id="container">
    <div class="form-container sign-up-container">
        <!-- Sign Up form code goes here -->
        <form action="submit2.php" method="post">
            <h1>Create Account</h1><br>
            <input type="text" placeholder="Name" name="name" required/>
            <input type="email" placeholder="Email" name="email" required/>
            <input type="number" placeholder="Age" min="18" name="age" required/>
            <input type="text" placeholder="Number" name="phone" required/>
            <input type="text" placeholder="Address" name="address" required/>
            <input type="text" placeholder="Username" name="username" required/>
            <input type="password" placeholder="Password" name="password" required/>
            <input type="password" placeholder="Re-Enter Password" />
            <button>Sign Up</button>
        </form>
    </div>
    <div class="form-container sign-in-container">
        <!-- Sign In form code goes here -->
        <form action="submit.php" method="post">
            <h1>Sign in</h1><br>
            <?php
                    if(isset($_SESSION["error"])){
                        $error = $_SESSION["error"];
                        echo "<span>$error</span>";
                    }
                ?>  
            <input type="text" placeholder="Username" name="username" required/>
            <input type="password" placeholder="Password" name="password" required/>
            <a href="#">Forgot your password?</a>
            <button>Sign In</button>
        </form>
    </div>
    <div class="overlay-container">
        <!-- The overlay code goes here -->
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>Welcome Back!</h1>
                <p>To keep connected with us please login with your personal info</p>
                <button class="ghost" id="signIn">Sign In</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1>Hello Friend!</h1>
                <p>Enter your personal details and start journey with us</p>
                <button class="ghost" id="signUp">Sign Up</button>
            </div>
        </div>
    </div>
</div>  
</div> 
<script>
const signUpButton = document.getElementById("signUp");
const signInButton = document.getElementById("signIn");
const container = document.getElementById("container");

signUpButton.addEventListener("click", () => {
container.classList.add("right-panel-active");
});

signInButton.addEventListener("click", () => {
container.classList.remove("right-panel-active");
});

</script> 

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
<?php
    unset($_SESSION["error"]);
?>


