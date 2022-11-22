<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Bootstrap demo</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>

<body>
  <header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
      <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="home.php">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="myshowroom.php">My Car</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>

  <!-- end navbar -->

  <!-- jumbotron -->
  <div class="container p-5">
    <div class="row vh-100 align-items-center">

      <!-- COLOM 1 -->
      <div class="col">
        <h1>Selamat Datang di Showroom Manda</h1>
        <br>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt, alias unde quae repudiandae minus non, obcaecati quaerat blanditiis ab quod eius, laudantium dolorem facere placeat sunt! Nobis vitae corporis sit?</p>
        <!-- btn -->
        <a href="myshowroom.php" class="btn btn-primary fw-light px-4 py-2">My Car</a>
        <!-- end btn -->
        <div class="d-flex justify-content-start">
          <div class="row mt-5">
            <div class="col">
              <img src="../assets/images/logo-ead.png" style="width: 100px;" alt="logo ead">
            </div>
            <div class="col">
              <p>ALAMANDA REGITA UTAMI_1202204015</p>
            </div>
          </div>
        </div>
      </div>

      <!-- COLOM 2 -->
      <div class="col">
        <img src="../assets/images/tesla.jpeg" style="width: 700px" alt="">
      </div>
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>

</html>