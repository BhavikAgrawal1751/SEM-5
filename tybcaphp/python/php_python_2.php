<?php
echo "Executing Python from PHP";
$strComand = escapeshellcmd("python add.py");
$strOutput = shell_exec($strComand);
echo "<br />".$strOutput;
?>