<?php
session_start();
$strNewPageUrl = 'session_data.php';
if(isset($_POST['btnsubmit']))
{
	$_SESSION['fullname'] = trim($_POST['txtName']);
	$_SESSION['email'] = trim($_POST['txtEmail']);
	
	header("Location:".$strNewPageUrl);
	exit;
}
?>