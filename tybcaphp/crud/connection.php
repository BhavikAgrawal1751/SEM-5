<?php

$objCon = mysqli_connect("localhost","root","","tybca");
$intPerPageRecord = 2;

function fnFetchStudents()
{
	global $objCon;
	global $intPerPageRecord;
	
	$strSearchKeyWord = '';
	$strWhere = '';
	if(isset($_GET['txtName']) && trim($_GET['txtName']))
	{
		$strSearchKeyWord = trim($_GET['txtName']);
		$strWhere = ' WHERE name like "%'.$strSearchKeyWord.'%"';
	}
	
	$intCurrentPage = 0;
	if(isset($_GET['p']))
	{
		$intCurrentPage = $_GET['p'];
	}
	$intStartIndex = ($intCurrentPage * $intPerPageRecord);
	
	echo "+++++".$sqlQuery = " SELECT * FROM student $strWhere LIMIT $intStartIndex, $intPerPageRecord";
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
