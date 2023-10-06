<?php
$objConn = mysqli_connect("localhost","root","","tybca");
if ($objConn -> connect_errno) {
  echo "Failed to connect to MySQL: " . $objConn -> connect_error;
  exit();
}
echo "MySQL Connection is Successful";

$query = "CREATE TABLE employees (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);";
$objConn->query($query);

echo "<br />Table Created Successfully";
?>