<?php
$target_dir = "uploads/";
if(isset($_FILES["fileToUpload"]))
{
	$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);	
	if(isset($_POST["submit"])) {			  
	  if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
			echo "File Uploaded successfully";
	  } else {
			echo "Sorry, there was an error uploading your file.";
	  }
	}
}
?>
<form action="file_upload.php" method="post" enctype="multipart/form-data">
  Select image to upload:
  <input type="file" name="fileToUpload" id="fileToUpload">
  <input type="submit" value="Upload Image" name="submit">
</form>