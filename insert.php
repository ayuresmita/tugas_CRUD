<?php

$file = "data.txt";

$nama = $_POST['nama'];
$email = $_POST['email'];
$phone = $_POST['phone'];

$data = $nama  . "|F|" . 
$email . "|F|" .
$phone . "[R]";

$handle = fopen($file, "a+");
fwrite($handle, $data."\r\n");
fclose($handle);

echo "Data sudah disimpan!";
include 'form.php';
include 'lihatdata.php';
