<?php
session_start();
?>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="img/lifestyleStore.png" />
        <title>Urban Trend</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- latest compiled and minified CSS -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
        <!-- jquery library -->
        <script type="text/javascript" src="bootstrap/js/jquery-3.2.1.min.js"></script>
        <!-- Latest compiled and minified javascript -->
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <!-- External CSS -->
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <div>
           <?php
            require 'header.php';
           ?>
           <div id="bannerImage">
               <div class="container">
                   <center>
                   <div id="bannerContent">
                       <h1>EXPERIENCE THE LIFESTYLE.</h1>
                       <p>Flat 40% OFF on all premium brands.</p>
                       <a href="products.php" class="btn btn-danger">Shop Now</a>
                   </div>
                   </center>
               </div>
           </div>
           <div class="container">
               <div class="row">
                   <div class="col-xs-4">
                       <div  class="thumbnail">
                           <a href="products.php">
                                <img src="https://www.levi.in/on/demandware.static/-/Sites-LeviIN-Library/en_IN/dw1d97cd7e/images/homepage/P3_3_081919.jpg" alt="Camera">
                           </a>
                           <center>
                                
                           </center>
                       </div>
                   </div>
                   <div class="col-xs-4">
                       <div class="thumbnail">
                           <a href="men.php">
                               <img src="https://www.levi.in/on/demandware.static/-/Sites-LeviIN-Library/en_IN/dwc93e54d1/images/homepage/P3_1_081919.jpg" alt="Watch">
                           </a>
                           <center>
                                
                           </center>
                       </div>
                   </div>
                   <div class="col-xs-4">
                       <div class="thumbnail">
                           <a href="accessories.php">
                               <img src="https://www.levi.in/on/demandware.static/-/Sites-LeviIN-Library/en_IN/dwd3f0bdec/images/homepage/P3_2_081919.jpg" alt="Shirt">
                           </a>
                           <center>
                              
                           </center>
                       </div>
                   </div>
               </div>
           </div>
            <br><br> <br><br><br><br>
           <footer class="footer"> 
               <div class="container">
               <center>
                   <p>Copyright &copy Urban Trend. All Rights Reserved.</p>
                  
               </center>
               </div>
           </footer>
        </div>
    </body>
</html>