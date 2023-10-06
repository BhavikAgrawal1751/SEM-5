<?php
include_once "connection.php";

if(isset($_POST['btnSaveStudent']))
{
	$intStudentId = trim($_POST['hdnID']);
	$strName = trim($_POST['txtName']);
	$strRollNo = trim($_POST['txtRollNo']);
	$strYear = trim($_POST['txtYear']);
	$strDivision = trim($_POST['txtDivision']);
	$strAge = trim($_POST['txtAge']);
	
	$sqlQuery = " UPDATE student SET name='".$strName."', rollno='".$strRollNo."',division='".$strDivision."',currentyear='".$strYear."',age='".$strAge."',status='1',created_at	='".date('Y-m-d')."',updated_at='".date('Y-m-d')."' WHERE id = ".$intStudentId;
	fnFireQuery($sqlQuery);
	
	$strRedirectUrl = 'listing.php?m=3';
	fnRedirectUrl($strRedirectUrl);
}
?>
<html>
	<head>
		<title>Student Management Application</title>		
		<link rel="stylesheet" href="custom.css" />
	</head>
	<body>
		<div class="container">			
			<form action="edit.php" method="post">
			<input type="hidden" name="hdnID" value="<?php echo $_GET['id']; ?>" />
			<?php
			$arrSpecStudent = array();
			$sqlQuery = " SELECT * FROM student WHERE id = ".$_GET['id'];
			$arrSpecStudent = fnGetResult($sqlQuery);
			
			?>
			<table>
				<tr>
					<td>Roll No</td>
					<td><input type="text" name="txtRollNo" value="<?php echo $arrSpecStudent['rollno']; ?>" /></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="txtName" value="<?php echo $arrSpecStudent['name']; ?>" /></td>
				</tr>
				<tr>
					<td>Year</td>
					<td><input type="text" name="txtYear" value="<?php echo $arrSpecStudent['currentyear']; ?>" /></td>
				</tr>
				<tr>
					<td>Division</td>
					<td><input type="text" name="txtDivision" value="<?php echo $arrSpecStudent['division']; ?>" /></td>
				</tr>
				<tr>
					<td>Age</td>
					<td><input type="text" name="txtAge" value="<?php echo $arrSpecStudent['age']; ?>" /></td>
				</tr>
			</table>
			<div class="action">
				<button type="submit" name="btnSaveStudent"><span>Save Student</span></button>
			</div>
			</form>
		</div>
	</body>
</html>