<?php
session_start();//session starts here 

if(isset($_POST['submit'])){	
	$user = $_POST['username'];
	$password = $_POST['password'];
	
	$user = stripcslashes($user);
	$password = stripcslashes($password);
	$user = mysql_real_escape_string($user);
	$password = mysql_real_escape_string($password);// eliminates unnecessary characters
	
	// database connection
	include("mysql_database.php");

	$result = mysql_query("SELECT * FROM register WHERE username = '$user' AND password = '$password'")
				or die("Failed to query database " .mysql_error());
				
	$row = mysql_fetch_array($result);
	
	if($row['username'] == $user && $row['password'] == $password)
	{
		$_SESSION['username']=$_POST['username'];
		if($user!="admin")
		{
			header("location: after_login.php?");
		}
		else
		{
			header("location: after_login_admin.php?");
			//header("location: /project/application/controllers/Csv_import.php?");
			//redirect('Csv_import');
		}
		exit;
	}
	else 
	{
		header("location: login_form.php? msgl= 0");
		exit;
	}
}
mysql_close($con); 	
?>
	
	
	