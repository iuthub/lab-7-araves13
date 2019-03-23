<?php session_start();
    $servername="localhost";
    $username="root";
    $password="root";
    $dbname="blog";
    $db=new PDO("mysql:host=$servername;dbname=$dbname",$username,$password);
?>
