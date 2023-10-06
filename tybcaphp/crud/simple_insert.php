<html>
<body>
<?php

$servername="localhost";
$username="root";
$password="";
$database="emp";

$conn=mysqli_connect($servername,$username,$password,$database);
$sql="INSERT INTO `stu`(`id`, `name`) VALUES ('1','abc')";
$result=mysqli_query($conn,$sql);
?>

</body>
</html>
