<!DOCTYPE html>
<html>
<body>
	<?php 
	$myfile = fopen("data.txt", "r") or die("Unable to open file!");
	$i=1;
	while(!feof($myfile)) {
		if ($_GET['nomer'] == $i ) {
			$hasil = explode("|F|",fgets($myfile));
			$no = explode("[R]",$hasil[2]);
			break;
		}
		$i++;
	}
	fclose($myfile);
	?>
	<form action="update.php" method="POST">
		Nama: <input type="text" 
		name="nama" value="<?php echo $hasil[0] ?>"><br>
		Email: <input type="email" 
		name="email" value="<?php echo $hasil[1] ?>"><br>
		Phone: <input type="tel" 
		name="phone" value="<?php echo $no[0] ?>"><br>
		<input type="text" name="nomer" value="<?php echo $_GET['nomer'] ?>" style="display: none;">
		<input type="submit" value="Save!">
	</form>
</body>
</html>