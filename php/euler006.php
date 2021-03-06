<?php

include "helper.php";

function sumOfSquares($max)
{
   $x = 1;
   $sum = 0;
   while ($x <= $max) {
      $sum += $x * $x;
      $x++;
   }
   return $sum;
}

function squareOfSums($max)
{
   $x = 1;
   $sum = 0;
   while ($x <= $max) {
      $sum += $x;
      $x++;
   }
   return $sum * $sum;
}

$num = 100;

result(25164150, squareOfSums($num) - sumOfSquares($num));