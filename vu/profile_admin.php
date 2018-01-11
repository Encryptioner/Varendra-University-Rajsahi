<?php  
session_start();  
$user=$_SESSION['username'];

if(!$_SESSION['username'])  
{  
    header("Location: practicephp.php");//redirect to login page to secure the welcome page without login access.  
}  
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset = "utf-8">
	<link rel="stylesheet" href="css/homehead.css">
	<link rel="stylesheet" href="css/homeimage.css">
	<link rel="stylesheet" href="css/table.css">
	<style>
	body {
    background-color:#eee;
	}
	</style>
</head>
<body>

<?php include("header.php"); ?>
<?php include("navigator3.php"); ?>
</br>

<!-Database Connection->

<?php
include("mysql_database.php");

$result = mysql_query("SELECT * FROM register where username='{$user}'");
$row = mysql_fetch_array($result);
?>

<?php

	if(isset($_GET['msg']))
	{
		$message = $_GET['msg'];
		if($message == 0)
		{
		?>
		<h3 style = "color:green; text-align:center;">Profile Updated Successfully.</h3>
		<?php		
		}
	}
?>

<h1 style="text-align: center;"><a href="edit.php">Edit Profile</a></h1>
</br></br>


<!-user table->


<h2 style = "background-color:#eff; color:black; text-align:center;">Profile Info</h2>
<table class="center1">
 <tr >
    <td id="td01">Username</td>
    <td id="td01"><?php echo $row['username']; ?></td>
  </tr>
<tr>
    <td>Gender</td>
    <td><?php echo $row['gender']; ?></td>
  </tr>
<tr>
    <td>Email</td>
    <td><?php echo $row['emailid']; ?></td>
  </tr>
<tr>
    <td>Phone No</td>
    <td><?php echo $row['phone']; ?></td>
  </tr>
<tr>
    <td>Address</td>
    <td><?php echo $row['address']; ?></td>
  </tr>
<tr>
    <td>Registration Date</td>
    <td><?php echo $row['reg_date']; ?></td>
  </tr>
  </table>

<?php
echo "<br>";
echo "<br>";
mysql_close($con);  
?>
<?php include("footer2.php"); ?>

</body>
</html>