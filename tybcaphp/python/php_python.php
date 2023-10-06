<?php
echo "Executing Python from PHP";
$strOutput = shell_exec("python add.py");
echo "<br />".$strOutput;
?>