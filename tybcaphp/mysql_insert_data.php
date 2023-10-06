<?php
$objConn = mysqli_connect("localhost","root","","tybca");
if ($objConn -> connect_errno) {
  echo "Failed to connect to MySQL: " . $objConn -> connect_error;
  exit();
}
echo "MySQL Connection is Successful";

$query = "INSERT INTO employees SET ID=1, LastName='S', FirstName='Amit', Age = 30;";
$objConn->query($query);

echo "<br />Record Inserted Successfully";
?>