<?php
include_once "operation.php";
if(isset($_GET['id']))
{
	$intId = trim($_GET['id']);
	
	$sqlQuery = " DELETE FROM photos WHERE id = $intId";
	fnFireQuery($sqlQuery);
	
	$strListingUrl = 'album.php?m=5';
	fnRedirectUrl($strListingUrl);
}
?>