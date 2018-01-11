<?php  
session_start();  
$user=$_SESSION['username'];
$message = "sem_1";
if(!$_SESSION['username'])  
{  
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
<html>
<head>
	<meta charset = "utf-8">
	<link rel="stylesheet" href="css/homehead.css">
	<link rel="stylesheet" href="css/homeimage.css">
	<link rel="stylesheet" href="css/table.css">
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	
	<link rel="stylesheet" href="admin_asset/bootstrap/css/bootstrap.min.css" />
    <script src="admin_asset/bootstrap/js/bootstrap.min.js" /></script>
	<style>
	body {
    background-color:#eee;
	}
	</style>
</head>
<body>

<?php include("header.php"); ?>
<?php
if($user!="admin")
{
	include("navigator2.php"); 
}
else
{
	include("navigator3.php");
}
?>
<?php include("mysql_database.php"); ?>
<?php include("mysqli_database.php"); ?>
</br>
<?php
$result = mysql_query("select * from $message");
$n=mysql_num_rows($result);

for($i=0;$i<$n;$i++)  
{
$row = mysql_fetch_array($result);
if($user!="admin")
{
?>
<h3 style="text-align: center;"><a href="test.php?msgq=<?php echo $row['course_no']; ?>"><?php echo $row['course_no']; ?></a></h3>
<?php
}
else
{
?>
<h3 style="text-align: center;"><a href="question_upload.php?msgq=<?php echo $row['course_no']; ?>"><?php echo $row['course_no']; ?></a></h3>

<?php
$course=$row['course_no'];
$sql = "CREATE TABLE IF NOT EXISTS $course(
q_no INT PRIMARY KEY,q VARCHAR(250) NOT NULL,
o_1 VARCHAR(50) NOT NULL,o_2 VARCHAR(50) NOT NULL,o_3 VARCHAR(50) NOT NULL,o_4 VARCHAR(50) NOT NULL,r VARCHAR(50) NOT NULL
)";

if (mysqli_query($coni, $sql)) {
    //echo "Create or replace view user created successfully."."<br>";
} else {
    echo "unsuccessful view submission" . mysqli_error($coni);
}
}
}

mysql_close($con);
mysqli_close($coni);
if($user=="admin")
{
?>
</br></br>
<div id="page-wrap">
	<div id="wrap">
        <div class="container">
            <div class="row">
 
                <form class="form-horizontal" action="course_csv_import.php?msgq=<?php echo $message; ?>" method="post" name="upload_excel" enctype="multipart/form-data">
                    <fieldset>
 
                        <!-- Form Name 
                        <legend><b>Update Course Info :</b></legend>
						-->
                        <!-- File Button -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="filebutton">Select Course File (In CSV Format)</label>
                            <div class="col-md-4">
                                <input type="file" name="file" required autocomplete="off" id="file" class="input-large">
                            </div>
                        </div>
 
                        <!-- Button -->
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="singlebutton">Update Course Info</label>
                            <div class="col-md-4">
                                <button type="submit" id="submit" name="Import" class="btn btn-primary button-loading" data-loading-text="Loading...">Update</button>
                            </div>
                        </div>
 
                    </fieldset>
                </form>
 
            </div>
        </div>
    </div>
</div>
<?php
}
?>
</br>
<?php include("footer2.php"); ?>

</body>
</html>

