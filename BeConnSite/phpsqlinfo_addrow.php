<?php
require("phpsqlinfo_dbinfo.php");

// Gets data from URL parameters
if(issit($_POST)) {
    $name = $_POST['name'];
    $address = $_POST['address'];
    $hostName = $_POST['hostName'];
    $lat = $_POST['lat'];
    $lng = $_POST['lng'];
//$time = $_GET['time'];
    $time = '2000-01-01'; //temporary var for testing purposes
    $zipcode = '80808';//$_GET['zipcode'];
}
// Opens a connection to a MySQL server
$connection=mysqli_connect ($host, $username, $password,$table);
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

// Set the active MySQL database
//$db_selected = mysql_select_db($database, $connection);
//if (!$db_selected) {
//  die ('Can\'t use db : ' . mysql_error());
//}

// Insert new row with user data
$query = sprintf("INSERT INTO Event " .
         //" (Id, Name, Address, Longitude, Latitude, Host, Time, Zip) " .
         " VALUES (NULL, '%s', '%s', '%s', '%s', '%s','%s','s');",
         mysqli_real_escape_string($connection,$name),
         mysqli_real_escape_string($connection,$address),
         mysqli_real_escape_string($connection,$lng),
         mysqli_real_escape_string($connection,$lat),
         mysqli_real_escape_string($connection,$hostName),
         mysqli_real_escape_string($connection,$time),
         mysqli_real_escape_string($connection,$zipcode));


$result = mysqli_query($connection,$query);

if (!$result) {
  die('Invalid query: ' . mysqli_error($connection));
}

?>
