<?php
$strEmail = 'amit@gmail.com';
$ValidEmail = filter_var($strEmail, FILTER_VALIDATE_EMAIL);
echo 'Validate Email <br />';
var_dump($ValidEmail);


$strUrl = 'https://www.google.com';
$ValidUrl = filter_var($strUrl,FILTER_VALIDATE_URL);
echo '<br />Validate Url<br />';
var_dump($ValidUrl);

$strIp = "192.168.0.1";
$ValidIp = filter_var($strIp, FILTER_VALIDATE_IP);
echo '<br />Validate IP<br />';
var_dump($ValidIp);
?>