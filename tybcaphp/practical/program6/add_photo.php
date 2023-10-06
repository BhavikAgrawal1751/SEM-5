<?php
include_once "operation.php";
if(isset($_POST['btnAdd']))
{
	/*echo '<pre>';
		print_r($_POST);
		print_r($_FILES);
		die;*/
	
	$strFileName = $_FILES['flPhoto']['name'];
	$strFileToUpload = 'uploads/'.$strFileName;
	
	move_uploaded_file($_FILES['flPhoto']['tmp_name'], $strFileToUpload);
	$strName = trim(addslashes($_POST['txtName']));
	$intAlbumId = trim(addslashes($_POST['cmbAlbum']));
	
	
	$sqlQuery = " INSERT INTO photos SET title = '$strName',album_id=$intAlbumId, photo='$strFileName',status=1, created_at='".date('Y-m-d')."', updated_at='".date('Y-m-d')."'";
	
	fnFireQuery($sqlQuery);
	
	$strListingUrl = 'album.php?m=4';
	fnRedirectUrl($strListingUrl);
}
?>
<html>
	<head>
		<title>Add Photo</title>
		<link rel="stylesheet" href="css/custom.css" />
	</head>
	<body>
		<div class="wrapper">			
			<div class="listing_container">
				<h1>Add Photo</h1>
				<div class="add_photo_form form_container">
					<form name="frmAddPhoto" id="frmAddPhoto" method="POST" action="add_photo.php" encType="multipart/form-data">
						<ul>
							<li>
								<label for="txtName">Title</label>
								<input type="text" class="input-control" name="txtName" id="txtName" />
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
										?>
										<option value="<?php echo $arrSpecAlbum['id']; ?>"><?php echo $arrSpecAlbum['title']; ?></option>
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
							<button type="submit" name="btnAdd"><span>Save Photo</span></button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>