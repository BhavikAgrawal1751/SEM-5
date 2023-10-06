<html>
<head>

<?php
$servername="localhost";
$username="root";
$password="";
$database="tyc";

$conn=mysqli_connect($servername,$username,$password,$database);

if($_SERVER['REQUEST_METHOD']='POST'){
$id1=$_POST['txtid'];
$name1=$_POST['txtname'];
}

if(isset($_POST['btninsert']))
{
    $sql="INSERT INTO `emp`(`id`, `name`) VALUES ('$id1','$name1')";
    $result=mysqli_query($conn,$sql);

    if($result){
      echo "inserted";
    }
    else {
      echo "not inserted";
    }
}
if(isset($_POST['btnupdate']))
{
    $sql="UPDATE `emp` SET `name`='$name1' WHERE `id`='$id1'";
    $result=mysqli_query($conn,$sql);

    if($result){
      echo "updated";
    }
    else {
      echo "not updated";
    }
}

if(isset($_POST['btndelete']))
{
    $sql="DELETE FROM `emp` WHERE `id`='$id1'";
    $result=mysqli_query($conn,$sql);

    if($result){
      echo "Deleted";
    }
    else {
      echo "Not Deleted";
    }
}
if(isset($_POST['btnselect']))
{
    $sql="SELECT `name` FROM `emp` WHERE `id`='$id1'";
    $result=mysqli_query($conn,$sql);

    if($num>0){
      $row = mysqli_fetch_assoc($);
      echo var_dump($);
      echo "<br>";
    }

}

 ?>
<body>
 <form method="post" action="abc1.php" >
   id<input type="text" name="txtid"><?php echo $id ?>
   name<input type="text" name="txtname">
   <input type="submit" name="btninsert" value="INSERT">
   <input type="submit" name="btnupdate" value="UPDATE">
   <input type="submit" name="btndelete" value="DELETE">
   <input type="submit" name="btnselect" value="SELECT">

 </form>
</body>
</head>
</html>
