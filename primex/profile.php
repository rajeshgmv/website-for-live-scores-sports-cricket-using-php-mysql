<?php
session_start();
include_once 'dbconnect.php';

if(!isset($_SESSION['user']))
{
	header("Location: http://localhost/iplt20/login/index.php");
}
$userses = $_SESSION['user'];

$res=mysqli_query($conn, "SELECT * FROM user WHERE userid='$userses'");
$userRow=mysqli_fetch_array($res);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Profile</title>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/isotope.css"/>
    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script>
    <script src="js/jquery.equalheights.js"></script>
    <script src='js/isotope.min.js'></script>
	
</script>
    <!--[if lt IE 9]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
            <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0"
                 height="42" width="820"
                 alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."/>
        </a>
    </div>
    <script src="js/html5shiv.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
    <![endif]-->
</head>
<body>
<div class="page">
<!--========================================================
                          HEADER
=========================================================-->
<header id="header">
        <div id="stuck_container">
        <div class="container">
            <div class="row">
                <div class="grid_12">
                    <div class="brand put-left">
                        <h1>
                            <a href="index.php">
                                <img src="images/logo.png" alt="Logo"/>
								
                            </a>
                        </h1>
                    </div>
                    <nav class="nav put-right">
                        <ul class="sf-menu">
                            <li class="current"><a href="index.php">Home</a></li>
                            <li>
                                <a href="#">Season</a>
                                <ul>
                                   <li><a href="http://localhost/IPLT20/primex/season.php?year=2011">2011</a></li>
                                    <li><a href="http://localhost/IPLT20/primex/season.php?year=2012">2012</a>
                                    <li><a href="http://localhost/IPLT20/primex/season.php?year=2013">2013</a>
                                    <li><a href="http://localhost/IPLT20/primex/season.php?year=2014">2014</a>
									<li><a href="http://localhost/IPLT20/primex/season.php?year=2015">2015</a>
									
                                        
                                    </li>
                                </ul>
                            </li>
                            <li><a href="#">Teams</a>
							    <ul>
									<li><a href="http://localhost/IPLT20/primex/team.php?teamid=1">CSK</a></li>
                                    <li><a href="http://localhost/IPLT20/primex/team.php?teamid=10">SRH</a>
                                    <li><a href="http://localhost/IPLT20/primex/team.php?teamid=2">RCB</a>
                                    <li><a href="http://localhost/IPLT20/primex/team.php?teamid=3">MI</a>
									<li><a href="http://localhost/IPLT20/primex/team.php?teamid=5">DD</a>
                                    <li><a href="http://localhost/IPLT20/primex/team.php?teamid=7">KKR</a>
                                    <li><a href="http://localhost/IPLT20/primex/team.php?teamid=6">RR</a>
									<li><a href="http://localhost/IPLT20/primex/team.php?teamid=4">KXIP</a>
									<li><a href="http://localhost/IPLT20/primex/team.php?teamid=9">PWI</a>
									<li><a href="http://localhost/IPLT20/primex/team.php?teamid=8">DC</a>
									<li><a href="http://localhost/IPLT20/primex/team.php?teamid=11">KTK</a>
								    </li>
								</ul>
							</li>
                            <li><a href="blog.html">Records</a>
								<ul>
									
									<li><a href="http://localhost/IPLT20/primex/batsmen.php">Batting</a></li>
                                    <li><a href="http://localhost/IPLT20/primex/bowler.php">Bowling</a>
                                    </li>
								
								</ul>
							</li>
                            <li><a href="contacts.html">Account</a>
								<ul>
									<li><a href="http://localhost/IPLT20/primex/profile.php">Profile</a></li>
                                    <li><a href="http://localhost/IPLT20/login/logout.php?logout">Logout</a>
                                    </li>
								</ul>
							</li>
							<li>							
									<form action="http://localhost/IPLT20/primex/search.php" method="GET">  
										<input type="text" name="search" style="margin-top: 20px; /><br />  
										<input type="submit"  style="height: 0px; width: 0px; border: none; padding: 0px"/>  
									</form> 			
							</li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>
<!--========================================================
                          CONTENT
=========================================================-->
<section id="content"><div class="ic">More Website Templates @ TemplateMonster.com - September08, 2014!</div>
    <div class="container">
        <div class="row wrap_11 wrap_20">
            <div class="grid_12">
                <div class="text_7 color_2">
                   
                    <ul id="filters">
						
                    </ul>
                </div>
            </div>
        </div>
    </div>
<center>
         <?php
           echo "<a name='si'></a> <table id='cskbg' border=9 style='width:70%; text-align:center; padding-right:100px'> 
										<caption>
											<csk><u>Your Profile Info Info</u></csk>
										</caption>";
										

							$res=mysqli_query($conn, "Select * from user where userid='$userses' ");
							while($row = $res->fetch_assoc()) 
								{
								echo "<tr>";
							    echo "<td>FirstName</td><td>".$row["firstname"]."</td>";echo "</tr><tr>";
								echo "<td>LastName</td><td>".$row["lastname"]."</td>";echo "</tr><tr>";
								echo "<td>Email</td><td>".$row["userid"]."</td>";echo "</tr><tr>";
								echo "</tr>";
								}
								$res=mysqli_query($conn, "select * from login where userid = '$userses' ORDER BY logintime DESC limit 1 ");
							while($row = $res->fetch_assoc()) 
								{
								echo "<tr>";
							    echo "<td>your Login Time</td><td>".$row["logintime"]."</td>";echo "</tr><tr>";
								echo "</tr>";
								}
								
								
		 ?>
				

</center>
</section>

<!--========================================================
                          FOOTER
=========================================================-->
<script src="js/script.js"></script>

</body>
</html>