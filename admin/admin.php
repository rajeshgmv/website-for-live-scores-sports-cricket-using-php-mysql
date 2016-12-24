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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin page - <?php echo $userRow['email']; ?></title>
<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>
<div id="mysqlii">
	<div id="left">
    <label>Home</label>
    </div>
    <div id="right">
    	<div id="content">
        	hi Admin <?php echo $userRow['firstname']; ?>&nbsp;<a href="http://localhost/iplt20/login/logout.php?logout">Sign Out</a>
        </div>
    </div>
</div>

<div id="body">
	
    <p>you are in Admins page</p>
	
	
	
	
</div>
<div">
	
    
	
	<a href="http://localhost/iplt20/admin/update.php">Click here to update the existing user</a>
	
	
</div>
<div ">
	
    
	
	<a href="http://localhost/iplt20/admin/insert.php">Click here to insert new user</a>
	
	
</div>
<div ">
	
    
	
	<a href="http://localhost/iplt20/admin/banuser.php">Click here to Ban user</a>
	
	
</div>
</body>
</html>