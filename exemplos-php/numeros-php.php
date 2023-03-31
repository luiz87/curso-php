<?php
echo "<br>PHP_INT_MAX = ",PHP_INT_MAX;
echo "<br>PHP_INT_MIN = ",PHP_INT_MIN ;
echo "<br>PHP_INT_SIZE = ",PHP_INT_SIZE;

$x = 5985;
echo "<br>O valor $x é inteiro ? ";
var_dump(is_int($x));

$x = 59.85;
echo "<br>O valor $x é inteiro ? ";
var_dump(is_int($x));

?>