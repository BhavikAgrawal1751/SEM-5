<?php
$objConn = mysqli_connect("localhost","root","","tybca");
if ($objConn -> connect_errno) {
  echo "Failed to connect to MySQL: " . $objConn -> connect_error;
  exit();
}
echo "MySQL Connection is Successful";

$query = "SELECT * FROM employees LIMIT 1,1";

$result = $objConn->query($query);

while ($row = $result->fetch_assoc()) {
   echo '<pre>';
		print_r($row);
		
}
?>