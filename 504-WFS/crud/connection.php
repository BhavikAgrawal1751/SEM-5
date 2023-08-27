<?php
$objCon = mysqli_connect("localhost","root","","tybca");

function fnFetchStudents()
{
	global $objCon;
	$sqlQuery = " SELECT * FROM student";
	$resResult = mysqli_query($objCon, $sqlQuery);
	$arrResult = array();
	while($data = mysqli_fetch_assoc($resResult))
	{
		$arrResult[] = $data;
	}
	return $arrResult;
}
function fnGetResult($sqlQuery)
{
	global $objCon;
	$resResult = fnFireQuery($sqlQuery);
	return mysqli_fetch_assoc($resResult);
}
function fnFireQuery($sqlQuery)
{
	global $objCon;
	return mysqli_query($objCon, $sqlQuery);
}
function fnRedirectUrl($strRedirectUrl)
{
	if(!headers_sent())
	{
		header("Location:".$strRedirectUrl);
		exit;
	}
	else
	{
		?>
		<script type="text/javascript">
			location.href = '<?php echo $strRedirectUrl; ?>';
		</script>
		<?php
	}
}
?>
