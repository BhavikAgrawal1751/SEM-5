<?php
include_once "operation.php";
if(isset($_POST['btnAdd']))
{
	$strName = trim(addslashes($_POST['txtName']));
	
	$sqlQuery = " INSERT INTO album SET title = '$strName', status=1, created_at='".date('Y-m-d')."', updated_at='".date('Y-m-d')."'";
	fnFireQuery($sqlQuery);
	
	$strListingUrl = 'album.php?m=1';
	fnRedirectUrl($strListingUrl);
}
?>
<html>
	<head>
		<title>Add Album</title>
		<link rel="stylesheet" href="css/custom.css" />
	</head>
	<body>
		<div class="wrapper">			
			<div class="listing_container">
				<h1>Add Album</h1>
				<div class="add_album_form form_container">
					<form name="frmAddAlbum" id="frmAddAlbum" method="POST" action="add_album.php">
						<ul>
							<li>
								<label for="txtName">Name</label>
								<input type="text" class="input-control" name="txtName" id="txtName" />
							</li>
						</ul>
						<div class="button_container">
							<button type="submit" name="btnAdd"><span>Save Album</span></button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>