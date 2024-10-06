<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['aid']==0)) {
  header('location:logout.php');
  } else{

if($_GET['del']){
$uid=$_GET['del'];
$sql= "delete from tbluser where ID='$uid'";
$query=$dbh->prepare($sql);
$query->execute();
echo "<script>alert('Data Deleted');</script>";
echo "<script>window.location.href='reg-users.php'</script>";

          }


  ?>
<!DOCTYPE html>
<html lang="en">
<head>
 
  <title>Scholarship Management System||Manage Registered Users</title>
  
  <!-- Bootstrap core CSS-->
  <link href="../assets/css/bootstrap.min.css" rel="stylesheet"/>
  
  <!-- Sidebar CSS-->
  <link href="../assets/css/sidebar-menu.css" rel="stylesheet"/>
  <!-- Custom Style-->
  <link href="../assets/css/app-style.css" rel="stylesheet"/>
  
</head>

<body class="bg-theme bg-theme1">

<!-- start loader -->
   <div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
   <!-- end loader -->

<!-- Start wrapper-->
 <div id="wrapper">

  <!--Start sidebar-wrapper-->
    <?php include_once('includes/sidebar.php');?>
   <!--End sidebar-wrapper-->


<div class="clearfix"></div>
	
  <div class="content-wrapper">
    <div class="container-fluid">
      <div class="row">
        
        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Manage Registered Users</h5>
              <div class="table-responsive">
                <table class="table">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Name</th>
                      <th scope="col">User Name</th>
                      <th scope="col">Mobile Number</th>
                      <th scope="col">Email</th>
                      <th scope="col">Registration Date</th>
               
                      <th scope="col">Action</th>
                    
                    </tr>
                  </thead>
                  <tbody>
                    <?php
$sql="SELECT * from tbluser";
$query = $dbh -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
                    <tr>
                                                <td><?php echo htmlentities($cnt);?></td>
                                               
                                                <td><?php  echo htmlentities($row->FullName);?></td>
                                                <td><?php  echo htmlentities($row->UserName);?></td>
                                                <td><?php  echo htmlentities($row->MobileNumber);?></td>
                                                <td><?php  echo htmlentities($row->Email);?></td>
                                                <td><?php  echo htmlentities($row->RegDate);?></td>
                                                <td>
<a href="reg-users.php?del=<?php echo htmlentities($row->ID);?>" onclick="return confirm('Do you really want to delete?');" class="btn btn-danger btn-sm">Delete</a>

<a href="users-apps.php?userid=<?php echo htmlentities($row->ID);?>&&username=<?php echo htmlentities($row->FullName);?>" class="btn btn-primary btn-sm" target="blank">View Application</a>


                                                </td>
                                            </tr>
                                    <?php $cnt=$cnt+1;}} ?> 
                
                   
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div><!--End Row-->
	  
	  <!--start overlay-->
		  <div class="overlay toggle-menu"></div>
		<!--end overlay-->

    </div>
    <!-- End container-fluid-->
    
    </div><!--End content-wrapper-->
   <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->
	
	
   
  </div><!--End wrapper-->

   <!-- Bootstrap core JavaScript-->
   <script src="../assets/js/jquery.min.js"></script>
  <script src="../assets/js/popper.min.js"></script>
  <script src="../assets/js/bootstrap.min.js"></script>
  
  
	
</body>
</html>
<?php }  ?>