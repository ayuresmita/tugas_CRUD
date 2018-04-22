<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<table>
		<tr>
			<th>No</th>
			<th>Nama</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Edit</th>
		</tr>
		<?php 
		$myfile = fopen("data.txt", "r") or die("Unable to open file!");
		$i=1;
		while(!feof($myfile)) {
			echo "<tr>";
			$hasil = explode("|F|",fgets($myfile));
			if (isset($hasil[1])) {
				// var_dump($hasil);
				echo "<td>".$i."</td>";
				echo "<td>".$hasil[0]."</td>";
				echo "<td>".$hasil[1]."</td>";
				$no = explode("[R]",$hasil[2]);
				echo "<td>".$no[0]."</td>";
				echo "<td><a href=\"formedit.php?nomer=".$i."\">edit</a></td>";
				echo "</tr>";
			}
			$i++;
		}
		fclose($myfile);
		?>
	</table>
</body>
</html>