<?php 

$x = 1;
while( $x <= 50){
    if($x % 15 == 0){
        echo "FooBar"."<br>";
    } else if($x % 5 == 0){
        echo "Bar"."<br>";
    } else if($x % 3 == 0){
        echo "Foo"."<br>";
    } else{
        echo $x."<br>";
    }
    $x++;
}