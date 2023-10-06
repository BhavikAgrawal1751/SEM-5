<?php
$objConn = mysqli_connect("localhost","root","","tybca");
if ($objConn -> connect_errno) {
  echo "Failed to connect to MySQL: " . $objConn -> connect_error;
  exit();
}
echo "MySQL Connection is Successful";
?>