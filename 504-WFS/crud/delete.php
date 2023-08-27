<?php
include_once "connection.php";

$intId = $_GET['id'];
$sqlQuery = " DELETE FROM student WHERE id = ".$intId;
fnFireQuery($sqlQuery);
$strUrl = 'listing.php?m=1';
fnRedirectUrl($strUrl);
?>