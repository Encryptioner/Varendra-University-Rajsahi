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
<?php include("navigator2.php"); ?>
</br>

<!-Database Connection->

<?php
include("mysql_database.php");


$result = mysql_query("
select username, exam, correct, wrong, not_answered from 
(select username, exam, correct, wrong, not_answered from (SELECT username, exam, correct, wrong, not_answered, UNIX_TIMESTAMP(reg_date) as dat, reg_date from `register` Order by reg_date)as t order by exam) as t
order by correct desc");
$n=mysql_num_rows($result);
for($i=0;$i<$n;$i++)  
{
$row = mysql_fetch_array($result);
if($user==$row['username'])
{
	$rank=$i+1;
	break;
}
}

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
<tr>
    <td>No of exam</td>
    <td><?php echo $row['exam']; ?></td>
  </tr>
  <tr>
    <td>Rank</td>
    <td><?php echo $rank; ?></td>
  </tr>
  </table>

<?php
echo "<br>";
echo "<br>";


//<!-Database Connection->


include("mysqli_database.php");

$sql="SELECT * FROM $user";
if(!mysqli_query($coni , $sql))
{
	$n=0;
	mysqli_close($coni);
}
else
{
$result = mysql_query("SELECT * FROM $user");
$n=mysql_num_rows($result);
}
 
 
//<!-Submission Table->
 
 
?>
<h2 style = "background-color:#eff; color:black; text-align:center;">Submission List</h2>
<table class="center">
  <tr>
    <th>No</th>
    <th>Submission Id</th>
	<th>Question Name</th>
    <th>Correctly Answered</th>
	<th>Wrongly Answered</th>
	<th>Not Answered</th>
	<th>Submission Date</th>
  </tr>
<?php
if($n==0)
{
?>
<tr>
    <td>x</td>
    <td>x</td>
    <td>x</td>
	<td>x</td>
	<td>x</td>
	<td>x</td>
	<td>x</td>
  </tr>
<?php
}
else
{
for($i=0;$i<$n;$i++)  
{
$row = mysql_fetch_array($result);
?>
<tr>
    <td><?php echo $i+1; ?></td>
    <td><?php echo $row['sub_id']; ?></td>
    <td><?php echo $row['question']; ?></td>
	<td><?php echo $row['correct']; ?></td>
	<td><?php echo $row['wrong']; ?></td>
	<td><?php echo $row['not_answered']; ?></td>
	<td><?php echo $row['sub_date']; ?></td>
  </tr>

<?php
}
}
mysql_close($con);  
?>
</table>
</br> </br> </br>
<?php include("footer2.php"); ?>

</body>
</html>