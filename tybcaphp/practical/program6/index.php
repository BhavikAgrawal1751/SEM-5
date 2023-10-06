<?php
include_once "operation.php";
?>
<html>
	<head>
		<title>Photo Gallery</title>
		<link rel="stylesheet" href="css/custom.css" />
	</head>
	<body>
		<div class="gallery_wrapper ">
			<div class="button_container">
				<a href="album.php">Manage Albums</a>				
			</div>			
			<?php include_once "message.php"; ?>			
			<div class="photo_gallery_container">
				<h1>Photo Gallery</h1>
				<div class="listing">
					<ul>
						<?php
						$sqlQuery = " SELECT * FROM photos";
						$arrPhotos = fnGetResults($sqlQuery);
						if(is_array($arrPhotos) && count($arrPhotos))
						{
							foreach($arrPhotos as $key => $arrSpecPhoto)
							{
								$strPhotoName = $arrSpecPhoto['photo'];
								$strPhotoUrl = SITE_URL.'uploads/'.$strPhotoName;
								$strTitle = trim($arrSpecPhoto['title']);
								?>
								<li>
									<img class="album_photo" src="<?php echo $strPhotoUrl; ?>" title="<?php echo $strTitle; ?>" alt="<?php echo $strTitle; ?>" />
								</li>
								<?php
							}
						}
						?>
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>