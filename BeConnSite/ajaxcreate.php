<?php

require 'phpsqlinfo_dbinfo.php';
//Fetching Values from URL
$name = $_POST['name'];
$address = $_POST['address'];
$lng = $_POST['lng'];
$lat = $_POST['lat'];
$hostname = $_POST['hostname'];

$time= $_POST['time'];
$zipcode=$_POST['zipcode'];

//Insert query
$connection = new  mysqli( $host, $username,$password,$database); // Establishing Connection with Server..
$query = mysqli_query($connection,"insert into Event(Name,Address,Longitude,Latitude,Host,Time,Zip) values ('$name','$address','$lng','$lat','$hostname','$time','$zipcode')");

echo "Event Created  Succesfully";
mysqli_close($connection); // Connection Closed
?>
