<?php
include_once "config.php";

function fnConnectDb()
{
	$objCon = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
	return $objCon;
}

function fnFireQuery($sqlQuery)
{
	$objCon = fnConnectDb();
	
	return mysqli_query($objCon, $sqlQuery);
}

function fnGetResults($sqlQuery)
{
	$arrResults = array();
	$resResults = fnFireQuery($sqlQuery);
	while(($arrSpecResult = mysqli_fetch_assoc($resResults)) != FALSE)
	{
		$arrResults[] = $arrSpecResult;
	}
	return $arrResults;
}

function fnRedirectUrl($strUrl)
{
	if(!headers_sent())
	{
		header("Location:".$strUrl);
		exit;
	}
	else
	{
		?>
		<script type="text/javascript">
			location.href = '<?php echo $strUrl; ?>';
		</script>
		<?php
		exit;
	}
}

function fnPhotoAlbum($intAlbumId)
{
	$sqlQuery = " SELECT title FROM album WHERE id=$intAlbumId";
	$arrAlbum = fnGetResults($sqlQuery);
	if(is_array($arrAlbum) && count($arrAlbum))
	{
		$arrSpecAlbum = $arrAlbum[0];
		return trim($arrSpecAlbum['title']);
	}
	return 'NA';
}
?>