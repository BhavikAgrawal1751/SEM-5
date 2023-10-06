<?php
include_once "operation.php";
if(isset($_GET['id']))
{
	$intId = trim($_GET['id']);
	
	$sqlQuery = " DELETE FROM album WHERE id = $intId";
	fnFireQuery($sqlQuery);
	
	$strListingUrl = 'album.php?m=2';
	fnRedirectUrl($strListingUrl);
}
?>