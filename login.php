<?php
    require 'koneksi2.php';
    $email = $_POST['email'];
    $password = $_POST['password'];

    $query_sql = "SELECT * FROM user 
    WHERE email = '$email' AND password ='$password'";

    $result = mysqli_query($conn, $query_sql);

    if(mysqli_num_rows($result) > 0){
        header("Location: dashboard.html");
    } else {
        echo "<center><h1>Email atau Password Anda Salah. Silahkan Coba Login Kembali.</h1>
        <button><strong><a href='index3.html'>Login</a></strong></button></center>";
    }
?>
