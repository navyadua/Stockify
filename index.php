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

// SQL query to select data from global_market database
$sql = "SELECT * FROM global_market ";
$result = $mysqli->query($sql);

// SQL query to select data from indian_market database
$sql2 = "SELECT * FROM indian_market ";
$result2 = $mysqli->query($sql2);
$mysqli->close();

?>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

<!DOCTYPE html>
<html lang="en">

  <head>
      <style>
          table,table th , table td{
            border-bottom: 1px solid #eee;
    margin-bottom: 25px;
    padding-bottom: 25px;
          }
          td , th{
            padding:10px;
          }
          .name{
            color:#ff511a
          }
      </style>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>Stockify</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-574-mexant.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css">
    <link rel="stylesheet" href="static/css/chat.css">
    <link rel="stylesheet" href="chat.css">
     
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--

TemplateMo 574 Mexant

https://templatemo.com/tm-574-mexant

-->
<style>
  #logo-image{
    max-width:578px;
    max-height:431px;
    width:115px;
    height:75px;
  }
</style>
  </head>

<body>

<div class="chat-bar-collapsible" style="z-index: 12;">
    <button id="chat-button" type="button" class="collapsible">Chat with us!
        <i id="chat-icon" style="color: #fff;" class="fa fa-fw fa-comments-o"></i>
    </button>
    <div class="content">
        <div class="full-chat-block">
            <!-- Message Container -->
            <div class="outer-container">
                <div class="chat-container">
                    <!-- Messages -->
                    <div id="chatbox">
                        <h5 id="chat-timestamp"></h5>
                        <p id="botStarterMessage" class="botText"><span>Loading...</span></p>
                    </div>

                    <!-- User input box -->
                    <div class="chat-bar-input-block">
                        <div id="userInput">
                            <input id="textInput" class="input-box" type="text" name="msg"
                                placeholder="Tap 'Enter' to send a message">
                            <p></p>
                        </div>

                        <div class="chat-bar-icons">
                            <i id="chat-icon" style="color: crimson;" class="fa fa-fw fa-heart"
                                onclick="heartButton()"></i>
                            <i id="chat-icon" style="color: #333;" class="fa fa-fw fa-send"
                                onclick="sendButton()"></i>
                        </div>
                    </div>

                    <div id="chat-bar-bottom">
                        <p></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
      <div class="container">
          <div class="row">
              <div class="col-12">
                  <nav class="main-nav">
                      <!-- ***** Logo Start ***** -->
                      <a href="index.html" class="logo">
                          <img src="Screenshot_2022-03-04_at_2.42.56_PM-removebg-preview-modified.png" id="logo-image" alt="">
                      </a>
                      <!-- ***** Logo End ***** -->
                      <!-- ***** Menu Start ***** -->
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
                      <!-- ***** Menu End ***** -->
                  </nav>
              </div>
          </div>
      </div>
  </header>
  <!-- ***** Header Area End ***** -->

  <!-- ***** Main Banner Area Start ***** -->
  <div class="swiper-container" id="top">
    <div class="swiper-wrapper">
      <div class="swiper-slide">
        <div class="slide-inner" style="background-image:url(assets/images/slide-01.jpg)">
          <div class="container">
            <div class="row">
              <div class="col-lg-8">
                <div class="header-text">
                  <h2>Get <em>ready</em> for your Journey<br>&amp; upgrade <em>all aspects</em></h2>
                  <div class="div-dec"></div>
                  <p>Get your perfect investment plan along with handpicked stocks and mutual fund recommendation that's perfectly aligned with your goals</p>
                  <div class="buttons">
                    <div class="green-button">
                      <a href="#">Discover More</a>
                    </div>
                    <div class="orange-button">
                      <a href="#">Contact Us</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="swiper-slide">
        <div class="slide-inner" style="background-image:url(assets/images/slide-02.jpg)">
          <div class="container">
            <div class="row">
              <div class="col-lg-8">
                <div class="header-text">
                  <h2><em>Stock</em> Options for you <br>&amp; Best <em>Investment</em> Tips</h2>
                  <div class="div-dec"></div>
                  <p> Well, Stockify brings to you Recipe where the Chef Special shall provide scientifically-screened and expert-curated stocks just for you. Plus, you get to know the rationale behind these stock-picks in the Investment Insights.</p>
                  <div class="buttons">
                    <div class="green-button">
                      <a href="#">Discover More</a>
                    </div>
                    <div class="orange-button">
                      <a href="#">Contact Us</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="swiper-slide">
        <div class="slide-inner" style="background-image:url(assets/images/slide-03.jpg)">
          <div class="container">
            <div class="row">
              <div class="col-lg-8">
                <div class="header-text">
                  <h2><em>To Be </em>Best One in<br>&amp; Stock <em>Services</em></h2>
                  <div class="div-dec"></div>
                  <p>A game changing website that gives you access to all financial super powers. Learning to invest, having a solid financial plan and being able to track your progress are all aligned towards the same goal - Creating wealth..</p>
                  <div class="buttons">
                    <div class="green-button">
                      <a href="#">Discover More</a>
                    </div>
                    <div class="orange-button">
                      <a href="#">Contact Us</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="swiper-button-next swiper-button-white"></div>
    <div class="swiper-button-prev swiper-button-white"></div>
  </div>

  <!-- ***** Main Banner Area End ***** -->

  <section class="services" id="services">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="service-item">
            <i class="fas fa-archive"></i>
            <h4>Being Financially Smart</h4>
            <p>India's own financial learning platform, Finology provides you with practical courses that align with your attention span</p>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="service-item">
            <i class="fas fa-cloud"></i>
            <h4>New to the Market?</h4>
            <p>Get your perfect investment plan along with handpicked stocks and mutual fund recommendation.</p>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="service-item">
            <i class="fas fa-charging-station"></i>
            <h4>Want to be a Stock Expert?</h4>
            <p>Find your next multibagger and monitor your portfolio with Stockify</p>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="service-item">
            <i class="fas fa-suitcase"></i>
            <h4>Mobile and Tablet ready!</h4>
            <p>Our website is well-tested on mobile, tablet, and desktop compatibility.</p>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="service-item">
            <i class="fas fa-archway"></i>
            <h4>Fast Customer Support</h4>
            <p>Do not be hesitated to contact us if you have any question or concern about our Website or Features.</p>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="service-item">
            <i class="fas fa-puzzle-piece"></i>
            <h4>Open to Ideas</h4>
            <p>If you have any idea or suggestion about new features, feel free to let us know.</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="simple-cta">
    <div class="container">
      <div class="row">
        <div class="col-lg-5">
          <h4>Your <em>Money</em> Is Worth <br>More Than You <Strong>Think</Strong></h4>
        </div>
        <div class="col-lg-7">
          <div class="buttons">
            <div class="green-button">
              <a href="#">Discover More</a>
            </div>
            <div class="orange-button">
              <a href="#">Contact Us</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="about-us" id="about">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 offset-lg-3">
          <div class="section-heading">
            <h6>Market</h6>
            <h4>Have a Global Market Look</h4>
          </div>
        </div>
        <div class="col-lg-8 container">
          <div class="naccs">
            <div class="tabs">
              <div class="row">
                <div class="col-lg-12">
                  <div class="menu">
                    <div class="active gradient-border"><span>Global Market</span></div>
                    <div class="gradient-border"><span>Indian Markets</span></div>
                    
                  </div>
                </div>
                <div class="col-lg-12">
                  <ul class="nacc">
                    <li class="active">
                    <table>
			<tr>
				<th>Name</th>
				<th>Current Value</th>
				<th>Change</th>
				<th>% Change</th>
                <th>Open</th>
				<th>High</th>
				<th>Low</th>
				<th>Prev Close</th>
			</tr>
			<!-- PHP CODE TO FETCH DATA FROM ROWS-->
			<?php // LOOP TILL END OF DATA
				while($rows=$result->fetch_assoc())
				{
			?>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
				<td class="name"><?php echo $rows['name'];?></td>
				<td><?php echo $rows['current_value'];?></td>
				<td><?php echo $rows['change'];?></td>
				<td><?php echo $rows['per_change'];?></td>
                <td><?php echo $rows['open'];?></td>
				<td><?php echo $rows['high'];?></td>
				<td><?php echo $rows['low'];?></td>
				<td><?php echo $rows['prev_close'];?></td>
			</tr>
			<?php
				}
			?>
		</table>
                    </li>
                    <li>
                    <table>
			<tr>
				<th>Name</th>
				<th>LTP</th>
				<th>Change</th>
				<th>% Change</th>
                <th>Open</th>
				<th>High</th>
				<th>Low</th>
				<th>Techical Rating</th>
			</tr>
			<!-- PHP CODE TO FETCH DATA FROM ROWS-->
			<?php // LOOP TILL END OF DATA
				while($rows=$result2->fetch_assoc())
				{
			?>
			<tr>
				<!--FETCHING DATA FROM EACH
					ROW OF EVERY COLUMN-->
				<td class="name"><?php echo $rows['Name'];?></td>
				<td><?php echo $rows['LTP'];?></td>
				<td><?php echo $rows['Chg'];?></td>
				<td><?php echo $rows['%Chg'];?></td>
                <td><?php echo $rows['Open'];?></td>
				<td><?php echo $rows['High'];?></td>
				<td><?php echo $rows['Low'];?></td>
				<td><?php echo $rows['Technical Rating'];?></td>
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
        

        <div>
          <br>
          <div class="right-content">
            <h4>Stock Exchange/Market, Your giver and taker in every transaction.</h4>
             <p>A stock exchange does not own shares. Instead, it acts as a market where stock buyers connect with stock sellers. Stocks can be traded on several exchanges such as the New York Stock Exchange (NYSE) or the Nasdaq.<br>Thank you for choosing us. Please tell us your friends.</p>
            <div class="green-button">
              <a href="about-us.html">Discover More</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  
  <section class="calculator">
    <div class="container">
      <div class="row">
        
        <div class="col-lg-5">
          <div class="section-heading">
            <h6>Your Freedom</h6>
            <h4>Get a Financial Plan</h4>
          </div>
          <form id="calculate" action="" method="get">
            <div class="row">
              <div class="col-lg-6">
                <fieldset>
                  <label for="name">Your Name</label>
                  <input type="name" name="name" id="name" placeholder="" autocomplete="on" required>
                </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
                  <label for="email">Your Email</label>
                  <input type="text" name="email" id="email" pattern="[^ @]*@[^ @]*" placeholder="" required="">
                </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <label for="subject">Subject</label>
                  <input type="subject" name="subject" id="subject" placeholder="" autocomplete="on" >
                </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <label for="chooseOption" class="form-label">Your Reason</label>
                  <select name="Category" class="form-select" aria-label="Default select example" id="chooseOption" onchange="this.form.click()">
                      <option selected>Choose an Option</option>
                      <option type="checkbox" name="option1" value="Online Exploring">Online Exploring</option>
                      <option value="Financial Control">Financial Control</option>
                      <option value="Yearly Profit">Yearly Profit</option>
                      <option value="Stock Investment">Stock Investment</option>
                  </select>
              </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <button type="submit" id="form-submit" class="orange-button">Submit Now</button>
                </fieldset>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>

  <section class="testimonials" id="testimonials">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 offset-lg-3">
          <div class="section-heading">
            <h6>Testimonials</h6>
            <h4>What They Say</h4>
          </div>
        </div>
        <div class="col-lg-10 offset-lg-1">
          <div class="owl-testimonials owl-carousel" style="position: relative; z-index: 5;">
            <div class="item">
              <i class="fa fa-quote-left"></i>
              <p>“For me, wealth before all of this happened was a bigger car, better watch and all of that, but now it is about being content and you hit that point where you are satisfied in life. Being in a nice house is part of it. I am not talking about the flashy house, etc. It should be a place where you can sit down quietly at the end of the day after a hard day’s work”</p>
              <h4>Naman Mandhani</h4>
              <span>CEO of Stockify</span>
              <div class="right-image">
                <img src="IMG_6021.JPG" alt="">
              </div>
            </div>
            <div class="item">
              <i class="fa fa-quote-left"></i>
              <p>“Just like banking, stockbroking also is complex in India. There are many levels and layers through which an order passes”</p>
              <h4>Navya Dua</h4>
              <span>CTO of Stockify</span>
              <div class="right-image">
                <img src="Screenshot 2022-03-30 at 11.55.48 PM.jpeg" alt="">
              </div>
            </div>
            <div class="item">
              <i class="fa fa-quote-left"></i>
              <p>“A pioneer of the discount brokerage model in the country, said making money is one thing, but keeping it, remaining sane and doing the right things with money demand a different skill set.”</p>
              <h4>Karan Gupta</h4>
              <span>Stock Analyst</span>
              <div class="right-image">
                <img src="Screenshot 2022-03-30 at 11.56.35 PM.png" alt="">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <p>Copyright © 2022 Stockify, Ltd. All Rights Reserved. 
          
          <br>Designed by Team 8</a></p>
        </div>
      </div>
    </div>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="static/scripts/responses.js"></script>
    <script src="static/scripts/chat.js"></script>
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
        loop: true,s
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