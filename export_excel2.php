<!DOCTYPE html>
<html>
<head>
<title>Export Data Ke Excel Dengan PHP</title>
</head>
<body>
<style type="text/css">
body{
font-family: sans-serif;
}
table{
margin: 20px auto;
border-collapse: collapse;
}
table th,
table td{
border: 1px solid #3c3c3c;
padding: 3px 8px;
}
a{
background: blue;
color: #fff;
padding: 8px 10px;
text-decoration: none;
border-radius: 2px;
}
</style>
<?php
header("Content-type: application/vnd-ms-excel");//kuncinya disini jika mau diubah ke word maka ganti excel menjai word
header("Content-Disposition: attachment; filename=Data pendidikan.xls");//karyawan.doc(vnd-ms-word)
?>
<center>
<h1>Data Karyawan <br/></h1>
</center>
<table border="1">
<tr>
<th>No</th>
<th>Nama</th>
<th>Alamat</th>
<th>STATUS</th>
</tr>
<?php
// koneksi database
$koneksi = mysqli_connect("localhost","root","","projek");

// menampilkan data pegawai
$data = mysqli_query($koneksi,"select * from sd");
$no = 1;
while($d = mysqli_fetch_array($data)){
?>
<tr>
<td><?php echo $no++; ?></td>
<td><?php echo $d['nama']; ?></td>
<td><?php echo $d['npsn']; ?></td>
<td><?php echo $d['status']; ?></td>
</tr>
<?php
}
?>
</table>
</body>
</html>