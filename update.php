<?php 
$myfile = fopen("data.txt", "r") or die("Unable to open file!");
$i=1;
$filetext ="";
while(!feof($myfile)) {
	$filetext .= fgets($myfile)."|T|";
	// if ($_POST['nomer'] == $i ) {
	// 	$nama = $_POST['nama'];
	// 	$email = $_POST['email'];
	// 	$phone = $_POST['phone'];

	// 	$data = $nama  . "|F|" . 
	// 	$email . "|F|" .
	// 	$phone . "[R]";

	// 	file_put_contents("data.txt", str_replace(fgets($myfile), $data, fgets($myfile)));
	// 	break;
	// }
	// $i++;
}
$hasil = explode('|T|',$filetext);
// print_r($filetext);
// print_r($hasil);
fclose($myfile);
$myfile = fopen("data.txt", "w") or die("Unable to open file!");
$i = 1;
foreach ($hasil as $row ) {
	if ($_POST['nomer'] == $i) {
		$nama = $_POST['nama'];
		$email = $_POST['email'];
		$phone = $_POST['phone'];

		$data = $nama  . "|F|" . 
		$email . "|F|" .
		$phone . "[R]";
		fwrite($myfile, $data."\r\n");
	}
	else{
		fwrite($myfile, $row."\r\n");
	}
	$i++;
}
// var_dump($filetext);
fclose($myfile);
include 'lihatdata.php';
?>