<!DOCTYPE html>
<html>
    <head>
        <title>PRINT DATA DARI DATABASE DENGAN PHP</title>
    </head>
    <body>
        <style type="text/css">
        body{
        font-family: Times;
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
        .tengah{
        text-align: center;
        }
        </style>
        <center>
        <h2>DATA PENDIDIKAN</h2>
        </center>
        <?php
        include 'koneksi.php';
        ?>
        <table>
        <tr>
        <th>NO</th>
        <th>NAMA</th>
        <th>NPSN</th>
        <th>STATUS</th>
        </tr>
        <?php
        $no = 1;
        $sql = mysqli_query($koneksi,"select * from sd");
        while($data = mysqli_fetch_array($sql)){
        ?>
        
        <tr>
        <td style='text-align: center;'><?php echo $no++; ?></td>
        <td><?php echo $data['nama']; ?></td>
        <td><?php echo $data['npsn']; ?></td>
        <td><?php echo $data['status']; ?></td>
        </tr>
        <?php
        }
        ?>
        </table>

        <script>
            window.print();//agar tampil fungsi untuk printny
        </script>
    </body>
</html>