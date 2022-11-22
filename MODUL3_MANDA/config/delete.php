<?php
include 'database.php';
$id = $_GET["id"];


function delete($id){
  global $koneksi;

  $query = "DELETE FROM showroom_manda_table WHERE id_mobil='$id' ";
  mysqli_query($koneksi, $query);

  return mysqli_affected_rows($koneksi);
}

if(delete($id)){
  header("Location: ../pages/myshowroom.php");
}
   