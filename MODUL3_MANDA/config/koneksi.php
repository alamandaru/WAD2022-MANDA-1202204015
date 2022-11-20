<?php
    $koneksi = mysqli_connect("localhost", "root", "", "modul3");

    if ($koneksi) {
        echo 'true';
    }

    if(!$koneksi){
        die("<p>koneksi gagal</p>" . mysqli_connect_error());
    }
?>