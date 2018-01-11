<?php  
session_start();  
$user=$_SESSION['username'];
$message = "CSE_1100";
if(!$_SESSION['username'])  
{  
    header("Location: practicephp.php");//redirect to login page to secure the welcome page without login access.  
}

if(isset($_GET['msgq']))
{
	$message = $_GET['msgq'];
}

include("mysqli_database.php"); 

	if(isset($_POST["Import"])){
		
		$filename=$_FILES["file"]["tmp_name"];		
		
		if($_FILES["file"]["size"] > 0)
		{
		  	$file = fopen($filename, "r");
	        while (($getData = fgetcsv($file, 10000, ",")) !== FALSE)
	        {
				
	           $sql = "INSERT into $message (q_no,q,o_1,o_2,o_3,o_4,r) 
                   values ('".$getData[0]."','".$getData[1]."','".$getData[2]."','".$getData[3]."','".$getData[4]."','".$getData[5]."','".$getData[6]."')";
                   $result = mysqli_query($coni, $sql);
				if(!isset($result))
				{
					echo "<script type=\"text/javascript\">
							alert(\"Invalid File:Please Upload CSV File.\");
							window.location = \"question_upload.php?msgq=$message\"
						  </script>";		
				}
				else {
					  echo "<script type=\"text/javascript\">
						alert(\"CSV File has been successfully Imported.\");
						window.location = \"question_upload.php?msgq=$message\"
					</script>";
				}
	         }
			
	         fclose($file);	
		 }
	}

mysqli_close($coni);
?>