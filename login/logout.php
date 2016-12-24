<?php
session_start();
include_once 'dbconnect.php';
if(!isset($_SESSION['user']))
{
	header("Location: http://localhost/iplt20/login/index.php");
}

else if(isset($_SESSION['user'])!="")
{ 
	$logusr = $_SESSION['user'];
	$res=mysqli_query($conn,"SELECT * FROM userS WHERE userid='$logusr'");
	$row=mysqli_fetch_array($res);
	    if($row['usertypeid']== 3)
		{
		header("Location: http://localhost/iplt20/users/home.php");
		}
		else if($row['usertypeid']== 1)
		{
		header("Location: http://localhost/iplt20/admin/admin.php");
		}
		else if($row['usertypeid']== 2)
		{
		header("Location: http://localhost/iplt20/content/content.php");
		}
}

if(isset($_GET['logout']))
{
	session_destroy();
	unset($_SESSION['user']);
	header("Location: http://localhost/iplt20/login/index.php");
}
?>