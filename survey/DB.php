<?php
$host="localhost";
$user="kazmi01";
$pass="";
$db="Survey";
$connection=mysqli_connect($host,$user,$pass,$db);
if($connection->connect_error){
    die("connection failed:". $conn->connect_error);
}

?>