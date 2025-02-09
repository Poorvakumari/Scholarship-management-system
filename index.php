<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Scholarship Management System|| Index Page</title>
   
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/flaticon.css">
    
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    
  <?php include_once('includes/header.php');?>
    
    <div class="hero-wrap" style="background-image: url('images/bg_4.jpg'); background-attachment:fixed;">
     
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-8 ftco-animate text-center">
            <h1 class="mb-4">No Nation Can Prosper In Life Without Education</h1>
            <p><a href="users/login.php" class="btn btn-primary px-4 py-3">Apply Now</a> <a href="schemes.php" class="btn btn-secondary px-4 py-3">View Schemes</a></p>
          </div>
        </div>
      </div>
    </div>
   
		
	<?php include_once('includes/footer.php');?>
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script> 
  <!-- <script src="js/popper.min.js"></script> -->
   <script src="js/bootstrap.min.js"></script>
  <!-- <script src="js/jquery.easing.1.3.js"></script> -->
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <!-- <script src="js/jquery.magnific-popup.min.js"></script> -->
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script> -->
  <script src="js/main.js"></script>
    
  </body>
</html>