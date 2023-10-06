<?php
include_once "operation.php";
if(isset($_POST['btnEdit']))
{
	$strName = trim(addslashes($_POST['txtName']));
	$intId = $_POST['hdnID'];
	$sqlQuery = " UPDATE album SET title = '$strName' WHERE id=$intId";
	fnFireQuery($sqlQuery);
	
	$strListingUrl = 'album.php?m=3';
	fnRedirectUrl($strListingUrl);
}
$arrResults = array();
if(isset($_GET['id']))
{
	$intId = $_GET['id'];
	$sqlQuery = " SELECT * FROM album WHERE id = $intId";
	$arrResults = fnGetResults($sqlQuery);
	$arrSpecResult = $arrResults[0];
}
?>
<html>
	<head>
		<title>Edit Album</title>
		<link rel="stylesheet" href="css/custom.css" />
	</head>
	<body>
		<div class="wrapper">			
			<div class="listing_container">
				<h1>Edit Album</h1>
				<div class="add_album_form form_container">
					<form name="frmEditAlbum" id="frmEditAlbum" method="POST" action="edit_album.php">
						<input type="hidden" id="hdnID" name="hdnID" value="<?php echo $_GET['id']; ?>" />
						<ul>
							<?php
							$strName = '';
							
							if(isset($arrSpecResult['title']))
							{
								$strName = trim($arrSpecResult['title']);
							}
							?>
							<li>
								<label for="txtName">Name</label>
								<input type="text" class="input-control" name="txtName" value="<?php echo $strName; ?>" id="txtName" />
							</li>
						</ul>
						<div class="button_container">
							<button type="submit" name="btnEdit"><span>Save Album</span></button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>