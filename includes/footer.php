<footer class="ftco-footer ftco-bg-dark ftco-section img" style="background-image: url(images/bg_2.jpg); background-attachment:fixed;">
      <div class="overlay"></div>
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-4">
            <div class="ftco-footer-widget mb-4">
              <h2><a class="navbar-brand" href="index.php"><i class="flaticon-university"></i>Scholarship <br><small>Management System</small></a></h2>
              <p>Turn your academic dreams into reality with scholarships.</p>
              <i class="fa-brands fa-square-twitter"></i>
            </div>
          </div>
          
         
          <div class="col-md-4">
            <div class="ftco-footer-widget mb-4">
              <div class="block-23 mb-3">
                <ul>
                  <?php
$sql="SELECT * from tblpage where PageType='contactus'";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
                  <li><span class="icon icon-map-marker"></span><span class="text"><?php  echo htmlentities($row->PageDescription);?></span><span class="icon icon-phone"></span><span class="text">+<?php  echo htmlentities($row->MobileNumber);?></span></li>
                  <li><span class="icon icon-envelope"></span><span class="text"><?php  echo htmlentities($row->Email);?></span></li><?php $cnt=$cnt+1;}} ?>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p>Scholarship Management System</p>
          </div>
        </div>
      </div>
    </footer> 