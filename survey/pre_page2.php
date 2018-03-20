<?php

require('DB.php');
session_start();
$quest1=$_POST['q1'];
$quest2=$_POST['q2'];
$quest3=$_POST['q3'];
$quest4=$_POST['q4'];
$quest5=$_POST['q5'];
$user=$_SESSION['user'];
$qid1="q1";
$qid2="q2";
$qid3="q3";
$qid4="q4";
$qid5="q5";



if(!empty($quest1)&&!empty($quest2)&&!empty($quest3)&&!empty($quest4)&&!empty($quest5)){
    
    $sql1="INSERT INTO PreTest(UserID,QuestionID,Answers) VALUES('$user','$qid1','$quest1')";
    $sql2="INSERT INTO PreTest(UserID,QuestionID,Answers) VALUES('$user','$qid2','$quest2')";
    $sql3="INSERT INTO PreTest(UserID,QuestionID,Answers) VALUES('$user','$qid3','$quest3')";
    $sql4="INSERT INTO PreTest(UserID,QuestionID,Answers) VALUES('$user','$qid4','$quest4')";
    $sql5="INSERT INTO PreTest(UserID,QuestionID,Answers) VALUES('$user','$qid5','$quest5')";
    
    $connection->query($sql1);
    $connection->query($sql2);
    $connection->query($sql3);
    $connection->query($sql4);
    $connection->query($sql5);
    
}
else{
    header("location:pre_page1.php");
    
}
?>