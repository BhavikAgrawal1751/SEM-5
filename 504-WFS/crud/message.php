<?php
if(isset($_GET['m']))
{
	if($_GET['m'] == 1)
	{
		echo "Record Deleted Successfully";
	}
	else if($_GET['m'] == 2)
	{
		echo "Record Added Successfully";
	}
	else if($_GET['m'] == 3)
	{
		echo "Record Updated Successfully";
	}
}
?>