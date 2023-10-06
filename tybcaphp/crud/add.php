	<?php
include_once "connection.php";

if(isset($_POST['btnSaveStudent']))
{
	$strName = trim($_POST['txtName']);
	$strRollNo = trim($_POST['txtRollNo']);
	$strYear = trim($_POST['txtYear']);
	$strDivision = trim($_POST['txtDivision']);
	$strAge = trim($_POST['txtAge']);
	
	$sqlQuery = " INSERT INTO student SET name='".$strName."', rollno='".$strRollNo."',division='".$strDivision."',currentyear='".$strYear."',age='".$strAge."',status='1',created_at	='".date('Y-m-d')."',updated_at='".date('Y-m-d')."'";
	fnFireQuery($sqlQuery);
	
	$strRedirectUrl = 'listing.php?m=2';
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
			<form action="add.php" method="post">
			<table>
				<tr>
					<td>Roll No</td>
					<td><input type="text" name="txtRollNo" /></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="txtName" /></td>
				</tr>
				<tr>
					<td>Year</td>
					<td><input type="text" name="txtYear" /></td>
				</tr>
				<tr>
					<td>Division</td>
					<td><input type="text" name="txtDivision" /></td>
				</tr>
				<tr>
					<td>Age</td>
					<td><input type="text" name="txtAge" /></td>
				</tr>
			</table>
			<div class="action">
				<button type="submit" name="btnSaveStudent"><span>Save Student</span></button>
			</div>
			</form>
		</div>
	</body>
</html>