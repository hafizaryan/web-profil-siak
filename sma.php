<?php include 'koneksi.php' ?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Membuat Laporan PDF Dengan PHP dan MySQLi</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
<div class="container">
<center><h2>DATA PENDIDIKAN SMA atau SMK SIAK</h2></center>
<br>
<div class="float-right">
<a href="export_excel.php" target="_blank" class="btn btn-success"><i class="fa fa-file-excel-o"></i> &nbsp EXCEL</a>
<a href="export_pdf.php" target="_blank" class="btn btn-success"><i class="fa fa-file-pdf-o"></i> &nbsp PDF</a>
<a href="cetak.php" target="_blank" class="btn btn-success"><i class="fa fa-print"></i> &nbsp PRINT</a>
<br>
<br>
</div>
<table class="table table-bordered">
<thead>
<tr>
<th style="text-align: center;">NO</th>
<th style="text-align: center;">NAMA</th>
<th style="text-align: center;">ALAMAT</th>
<th style="text-align: center;">STATUS</th>
</tr>
</thead>
<tbody>
<?php
$no=1;
$data = mysqli_query($koneksi,"SELECT * FROM sma");
while($d = mysqli_fetch_array($data)){
?>
<tr>
<td><?php echo $no++; ?></td>
<td><?php echo $d['nama'] ?></td>
<td><?php echo $d['alamat'] ?></td>
<td><?php echo $d['status'] ?></td>
</tr>
<?php
}
?>

</tbody>
</table>
</div>
</body>
</html>
