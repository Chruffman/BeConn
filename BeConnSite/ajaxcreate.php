<?php
require("phpsqlinfo_dbinfo.php");

$connection = mysqli_connect ($host, $username, $password,$database); // Establishing Connection with Server..

//Fetching Values from URL
$name=$_POST['name'];
$address=$POST['address'];
$lng=$POST['lng'];
$lat=$POST['lat'];
//for testing purposes
$time = '2000-01-01';
$zipcode = 80303;
//$time=$POST['time'];
//$zipcode=$POST['zipcode'];
//Insert query
//$query = mysqli_query($connection,"insert into Event(Name,Address,Longitude,Latitude,Host,Time,Zip)
//    values ('$name','$address','$lng','$lat','$time','$zipcode')");

//testing query
$query = mysqli_query($connection,"insert into Event(Name,Address,Longitude,Latitude,Host,Time,Zip) values ('anevent','103','-103.4403','40.0000','host','2000-01-01',80542);");
echo "Form Submitted Succesfully";
mysqli_close($connection); // Connection Closed
?>