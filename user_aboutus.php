<?php include('include/connect.php');
include('include/session.php');
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
     <link rel="shortcut icon" href="administrator.ico">

    <title>Intensity PC</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

	<!-- Less styles  
	<link rel="stylesheet/less" type="text/css" href="less/bootsshop.less">
	<script src="less.js" type="text/javascript"></script>
	 -->
	 
 <!-- Le styles  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet"/>
	<link href="assets/css/docs.css" rel="stylesheet"/>
	 
    <link href="assets/style.css" rel="stylesheet"/>
	<link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet"/>

	
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
     <style>
   body {
    background-image: url("main_bg.jpg");
    background-repeat: no-repeat;
    background-size: cover;
}
</style>
    <!-- Le fav and touch icons -->
 </head>
<body>
  <!-- Navbar
    ================================================== -->
<div class="navbar navbar-fixed-top">
              <div class="navbar-inner">
                <div class="container">
					<a id="logoM" href="index.html"><img src="" alt=""/></a>
                  <a data-target="#sidebar" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <div class="nav-collapse">
                    <ul class="nav">
					 	 <li class=""><a href="user_index.php"><i class="icon-home icon-large"></i> Home</a></li>
					  <li class=""><a href="user_products.php"><i class=" icon-th-large icon-large"></i> Products</a></li>
					  <li ><a href="user_contact.php"><i class="icon-signal"></i> Contact Us</a></li>
                      <li class="active"><a href="user_aboutus.php"><i class="icon-flag"></i> About Us</a></li>
              <li class=""><a href="user_order.php"><i class="icon-shopping-cart"></i> Ordered Products</a></li>
              <li class=""><a href="user_account2.php"><i class="icon-home"></i> Job Hiring</a></li>
               <li class=""><a href="Email.php"><i class="icon-envelope"></i> Email</a></li>
					</ul>
                   
                    <ul class="nav pull-right">
				<li>
				<a href="user_account2.php"><?php $query = mysql_query("select * from customers where CustomerID='$ses_id'") or die(mysql_error());
                $row = mysql_fetch_array($query);
                $id = $row['CustomerID']; ?> <b>Welcome!  </b> <?php echo $row['Firstname'];?> <?php echo $row['Lastname'];?> <span class="badge badge-info"> <?Php include('announce.php');?></span></a>
					</li>
					<li>
						<a href="logout.php"><i class="icon-off"></i> Log Out</a>
					</li>
					</ul>
                  </div><!-- /.nav-collapse -->
                </div>
              </div><!-- /navbar-inner -->
            </div>
<!-- ======================================================================================================================== -->	
<div id="mainBody" class="container">
<div class="thumbnail">
<?php include ('header2.php'); ?></div>

<center><a href="maps.php"><h2><font color="white">Click here!</h2> LOCATION OF THE COMPANY, <b>MAP</b></a></center></font>
<!-- ==================================================Header End====================================================================== -->

		<div class = "well">
        <font color="red">HISTORY</font><br />
Intensity PC was established on December 1, 2012 located at # 48 Gen. Luna  St. , Unit B San Mateo Rizal.
A year later , its first branch was built on April 2014 at Montalban Area located at #2A JP Roadriguez Rizal.

<br>
<br><i>INTENSITY PC  SALES & REPAIR</i> is an established company that caters Computer Technical Support and Computer Products throughout  San Mateo Rizal and Neighboring Towns. IPC provides quality computer products as well as fast and reliable computer service and business at reasonable price to companies, offices, internet cafes, and residential communities with carry-in, pick up , and on-site service. We install home and office networks as well as maintain computers to make sure your home or office PC’s are running smoothly. We also offer free delivery nearby areas. 

<br>
<br>

IPC provides quality technical support for an extensive list of licensed software titles, operating systems, business application, hardware components, installation and upgrading of both hardware and software, network configuration, general cleaning, maintenance, troubleshooting and damage assessment.

At IPC we believe that friendly, timely and quality PC support services and products should be affordable and accessible to all.

<br /><br />

<font color="red">OUR COMPANY VALUES</font><br />
<ul>
<li>Costumer first.</li>
<li>Reasonable price.</li>
<li>Team work.</li>
<li>Continous improvement.</li>
</ul>

<font color="red">OUR MISSION</font><br />
<ul>
<li>Best quality.</li>
<li>Best price.</li>
<li>Best deliver.</li>
<li>Best service.</li>
</ul>
	</div>
<!-- Footer ------------------------------------------------------ -->
<hr class="soft">
<div class="thumbnail"  id="footerSection">
<marquee>&copy; Intensity PC | SALES and REPAIR</marquee>
</div></div></body>
