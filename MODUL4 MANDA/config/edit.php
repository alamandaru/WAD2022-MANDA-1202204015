<?php

include ("koneksi.php");

    $id = $_POST['submit'];
    $nama = $_POST['name'];
    $pemilik = $_POST['pemilik'];
    $merk = $_POST['merk'];
    $tanggal = $_POST['date'];
    $deskripsi = $_POST['desk'];
    $status = $_POST['status'];
    $gambar =$_POST['foto'];


    $query = "UPDATE showroom_manda_table SET nama_mobil='$nama', pemilik_mobil='$pemilik', merk_mobil='$merk', tanggal_beli='$tanggal', foto_mobil = '$gambar', deskripsi='$deskripsi', status_pembayaran='$status' WHERE id_mobil=$id";
    $insert = mysqli_query($koneksi,$query);

    header("Location: ../myshowroom.php");


    

 

