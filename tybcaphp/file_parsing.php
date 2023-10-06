<?php
if (($open = fopen("Book1.csv", "r")) !== false) {
    while (($data = fgetcsv($open, 1000, ",")) !== false) {
        $array[] = $data;
    }
 
    fclose($open);
}
?>