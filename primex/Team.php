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
$teamid = $_GET['teamid'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Team</title>
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
							<img src="images/team/<?php echo $teamid; ?>/logo.png" alt="Logo"/>
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
                    Categories:
                    <ul id="filters">
						<li><a href="#Ti"> Team Info</a></li>
						<li><a href="#pl"> Players</a></li>
                        <li><a href="#bm"> Batsmen</a></li>
                        <li><a href="#bw"> Bowler</a></li>
                        <li><a href="#cap"> Captain </a></li>
                        <li><a href="#wk"> wicketkeeper</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
<center>
         <?php
           echo "<a name='ti'></a> <table id='cskbg' border=9 style='width:70%; text-align:center; padding-right:100px'> 
										<caption>
											<csk><u>Team Info</u></csk>
										</caption>";
										

							$res=mysqli_query($conn, "Select name, city, owner, coach, ground, matches_played, matches_won,matches_lost from team where team_id='$teamid' ");
							while($row = $res->fetch_assoc()) 
								{
								echo "<tr>";
							    echo "<td>Team</td><td>".$row["name"]."</td>";echo "</tr><tr>";
								echo "<td>City</td><td>".$row["city"]."</td>";echo "</tr><tr>";
								echo "<td>Owner</td><td>".$row["owner"]."</td>";echo "</tr><tr>";
								echo "<td>Coach</td><td>".$row["coach"]."</td>";echo "</tr><tr>";
								echo "<td>Ground</td><td>".$row["ground"]."</td>";echo "</tr><tr>";
								echo "<td>Matches Played</td><td>".$row["matches_played"]."</td>";echo "</tr><tr>";
								echo "<td>Matches won</td><td>".$row["matches_won"]."</td>";echo "</tr><tr>";
								echo "<td>Matches lost</td><td>".$row["matches_lost"]."</td>";echo "</tr>";
								echo "</tr>";
								}
								$res=mysqli_query($conn, "Select nwins,team_id from numberofwins where team_id='$teamid' ");
							while($row = $res->fetch_assoc()) 
								{
								echo "<tr>";
							    echo "<td>No of titles</td><td>".$row["nwins"]."</td>";
								echo "</tr>";
								}
								$res=mysqli_query($conn, "Select nrunners,team_id from numberofrunnerss where team_id='$teamid' ");
							while($row = $res->fetch_assoc()) 
								{
								echo "<tr>";
							    echo "<td>No of runner titles</td><td>".$row["nrunners"]."</td>";
								echo "</tr>";
								}
								
		 ?>
		 <?php
           echo "<a name='pl'></a> <table id='cskbg' border=9 style='width:70%; text-align:center; padding-right:20px'> 
										<caption>
											<csk><u>Player</u></csk>
										</caption>
										
										<tr>
											<th>Player</th>
											<th>Matches Played</th>
											<th>Innings played</th>
										</tr>";


							$res=mysqli_query($conn, "SELECT * from player where team_id='$teamid' ");
							while($row = $res->fetch_assoc()) 
								{
								echo "<tr>";
							    echo "<td>".$row["player_name"]."</td>";
								echo "<td>".$row["Matches_played"]."</td>";
								echo "<td>".$row["Innings_played"]."</td>";
								echo "</tr>";
								}
		 ?>
         <?php
           echo "<a name='bm'></a> <table id='cskbg' border=9 style='width:70%; text-align:center; padding-right:20px'> 
										<caption>
											<csk><u>Batsmen</u></csk>
										</caption>
										
										<tr>
											<th>Player</th>
											<th>Matches Played</th>
											<th>Innings played</th>
											<th>Average</th>
											<th>Hundreds</th>
											<th>fifties</th>
											<th>Highest</th>
											<th>runs</th>
											<th>Not Outs</th>
											<th>StrikeRate</th>
									    </tr>";


							$res=mysqli_query($conn, "SELECT * from playerbatsemen where team_id='$teamid' ");
							while($row = $res->fetch_assoc()) 
								{
								echo "<tr>";
							    echo "<td>".$row["p1"]."</td>";
								echo "<td>".$row["p2"]."</td>";
								echo "<td>".$row["p3"]."</td>";
								echo "<td>".$row["b1"]."</td>";
								echo "<td>".$row["b2"]."</td>";
								echo "<td>".$row["b3"]."</td>";
								echo "<td>".$row["b4"]."</td>";
								echo "<td>".$row["b5"]."</td>";
								echo "<td>".$row["b6"]."</td>";
								echo "<td>".$row["b7"]."</td>";
								echo "</tr>";
								}
		 ?>
		
				<?php
					echo "<table  border=9 style='width:70% ' text-align = 'center' ><a name='bw'></a>
										<caption>
											<csk><u>Bowler</u></csk>
										</caption>
										
										<tr align = 'center'>
											<th>Player</th>
											<th>Matches Played</th>
											<th>Innings played</th>
											<th>economy</th>
											<th>maidens</th>
											<th>overs</th>
											<th>runs</th>
											<th>best bowling</th>
											<th>wickets</th>
										
									    </tr>";


						$res=mysqli_query($conn, "select * from playerbowler where team_id='$teamid' ");
						while($row = $res->fetch_assoc()) 
						{
						echo "<tr align = 'center'>";
						echo "<td>".$row["p1"]."</td>";
						echo "<td>".$row["p2"]."</td>";
						echo "<td>".$row["p3"]."</td>";
						echo "<td>".$row["bw1"]."</td>";
						echo "<td>".$row["bw2"]."</td>";
						echo "<td>".$row["bw3"]."</td>";
						echo "<td>".$row["bw4"]."</td>";
						echo "<td>".$row["bw5"]."</td>";
						echo "<td>".$row["bw6"]."</td>";
						echo "</tr>";
						}
				?>
		
				<?php
					echo "<table align = 'center' border=9 style='width:70% ' ><a name='cap'></a>
										<caption>
											<csk><u>Captain</u></csk>
										</caption>
										
										<tr align = 'center'>
											<th>Player</th>
											<th>Matches Played</th>
											<th>Innings played</th>
											<th>term</th>
											<th>wins</th>
											<th>loss</th>
																					
									    </tr>";


					$res=mysqli_query($conn, "SELECT * from playercaptain where team_id='$teamid' ");
					while($row = $res->fetch_assoc()) 
						{
						echo "<tr align = 'center'>";
						echo "<td>".$row["p1"]."</td>";
						echo "<td>".$row["p2"]."</td>";
						echo "<td>".$row["p3"]."</td>";
						echo "<td>".$row["c1"]."</td>";
						echo "<td>".$row["c2"]."</td>";
						echo "<td>".$row["c3"]."</td>";
						echo "</tr>";
						}
			?>
		
			<?php
					echo "<table  border=9 style='width:70% ' text-align = 'center' ><a name='wk'></a>
										<caption>
											<csk><u>Wicket Keeper</u></csk>
										</caption>
										
										<tr align = 'center'>
											<th>Player</th>
											<th>Matches Played</th>
											<th>Innings played</th>
											<th>stumps</th>
											<th>catches</th>
											<th>max_dismissals</th>
																					
									    </tr>";


$res=mysqli_query($conn, "SELECT * from playerwk where  team_id='$teamid' ");
while($row = $res->fetch_assoc()) 
{
echo "<tr align = 'center'>";
echo "<td>".$row["p1"]."</td>";
echo "<td>".$row["p2"]."</td>";
echo "<td>".$row["p3"]."</td>";
echo "<td>".$row["w1"]."</td>";
echo "<td>".$row["w2"]."</td>";
echo "<td>".$row["w3"]."</td>";
echo "</tr>";
}
?>

</center>
</section>

<!--========================================================
                          FOOTER
=========================================================-->
<script src="js/script.js"></script>
<embed src="http://localhost/IPLT20/primex/images/team/<?php echo $teamid; ?>/theme.mp3" autostart="true" loop="true"
                    width="2" height="0">
                     </embed>
</body>
</html>