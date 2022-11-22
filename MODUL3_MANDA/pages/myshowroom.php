<?php
require "../config/connector.php";

$datas = showData();

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

  <title>Document</title>
</head>

<body>
  <header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
      <div class="container">
          <div class="col-md-10">
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" aria-current="page" href="home.php">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" href="myshowroom.php">My Car</a>
                </li>
              </ul>
              
            </div>
          </div>
          <div class="col-md-2">
            <div>
              <a href="add.php" class="btn btn-light text-primary">Add Car</a>
            </div>
          </div>
      

      </div>
    </nav>
  </header>

  <main>
    <div class="container mt-5">
      <div class="title">
        <h2 class="fw-bold">My showroom</h2>
        <p class="fw-light">List showroom Alamanda Regita Utami_1202204015</p>
      </div>

      <div class="row g-2 mt-5">
        <?php foreach ($datas as $data) : ?>
          <div class="col-md-5">
            <div class="card">
              <img src="../assets/images/bmw.png" alt="card-image">
              <div class="card-body">
                <h5 class="card-title"><?= $data["nama_mobil"] ?></h5>
                <p class="card-text"><?= $data["deskripsi"] ?></p>
                <div class="row justify-content-center py-2">
                  <div class="col-md-5">
                    <a href="detail.php?" class="btn btn-primary rounded-pill w-100">Detail</a>
                  </div>
                  <div class="col-md-5">
                    <a href="../config/delete.php?id=<?= $data['id_mobil'] ?>" class="btn btn-danger rounded-pill w-100">Delete</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <?php endforeach; ?>
      </div>
    </div>
  </main>
  <!-- end card -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>

</html>