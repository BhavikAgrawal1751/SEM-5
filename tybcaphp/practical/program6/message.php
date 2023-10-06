<?php
if(isset($_GET['m']))
{
	$strMessage = '';
	$m = $_GET['m'];
	if($m == 1)
	{
		$strMessage = " Record Added Successfully";
	}
	else if($m == 2)
	{
		$strMessage = " Record Deleted Successfully";
	}
	else if($m == 3)
	{
		$strMessage = " Record Updated Successfully";
	}
	else if($m == 4)
	{
		$strMessage = " Photo Added Successfully";
	}
	else if($m == 5)
	{
		$strMessage = " Photo Deleted Successfully";
	}
	else if($m == 6)
	{
		$strMessage = " Photo Updated Successfully";
	}
	?>
	<div class="message_container">
		<?php echo $strMessage; ?>
	</div>
	<?php
}
?>