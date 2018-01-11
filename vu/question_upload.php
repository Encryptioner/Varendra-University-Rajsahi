<?php  
session_start();  
$user=$_SESSION['username'];
$message = "computer_science_1";
if(!$_SESSION['username'])  
{  
	//echo $_SESSION['username']." not matched with database.<br>";
    header("Location: practicephp.php");//redirect to login page to secure the welcome page without login access.  
}  
?>
<?php

	if(isset($_GET['msgq']))
	{
		$message = $_GET['msgq'];
	}
?>
<!DOCTYPE html>

<html lang="en">

<head>
	<meta charset = "utf-8">
	<link rel="stylesheet" href="css/homehead.css">
	<link rel="stylesheet" href="css/homeimage.css">
	<link rel="stylesheet" href="css/table.css">
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	
	<link rel="stylesheet" href="admin_asset/bootstrap/css/bootstrap.min.css" />
    <script src="admin_asset/bootstrap/js/bootstrap.min.js" /></script>
 
</head>

<body onload="">

<?php include("header.php"); ?>
<?php include("navigator3.php"); ?>
<?php include("mysql_database.php"); ?>
<?php
$result = mysql_query("select * from $message");
$n=mysql_num_rows($result);
?>

<div id="page-wrap">
</br>
<h1><b><font size="6"><?php echo $message; ?> :</font></b></h1></br>
<?php

if($n!=0)
{
?>
</br>
<h1><b><font size="4">MCQ Quiz :</font></b></h1>
</br>

<?php
}
for($i=0;$i<$n;$i++)  
{
$row = mysql_fetch_array($result)  
?>

<p> <?php
	if($row['q_no']=="0"){continue;}
	echo $row['q_no'];
	echo ". ";
	echo $row['q']." ";
	echo "<br><br>";
	?>
</p>
	 
	A) <?php echo $row['o_1']; ?>
	<br><br>
	
	B) <?php echo $row['o_2']; ?>
	<br><br>
	
	C) <?php echo $row['o_3']; ?>
	<br><br>
	
	D) <?php echo $row['o_4']; ?>
	<br><br>
	
	Answer: <?php echo $row['r']; ?>
	<br><br>
	
<?php
}
?>

</br>
</br>
</br>
<div id="wrap">
        <div class="container">
            <div class="row">
 
                <form class="form-horizontal" action="question_csv_import.php?msgq=<?php echo $message; ?>" method="post" name="upload_excel" enctype="multipart/form-data">
                    <fieldset>
 
                        <!-- Form Name 
                        <legend><b>Upload New Question Set :</b></legend>
						-->
                        <!-- File Button -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="filebutton">Select Question File (In CSV Format)</label>
                            <div class="col-md-4">
                                <input type="file" name="file" required autocomplete="off" id="file" class="input-large">
                            </div>
                        </div>
 
                        <!-- Button -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="singlebutton">Upload New Question Set</label>
                            <div class="col-md-4">
                                <button type="submit" id="submit" name="Import" class="btn btn-primary button-loading" data-loading-text="Loading...">Upload</button>
                            </div>
                        </div>
 
                    </fieldset>
                </form>
 
            </div>
        </div>
    </div>	

</div>
<?php
mysql_close($con); 
?>
</br>
<?php include("footer2.php"); ?>
</body>

</html>
