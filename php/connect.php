<?php

$hostname="localhost";
$usr="root";
$password="";
$db="falaleev";

$conn = mysqli_connect($hostname,$usr,$password,$db);

if ($conn == false){
    print("Ошибка: Невозможно подключиться к MySQL " . mysqli_connect_error());
}
else {
    // print("Соединение установлено успешно");
}

?>