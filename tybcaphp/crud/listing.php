<?php
include_once "connection.php";
?>
<html>
	<head>
		<title>Student Management Application</title>		
		<link rel="stylesheet" href="custom.css" />
	</head>
	<body>
		<div class="container">
			<div class="message">
				<?php include_once "message.php"; ?>
			</div>
			<div class="search_action">
				<div class="search_box">
					<?php
					$strSearchKeyWord = '';
					if(isset($_GET['txtName']) && trim($_GET['txtName']) != '')
					{
						$strSearchKeyWord = trim($_GET['txtName']);
					}
					?>
					<form method="GET" action="listing.php">
						<input type="text" name="txtName" value="<?php echo $strSearchKeyWord; ?>" />
						<button type="submit"><span>Search</span></button>
					</form>
				</div>
				<div class="action">
					<button type="button" onclick="location.href='add.php'"><span>Add Student</span></button>
				</div>
			</div>
			
			<table>
				<tr>
					<th>ID</th>
					<th>Roll No</th>
					<th>Name</th>
					<th>Division</th>
					<th>Year</th>
					<th>Age</th>
					<th>Action</th>
				</tr>
				<?php
				$arrResult = fnFetchStudents();	

				if(is_array($arrResult) && count($arrResult))
				{
					foreach($arrResult as $key => $arrSpecStudent)
					{
					?>
					<tr>
						<td><?php echo $arrSpecStudent['id']; ?></td>
						<td><?php echo $arrSpecStudent['rollno']; ?></td>
						<td><?php echo $arrSpecStudent['name']; ?></td>
						<td><?php echo $arrSpecStudent['division']; ?></td>
						<td><?php echo $arrSpecStudent['currentyear']; ?></td>
						<td><?php echo $arrSpecStudent['age']; ?></td>
						<td>
							<a href="edit.php?id=<?php echo $arrSpecStudent['id']; ?>">Edit</a>&nbsp;
							<a href="delete.php?id=<?php echo $arrSpecStudent['id']; ?>">Delete</a>
						</td>
					</tr>
					<?php
					}
				}
				?>
			</table>
			<?php
			$strSearchKeyWord = '';
			$strWhere = '';
			if(isset($_GET['txtName']) && trim($_GET['txtName']))
			{
				$strSearchKeyWord = trim($_GET['txtName']);
				$strWhere = ' WHERE name like "%'.$strSearchKeyWord.'%"';
			}
			$sqlQuery = " SELECT count(*) as total FROM student $strWhere";
			$arrTotalRecords = fnGetResult($sqlQuery);
			$intTotal = $arrTotalRecords['total'];
			$intTotalPages = ceil($intTotal/$intPerPageRecord);
			
			?>
			<div class="pagination">
				<ul>
				<?php
				$intCurrentPage = 0;
				if(isset($_GET['p']))
				{
					$intCurrentPage = $_GET['p'];
				}
				for($intP=0;$intP<$intTotalPages;$intP++)
				{
					$strQueryString = '';
					$strQueryString = '?p='.$intP.'&txtName='.$strSearchKeyWord;
					?>
					<li>
						<?php
						if($intP == $intCurrentPage)
						{
							echo ($intP+1);
						}
						else
						{
						?>
						<a href="listing.php<?php echo $strQueryString; ?>"><?php echo ($intP+1); ?></a>
						<?php
						}
						?>
					</li>
					<?php
				}
				?>
				</ul>
			</div>
		</div>
		
	</body>
</html>