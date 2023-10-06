<?php
include_once "operation.php";
$arrResults = array();
if(isset($_GET['id']))
{
	$intId = $_GET['id'];
	$sqlQuery = " SELECT * FROM photos WHERE id = $intId";
	$arrResults = fnGetResults($sqlQuery);
	$arrSpecResult = $arrResults[0];
}
if(isset($_POST['btnEdit']))
{
	/*echo '<pre>';
		print_r($_POST);
		print_r($_FILES);
		die;*/
	$strName = trim(addslashes($_POST['txtName']));
	$intAlbumId = trim(addslashes($_POST['cmbAlbum']));
	$intId = $_POST['hdnId'];
	if(isset($_FILES['flPhoto']['name']) && trim($_FILES['flPhoto']['name']) != '')
	{
		$strFileName = $_FILES['flPhoto']['name'];
		$strFileToUpload = 'uploads/'.$strFileName;
		move_uploaded_file($_FILES['flPhoto']['tmp_name'], $strFileToUpload);
		
		$sqlQuery = " UPDATE photos SET title = '$strName',album_id=$intAlbumId, photo='$strFileName' WHERE id = $intId";
	}
	else
	{
		$sqlQuery = " UPDATE photos SET title = '$strName',album_id=$intAlbumId WHERE id = $intId";
	}		
	
	
	fnFireQuery($sqlQuery);
	
	$strListingUrl = 'album.php?m=6';
	fnRedirectUrl($strListingUrl);
}

?>
<html>
	<head>
		<title>Edit Photo</title>
		<link rel="stylesheet" href="css/custom.css" />
	</head>
	<body>
		<div class="wrapper">			
			<div class="listing_container">
				<h1>Edit Photo</h1>
				<div class="edit_photo_form form_container">
					<form name="frmEditPhoto" id="frmEditPhoto" method="POST" action="edit_photo.php" encType="multipart/form-data">
						<input type="hidden" name="hdnId" id="hdnId" value="<?php echo $arrSpecResult['id']; ?>" />
						<ul>
							<?php
							$strTitle = $arrSpecResult['title'];
							$intAlbumId = $arrSpecResult['album_id'];
							?>
							<li>
								<label for="txtName">Title</label>
								<input type="text" class="input-control" name="txtName" value="<?php echo $strTitle; ?>" id="txtName" />
							</li>
							<li>
								<label for="cmbAlbum">Album</label>
								<select name="cmbAlbum" id="cmbAlbum">
									<?php
									$sqlQuery = " SELECT * FROM album";
									$arrAlbums = fnGetResults($sqlQuery);
									
									if(is_array($arrAlbums) && count($arrAlbums))
									{
										foreach($arrAlbums as $key => $arrSpecAlbum)
										{
											
											$strSelect = '';
											if($arrSpecAlbum['id'] == $intAlbumId)
											{
												$strSelect = ' selected="selected" ';
											}
										?>
										<option <?php echo $strSelect; ?> value="<?php echo $arrSpecAlbum['id']; ?>"><?php echo $arrSpecAlbum['title']; ?></option>
										<?php
										}
									}
									?>
								</select>
							</li>
							<li>
								<label for="flPhoto">Photo</label>
								<input type="file" class="input-control" name="flPhoto" id="flPhoto" />
							</li>
						</ul>
						<div class="button_container">
							<button type="submit" name="btnEdit"><span>Save Photo</span></button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>