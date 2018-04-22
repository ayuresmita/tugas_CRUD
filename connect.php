<?php

/* konfigurasi */
$user = 'user';
$pass = 'rahasia';
$host = 'localhost';
$db   = 'butel';

/* buat koneksi ke server mysql */
$link = mysqli_connect($host, $user, $pass, $db);

if(mysqli_connect_errno()) {
	if($db){
	echo "koneksi database berhasil dibuat.";
}else{
    echo "Koneksi database gagal dibuat";
    exit;
}