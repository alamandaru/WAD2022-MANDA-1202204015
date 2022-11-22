<?php 
require "database.php";

function showData(){
  global $koneksi;

  $query = "SELECT * FROM showroom_manda_table";
  $penampung = [];
  $dataDb = mysqli_query($koneksi, $query);

  while($rows=mysqli_fetch_assoc($dataDb)){
    $penampung[]=$rows;
  }

  return $penampung;

}