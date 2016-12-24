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
    <title>Bowler</title>
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
<body ">
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
							<img src="images/bowllogo.jpg" alt="Logo"/>
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
                    Batsmen record by:
                    <ul id="filters">
					    <li><a href="#EC"> Economy</a></li>
						<li><a href="#md"> Maidens</a></li>
						<li><a href="#wc"> Wickets</a></li>
                        
                    </ul>
                </div>
            </div>
        </div>
    </div>
<center>
         
		 <?php
           echo "<a name='EC'></a> <table id='cskbg' border=9 style='width:70%; text-align:center; padding-right:20px'> 
										<caption>
											<csk><u>Bowler record by best economy</u></csk>
										</caption>
										
										<tr>
											<th>Player</th>
											<th>Matches Played</th>
											<th>Team Name</th>
											<th>economy</th>
											<th>maidens</th>
											<th>overs</th>
											<th>runs</th>
											<th>best bowling</th>
											<th>wickets</th>
										</tr>";


							$res=mysqli_query($conn, "select * from player p,bowler b,team t where p.player_id=b.player_id and p.team_id=t.team_id ORDER BY `b`.`economy` ASC limit 20 ");
							while($row = $res->fetch_assoc()) 
								{
								echo "<tr>";
							    echo "<td>".$row["player_name"]."</td>";
								echo "<td>".$row["Matches_played"]."</td>";
								echo "<td>".$row["name"]."</td>";
								echo "<td>".$row["economy"]."</td>";
								echo "<td>".$row["maidens"]."</td>";
								echo "<td>".$row["overs"]."</td>";
								echo "<td>".$row["runs"]."</td>";
								echo "<td>".$row["best_bowling"]."</td>";
								echo "<td>".$row["wickets"]."</td>";
								echo "</tr>";
								}
		 ?>
		 <?php
           echo "<a name='md'></a> <table id='cskbg' border=9 style='width:70%; text-align:center; padding-right:20px'> 
										<caption>
											<csk><u>Bowler record by highest Maidens</u></csk>
										</caption>
										
											<tr>
											<th>Player</th>
											<th>Matches Played</th>
											<th>Team Name</th>
											<th>economy</th>
											<th>maidens</th>
											<th>overs</th>
											<th>runs</th>
											<th>best bowling</th>
											<th>wickets</th>
										</tr>";


							$res=mysqli_query($conn, "select * from player p,bowler b,team t where p.player_id=b.player_id and p.team_id=t.team_id ORDER BY `b`.`maidens` DESC limit 20 ");
							while($row = $res->fetch_assoc()) 
								{
								echo "<tr>";
							    echo "<td>".$row["player_name"]."</td>";
								echo "<td>".$row["Matches_played"]."</td>";
								echo "<td>".$row["name"]."</td>";
								echo "<td>".$row["economy"]."</td>";
								echo "<td>".$row["maidens"]."</td>";
								echo "<td>".$row["overs"]."</td>";
								echo "<td>".$row["runs"]."</td>";
								echo "<td>".$row["best_bowling"]."</td>";
								echo "<td>".$row["wickets"]."</td>";
								echo "</tr>";
								}
		 ?>
		 <?php
           echo "<a name='wc'></a> <table id='cskbg' border=9 style='width:70%; text-align:center; padding-right:20px'> 
										<caption>
											<csk><u>Bowler record by highest Wickets</u></csk>
										</caption>
										
											<tr>
											<th>Player</th>
											<th>Matches Played</th>
											<th>Team Name</th>
											<th>economy</th>
											<th>maidens</th>
											<th>overs</th>
											<th>runs</th>
											<th>best bowling</th>
											<th>wickets</th>
										</tr>";


							$res=mysqli_query($conn, "select * from player p,bowler b,team t where p.player_id=b.player_id and p.team_id=t.team_id ORDER BY `b`.`wickets` DESC limit 20 ");
							while($row = $res->fetch_assoc()) 
								{
								echo "<tr>";
							    echo "<td>".$row["player_name"]."</td>";
								echo "<td>".$row["Matches_played"]."</td>";
								echo "<td>".$row["name"]."</td>";
								echo "<td>".$row["economy"]."</td>";
								echo "<td>".$row["maidens"]."</td>";
								echo "<td>".$row["overs"]."</td>";
								echo "<td>".$row["runs"]."</td>";
								echo "<td>".$row["best_bowling"]."</td>";
								echo "<td>".$row["wickets"]."</td>";
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