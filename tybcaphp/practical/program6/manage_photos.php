<?php
include_once "operation.php";
?>
<html>
	<head>
		<title>Album Photo Listing</title>
		<link rel="stylesheet" href="css/custom.css" />
	</head>
	<body>
		<div class="wrapper ">
			<div class="button_container">
				<a href="add_photo.php">Add Photo</a>				
			</div>			
			<?php include_once "message.php"; ?>			
			<div class="photo_listing_container">
				<h1>Photo Listing</h1>
				<div class="listing">
					<ul class="heading">
						<li>ID</li>
						<li>Title</li>
						<li>Photo</li>
						<li>Album</li>
						<li>Actions</li>
					</ul>
					<?php
					$intAlbumId = $_GET['id'];
					$sqlQuery = "SELECT * FROM photos WHERE album_id=$intAlbumId";
					$arrPhotos = fnGetResults($sqlQuery);
					if(is_array($arrPhotos) && count($arrPhotos))
					{
						foreach($arrPhotos as $key => $arrSpecPhone)
						{
							$intId = $arrSpecPhone['id'];
							$strTitle = $arrSpecPhone['title'];
							$intAlbumId = $arrSpecPhone['album_id'];
							$strPhoto = $arrSpecPhone['photo'];
						?>
							<ul class="data_listing">
								<li><?php echo $intId; ?></li>
								<li><?php echo $strTitle; ?></li>
								<li>
									<?php
									$strPhotoUrl = SITE_URL.'uploads/'.$strPhoto;
									?>
									<img style="width:50px;" src="<?php echo $strPhotoUrl; ?>" />
								</li>
								<li><?php echo fnPhotoAlbum($intAlbumId); ?></li>
								<li><a href="edit_photo.php?id=<?php echo $intId; ?>">Edit</a>&nbsp;<a href="delete_photo.php?id=<?php echo $intId; ?>">Delete</a></li>
							</ul>
						<?php
						}
					}
					?>
				</div>
			</div>
		</div>
	</body>
</html>