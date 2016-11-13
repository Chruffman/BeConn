<?php
require("phpsqlinfo_dbinfo.php");

// Gets data from URL parameters
$name = $_GET['name'];
$address = $_GET['address'];
$hostName = $_GET['hostName'];
$lat = $_GET['lat'];
$lng = $_GET['lng'];
//$time = $_GET['time'];
$time = $_GET['2000-01-01']; //temporary var for testing purposes
$zipcode = $_GET['zipcode'];

// Opens a connection to a MySQL server
$connection=mysql_connect ("localhost", $username, $password);
if (!$connection) {
  die('Not connected : ' . mysql_error());
}

// Set the active MySQL database
$db_selected = mysql_select_db($database, $connection);
if (!$db_selected) {
  die ('Can\'t use db : ' . mysql_error());
}

// Insert new row with user data
$query = sprintf("INSERT INTO Event " .
         " (Id, Name, Address, Longitude, Latitude, Host, Time, Zip) " .
         " VALUES (NULL, '%s', '%s', '%s', '%s', '%s','%s','s');",
         mysql_real_escape_string($name),
         mysql_real_escape_string($address),
         mysql_real_escape_string($lng),
         mysql_real_escape_string($lat),
         mysql_real_escape_string($hostName),
         mysql_real_escape_string($time),
         mysql_real_escape_string($zip));


$result = mysql_query($query);

if (!$result) {
  die('Invalid query: ' . mysql_error());
}

?>
