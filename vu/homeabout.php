<?php
session_start();
$_SESSION['username']="";//if not logged username is empty string
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset = "utf-8">
	<link rel="stylesheet" href="css/homehead.css">
	<link rel="stylesheet" href="css/homeimage.css">
	<link rel="stylesheet" href="css/table.css">
</head>
<body>

<?php include("header.php"); ?>
<?php include("navigator1.php"); ?>

</br>
<div class="contentsection templete clear">
		<div class="about">
			<h2>About the System</h2>
			</br>
			<img style="margin-right:50px; margin-left:100px;" src="image/e-exam.gif" alt="Online Quiz Test"/>
			<img src="image/mcq.jpg" alt="MCQ"/>
			</br>
			</br>
			<p>
				MCQ tests are strong indicator of someone's skill. Here <a style="color:red"><b>Online Quiz Test</b></a> gives you the chance to test your skill.
				You can compete with other user and get your place in ranking. You can even improve your knowledge knowing the answers and try it another time. 
				Have a good exam. 
			<img src="image/smile.png" alt="Smiley face" style="width:42px;height:42px;"/>
			</p>
			</br>
			<img src="image/mcqquiz.png" alt="E-Examination"/>
			<img src="image/answersheet.jpg" alt="MCQ"/>
		</div>
	</div>
<?php include("footer.php"); ?>

</body>
</html>
