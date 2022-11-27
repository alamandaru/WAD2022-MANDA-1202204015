<?php
    $koneksi = mysqli_connect("localhost", "root", "", "wad_modul4_manda", 3307);

    if(!$koneksi){
        die("Koneksi gagal" . mysqli_connect_error());
    }
?>