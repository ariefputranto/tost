<?php
$link=mysql_connect("localhost","root","123");

	if (!$link) {
		die('could not connect : '. mysql_error());
	}

	$db_selected = mysql_select_db("tosta");

	if (!$db_selected) {
		die('cannt use ' .DB_NAME.' : '.mysql_error());
	}  

$s="select * from tableMHS where email<>'';";
$q = mysql_query($s);
?>
<!DOCTYPE html>
<html>
<head>
	<title>Formulir Surat Keterangan Mahasiswa</title>
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</head>
<body>
<center><h1>Data Mahasiswa</h1></center>
<div class="container">
	<table class="table table-striped table-condensed">
<tr>
	<th>Nrp</th>
	<th>Nama</th>
	<th>Nomor HP</th>
	<th>Email</th>
	<th>Nomor HP Orang Tua</th>
</tr>
<?php  
	if (mysql_num_rows($q)>0) {
		while ($r=mysql_fetch_array($q)) {
		echo "<tr>
		<td>".$r['nrp']."</td>
		<td>".$r['nama']."</td>
		<td>".$r['noHp']."</td>
		<td>".$r['email']."</td>
		<td>".$r['noHpOrtu']."</td></tr>";
	}
	}
?>
</table>
</div>
</body>
</html>