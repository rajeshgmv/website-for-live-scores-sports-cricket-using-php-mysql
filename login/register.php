<?php

if(isset($_POST['btn-GoBack']))
{
header("Location: index.php");

}



if(isset($_POST['btn-proceed']))
{
	
	
		
include_once 'database_connection.php';	
$useri = $_SESSION['user_id'];
	
	$res=mysqli_query($db2,"select 
		shoes.shoe_Img as image, 
		shoes.shoe_Id as shoeid,
		customer.id as custid, 
		brand.brand_Name brand, 
		color.color_Name as ccolor, 
		size.size_Number as snumber, 
		ROUND(sale.discount,2) as  cdiscount, 
		ROUND(shoes.cost,2) as scost, 
		ROUND(shoes.cost*(1-sale.discount),2) as cad
		from cart, customer, shoes, brand, color, size, shoesareofcolor, shoesgoondeal,  sale where 
		cart.cust_Id = customer.id and 
		cart.shoe_Id = shoes.shoe_Id and
		shoes.shoe_Id =	shoesareofcolor.shoe_Id and
		shoesareofcolor.color_Id = color.color_Id and 
		shoes.shoe_Id = shoesgoondeal.shoe_Id and 
		shoesgoondeal.sale_Id = sale.sale_Id and  
		shoes.shoe_Id=size.shoe_Id and 
		shoes.brand_Id=brand.brand_Id  and
		cart.cust_Id='$useri'");
	while($row = $res->fetch_assoc()) 
	{
		 $quantity = mysqli_real_escape_string($conn,$_POST['quantity']);
		 
		 $cost = $row["cad"];
		 $shoeid = $row["shoeid"];
		 $cusid = $row["custid"];
	    if(mysqli_query($db2, "INSERT INTO alsohasorderhistory(`cust_Id`, `orderdate`,`shoe_Id`, `quantity`, `Review`, `totalcost`) VALUES ( '$cusid', now(),'$shoeid', '$quantity', '', '$cost');"))
	     {
		
		

		 }
		
	}
		mysqli_query($db2, "DELETE FROM cart where cust_Id='$useri'");
		header("Location: success.html");
}
if(isset($_POST['btn-cancel']))
{
	include_once 'database_connection.php';	
	$useri = $_SESSION['user_id'];
	mysqli_query($db2, "DELETE FROM cart where cust_Id='$useri'");
	header("Location: index.php");

}


?>