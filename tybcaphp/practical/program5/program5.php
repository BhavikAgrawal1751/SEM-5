<?php
if(!isset($_COOKIE['visitor_count']))
{	
	$strComand = escapeshellcmd("python visitor_count.py 1");
	$intCounter = shell_exec($strComand);
	setcookie("visitor_count",$intCounter, time() + 86400);
	echo "Total Visitor:".$intCounter;
}
else
{	
	$intCounter = $_COOKIE['visitor_count'];
	$strComand = escapeshellcmd("python visitor_count.py $intCounter");
	$intCounter = shell_exec($strComand);
	setcookie("visitor_count",$intCounter, time() + 86400);
	echo "Total Visitor:".$intCounter;
}
?>