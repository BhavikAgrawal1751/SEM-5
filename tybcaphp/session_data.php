<?php
session_start();
$strName = $_SESSION['fullname'];
$strEmail = $_SESSION['email'];
echo "Hello $strName, Your email id is $strEmail";
?>