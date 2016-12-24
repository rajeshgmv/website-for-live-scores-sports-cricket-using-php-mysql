<?php
session_start();
include_once 'dbconnect.php';

if(isset($_SESSION['user'])!="")
{
	header("Location: C:\wamp\www\IPLT20\users\home.php");
}

if(isset($_POST['btn-login']))
{

	$email = mysqli_real_escape_string($conn,$_POST['email']);
	$upass = mysqli_real_escape_string($conn,$_POST['pass']);
	
	$res=mysqli_query($conn,"SELECT * FROM user WHERE userid='$email'");
	$row=mysqli_fetch_array($res);
	$result= mysqli_query($conn,"insert into login values('$email',now())");
	
	
	if($row['password']== md5($upass))
	{
		$_SESSION['user'] = $row['userid'];
		if($row['usertypeid']== 3)
		{
		header("Location: http://localhost/iplt20/primex/index.php");
		}
		else if($row['usertypeid']== 1)
		{
		header("Location: http://localhost/iplt20/admin/admin.php");
		}
		else if($row['usertypeid']== 2)
		{
		header("Location: http://localhost/phpmyadmin/#PMAURL-4:sql.php?db=iplt20&table=livescore&server=1&target=&token=c66379f2f077d07f5a486e1c91a37996");
		}
		else if($row['usertypeid']== 0)
		{
		?>
        <script>alert('Sorry! You have been Banned from site ');</script>
        <?php
		
		}
	}
	else
	{


		?>
        <script>alert('wrong details');</script>
        <?php
	}
	
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>IPLBUZZ Login</title>
<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body background="http://localhost/iplt20/primex/images/signin.png">
<div class="brand put-left">
                        <h1>
                            <a href="http://localhost/iplt20/primex/NOindex.php">
                                <img src="http://localhost/iplt20/primex/images/blogo.png" alt="Logo"/>
								
                            </a>
                        </h1>
                    </div>
<center>
<div id="login-form">
<form method="post">
<table align="center" width="30%" border="0" >
<tr>
<td><input type="text" name="email" placeholder="Your Email" required /></td>
</tr>
<tr>
<td><input type="password" name="pass" placeholder="Your Password" required /></td>
</tr>
<tr>
<td><button type="submit" name="btn-login">Sign In</button></td>
</tr>
<tr>
<td><a href="register.php">Click here to Sign Up</a></td>
</tr>
</table>
</form>
</div>
</center>
</body>
</html>