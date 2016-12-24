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
if(isset($_POST['update']))
{
$email = mysqli_real_escape_string($conn,$_POST['email']);
$typeid = mysqli_real_escape_string($conn,$_POST['typeid']);
$sql = "UPDATE user SET usertypeid=$typeid WHERE userid='$email'";
if (mysqli_query($conn, $sql)) {
    ?>
        <script>alert('successfully updated ');</script>
        <?php
		
	
} else {
    ?>
        <script>alert('error while updating ');</script>
        <?php
		
}
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin update page - <?php echo $userRow['email']; ?></title>
<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>
<div id="mysqli">
<div id="left">
<label>Home</label>
</div>
<div id="right">
<div id="content">
hi Admin <?php echo $userRow['firstname']; ?>&nbsp;<a href="http://localhost/iplt20/login/logout.php?logout">Sign Out</a>
</div>
</div>
<div id="content">
<a href="http://localhost/iplt20/admin/admin.php">click here to goto admin page</a>
</div>
</div>


<center>
<div id="login-form">
<form method="post">
<table align="center" width="30%" border="0">
<tr>
<td><input type="text" name="email" placeholder="Enter Email address to be updated" required /></td>
</tr>
<tr>
<td><input type="password" name="typeid" placeholder="enter user id type" required /></td>
</tr>
<tr>
<td><button type="submit" name="update">Submit for update In</button></td>
</tr>
</table>
</form>
</div>
</center>
</body>
</html>