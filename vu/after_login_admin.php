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
<h1 style = "background-color:white; color:black; text-align:center;">Select Semester :</h1>

<h2 style = "background-color:white; color:black; text-align:center;"><a href="question_2.php?msgq=sem_1">Semester 1</a></h2>
<h2 style = "background-color:white; color:black; text-align:center;"><a href="question_2.php?msgq=sem_2">Semester 2</a></h2>
<h2 style = "background-color:white; color:black; text-align:center;"><a href="question_2.php?msgq=sem_3">Semester 3</a></h2>
<h2 style = "background-color:white; color:black; text-align:center;"><a href="question_2.php?msgq=sem_4">Semester 4</a></h2>
<h2 style = "background-color:white; color:black; text-align:center;"><a href="question_2.php?msgq=sem_5">Semester 5</a></h2>
<h2 style = "background-color:white; color:black; text-align:center;"><a href="question_2.php?msgq=sem_6">Semester 6</a></h2>
<h2 style = "background-color:white; color:black; text-align:center;"><a href="question_2.php?msgq=sem_7">Semester 7</a></h2>
<h2 style = "background-color:white; color:black; text-align:center;"><a href="question_2.php?msgq=sem_8">Semester 8</a></h2>
<h2 style = "background-color:white; color:black; text-align:center;"><a href="question_2.php?msgq=sem_9">Semester 9</a></h2>
<h2 style = "background-color:white; color:black; text-align:center;"><a href="question_2.php?msgq=sem_10">Semester 10</a></h2>
<h2 style = "background-color:white; color:black; text-align:center;"><a href="question_2.php?msgq=sem_11">Semester 11</a></h2>
<h2 style = "background-color:white; color:black; text-align:center;"><a href="question_2.php?msgq=sem_12">Semester 12</a></h2>

</br>
<?php include("footer2.php"); ?>

</body>
</html>

