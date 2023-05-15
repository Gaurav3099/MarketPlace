<?php
// $dbservername = "localhost";
// $dbusername = "root";
// $dbpassword = "Zacien@377"; Gauravp@2023
// $dbName = "SpartanMarketplaceDB";

$dbservername = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbName = "spartanmarketplace272";

$conn = mysqli_connect($dbservername, $dbusername, $dbpassword, $dbName);

if (mysqli_connect_errno())
{
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    //you need to exit the script, if there is an error
    exit();
}
?>