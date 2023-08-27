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
			<div class="action">
				<button type="button" onclick="location.href='add.php'"><span>Add Student</span></button>
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
		</div>
	</body>
</html>