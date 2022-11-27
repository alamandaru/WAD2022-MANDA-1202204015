
<?php

include ("koneksi.php");

    $id = $_POST['submit'];
    $nama = $_POST['nama'];
    $no = $_POST['no'];
    $pass1 = $_POST['pass1'];
    $pass2 = $_POST['pass2'];
    $tema = $_POST['tema'];



    if($pass1 == $pass2){
        if($tema == "Blue"){
            setcookie('tema','navbar-dark bg-primary', time()+1800,'/');
        }
        if($tema == "Dark"){
            setcookie('tema', 'navbar-dark bg-dark', time()+1800,'/');
        }
        if($tema == "Light"){
            setcookie('tema', 'navbar-light bg-light', time()+1800,'/');
        }else{
            $_SESSION['tema'] = $tema;
        }
        $query = "UPDATE user_manda SET nama='$nama', password='$pass1', no='$no' WHERE id=$id";
        $insert = mysqli_query($koneksi,$query);

        

    
        header("Location: ../home.php");
    }