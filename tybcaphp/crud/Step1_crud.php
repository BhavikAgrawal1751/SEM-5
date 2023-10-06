<html>
<body>
<?php

$servername="localhost";
$username="root";
$password="";
$database="_____________"; // Remove Line and your Database Name write Here

$conn=mysqli_connect($servername,$username,$password,$database);
$sql="______"; // Remove line and insert,update and delete query Goes Here......
$result=mysqli_query($conn,$sql);

if($result){
  echo "inserted";
}
else {
  echo "Not inserted";
}
?>

</body>
</html>
