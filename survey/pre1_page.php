<?php 
$host="localhost";
$user="kazmi01";
$pass="";
$db="Survey";
$connection=mysqli_connect($host,$user,$pass,$db);
if($connection->connect_error){
    die("connection failed:". $conn->connect_error);
}

$SchoolName= $_POST['school'];
$GradeLevel= $_POST['grade'];
$Age= $_POST['age'];
$Gender= $_POST['gender'];
if(!empty($SchoolName)&&!empty($GradeLevel)&&!empty($Age)&&!empty($Gender)){
    $sql="INSERT INTO Users(SchoolName,GradeLevel,Age,Gender) VALUES ('$SchoolName','$GradeLevel','$Age','$Gender')";
    $connection->query($sql);
    
}
else{
    header("location:index.html");
}
$connection->close();
?>
<!DOCTYPE html>
<html lang = "en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">		
		<title>H2O</title>
		<link rel="stylesheet" type="text/css" href="css/survey.css" />
	</head>
	<body>
		<div id="wrapper-header">
			<div id="header">
				<img id="logo" src="http://hearthavenoutreach.org/wp-content/uploads/2017/08/H2O-logo-PNG-clear-background-white-600.png" alt="logo" />
			</div>
		</div>
	</body>
</html>