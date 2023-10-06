<html>
<body>
<?php

$servername="localhost";
$username="root";
$password="";
$database="stu"; // Remove Line and your Database Name write Here

$conn=mysqli_connect($servername,$username,$password,$database);

//------------ADD_CODE_LINE_1--------------------------------------------------------
if($_SERVER['REQUEST_METHOD']='POST'){
$id=$_POST['txtid'];
$name=$_POST['txtname'];
}
//------------------------------------------------------------------------------

$sql="INSERT INTO `stu` (`txtid`, `txtname`) VALUES ('4', 'agrawal');"; // Remove line and insert,update and delete query Goes Here......
$result=mysqli_query($conn,$sql);

if($result){
  echo "inserted";
}
else {
  
  echo "Not inserted";
}
?>
<!---------------------ADD_CODE_LINE_2--------------------------.-->
<form action="dell.php" method="post" align="center">
id:<input type="text" name="txtid"><br><br>
name:<input type="text" name="txtname"><br><br>
<input type ="submit" name="btnsubmit" value="INSERT">
<!--------------------------------------------------------------.-->
</form>

</body>
</html>
