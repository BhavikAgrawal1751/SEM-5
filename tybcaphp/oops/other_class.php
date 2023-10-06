<?php
include_once "sample_class.php";

$objGrape = new Fruit();
$objGrape->set_name('Grape');
$objGrape->set_color('Purple');
echo "<br>";
echo "Name: " . $objGrape->get_name();
echo "<br>";
echo "Color: " . $objGrape->get_color();
echo "<br>";

$boolObject = ($objGrape instanceof Fruit);
var_dump($boolObject);
?>