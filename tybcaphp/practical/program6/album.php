<?php
include_once "operation.php";
?>
<html>
	<head>
		<title>Album Listing</title>
		<link rel="stylesheet" href="css/custom.css" />
	</head>
	<body>
		<div class="wrapper">
			<div class="button_container">
				<a href="index.php">Photo Gallery</a>
				<a href="add_album.php">Add Album</a>				
			</div>			
			<?php include_once "message.php"; ?>			
			<div class="listing_container">
				<h1>Album Listing</h1>
				<div class="listing">
					<ul class="heading">
						<li>ID</li>
						<li>Name</li>
						<li>Actions</li>
					</ul>
					<?php
					$sqlQuery = "SELECT * FROM album";
					$arrAlbums = fnGetResults($sqlQuery);
					if(is_array($arrAlbums) && count($arrAlbums))
					{
						foreach($arrAlbums as $key => $arrSpecAlbum)
						{
							$intId = $arrSpecAlbum['id'];
							$strTitle = $arrSpecAlbum['title'];
						?>
							<ul>
								<li><?php echo $intId; ?></li>
								<li><?php echo $strTitle; ?></li>
								<li><a href="edit_album.php?id=<?php echo $intId; ?>">Edit</a>&nbsp;&nbsp;&nbsp;<a href="delete_album.php?id=<?php echo $intId; ?>">Delete</a>&nbsp;&nbsp;&nbsp;<a href="manage_photos.php?id=<?php echo $intId; ?>">Photos</a></li>
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