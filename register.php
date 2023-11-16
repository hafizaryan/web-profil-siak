<?php
    require 'koneksi2.php';
    $fullname = $_POST['fullname'];
    $username = $_POST['username'];
    $institution = $_POST['institution'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    $query_sql = "INSERT INTO user (fullname, username, institution, email, password)
    VALUES ('$fullname', '$username', '$institution', '$email', '$password')";

    if (mysqli_query($conn, $query_sql)){
        header("Location: index3.html");
    }else {
        echo "Pendaftaran Gagal : ". mysqli_error($conn);
    }
?>