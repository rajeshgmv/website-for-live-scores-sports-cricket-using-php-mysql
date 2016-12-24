<?php
session_start();
include_once 'dbconnect.php';

if(!isset($_SESSION['user']))
{
	header("Location: http://localhost/iplt20/login/index.php");
}
$userses = $_SESSION['user'];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/camera.css"/>
    <link rel="stylesheet" href="css/owl.carousel.css"/>
    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script>
    <script src="js/jquery.equalheights.js"></script>
    
    <script src="js/jquery.mobile.customized.min.js"></script>
    
    <script src="js/camera.js"></script>
    <script src="js/owl.carousel.js"></script>
    
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
                            <a href="index.html">
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
                            <li><a href="#">Records</a>
								<ul>
									<li><a href="http://localhost/IPLT20/primex/batsmen.php">Batting</a></li>
                                    <li><a href="http://localhost/IPLT20/primex/bowler.php">Bowling</a>
                                    </li>
								</ul>
							</li>
                            <li><a href="#">Account</a>
								<ul>
									<li><a href="http://localhost/IPLT20/primex/profile.php">Profile</a></li>
                                    <li><a href="http://localhost/IPLT20/login/logout.php?logout">Logout</a>
                                    </li>
								</ul>
							</li>
							<li>							
									<form action="http://localhost/IPLT20/primex/search.php" method="GET">  
										<input type="text" name="search" style="margin-top: 20px;" /><br />  
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
<section id="content"><div class="ic"></div>
<div class="camera-wrapper">
    <div id="camera" class="camera-wrap">
        <div data-src="images/index_slide01.jpg">
            <div class="fadeIn camera_caption">
                <h2 class="text_1 color_1">Once an RCB'ian, Always an RCB'ian!</h2>
                <a class="btn_1" href="#">RCB</a>
            </div>
        </div>
        <div data-src="images/index_slide02.jpg">
            <div class="fadeIn camera_caption">
                <h2 class="text_1 color_1">Wistle Podu!</h2>
                <a class="btn_1" href="#">CSK</a>
            </div>
        </div>
        <div data-src="images/index_slide03.jpg">
            <div class="fadeIn camera_caption">
                <h2 class="text_1 color_1">Korbo Lorbo Jit bolo!</h2>
                <a class="btn_1" href="#">KKR</a>
            </div>
        </div>
    </div>
</div>

<?php
           echo "<a name='ti'></a> <table id='cskbg' BORDERCOLOR='RED'  border=9 style='width:70%; text-align:center; padding-right:100px'> 
										<caption>
											<csk></csk>
										</caption>";
										

							$res=mysqli_query($conn, "SELECT p1.player_name p1name,p2.player_name p2name,
														p3.player_name bowler,
														t1.name team1,t2.name team2,
														l.b1score,l.b2score,l.bowlerstat, l.t1score, l.t2score, l.match_number mn, l.season sea
														FROM 
														livescore l,player p1,player p2,team t1,team t2,player p3 
														where 
														l.batsman1=p1.player_id and 
														l.batsman2=p2.player_id and
														l.bowler=p3.player_id and
														l.team1=t1.team_id and
														l.team2=t2.team_id ");
							while($row = $res->fetch_assoc()) 
								{
								echo "<tr>";
								echo "<td>Live score</td><td>Target:</td><td>".$row["t2score"]."</td></tr>";
							    echo "<td>match number</td><td>".$row["mn"]."</td>";
								echo "<td>season</td><td>".$row["sea"]."</td>";echo "</tr><tr>";
								echo "<td>Team Batting</td><td>".$row["team1"]."</td><td>score</td><td>".$row["t1score"]."</td>";echo "</tr><tr>";
								echo "<td>".$row["p1name"]."</td><td>".$row["b1score"]."</td>";echo "</tr><tr>";
								echo "<td>".$row["p2name"]."</td><td>".$row["b2score"]."</td>";echo "</tr><tr>";
								
								echo "<td>Team Bowling</td><td>".$row["team2"]."</td>";echo "</tr><tr>";
								echo "<td>".$row["bowler"]."</td><td>".$row["bowlerstat"]."</td>";echo "<td></td><td><a href='http://localhost/iplt20/primex/index.php'>Refresh</a</td></tr>";
								echo "</tr>";
								echo "<tr><td><br></br></td></tr>";
								echo "<tr><td><br></br></td></tr>";
								
								}
								
								
		 ?>
		 
		 <META HTTP-EQUIV="refresh" CONTENT="30">

</section>

<!--========================================================
                          FOOTER
=========================================================-->

<script src="js/script.js"></script>
<embed src="http://localhost/IPLT20/primex/images/theme.mp3" autostart="true" loop="true"
                    width="2" height="0">
                     </embed>
</body>
</html>