<!DOCTYPE html>
  <html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
      <link rel="stylesheet" href="styles/bookingstyles.css">
      <title>Alamanda Regita Utami_1202204015</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg bg-dark">
        <div class="container-fluid">
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link text-light text-align-center " href="#">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-light text-align-center" href="#">Booking</a>
            </li>
            </ul>
        </div>
        </div>
    </nav>

    <section class="Booking">
        <div class="container">
              <div class="tagline text-center">
                  <p>Reserve your car now!</p>
                </div>

                <div class="data">
                  <div class="row">
                      <div class="col align-self-center">
                      <div class="foto">
                      <?php
                          $mobil = isset($_GET['mobil']) ? $_GET['mobil'] : null;
                          if ($mobil=="Toyota Rush"){
                          echo '<img src="toyota rush.png" class="card-img-top" alt="Toyota Rush" height="450px">';
                        } elseif ($mobil=="Toyota Ayla"){
                          echo '<img src="toyota ayla.png" alt="Toyota Ayla">';
                        } elseif ($mobil=="Honda Brio"){
                          echo '<img src="Honda Brio.png" alt="">';
                        } else {
                          echo '<img src="images/hall_A.png" alt="Honda Brio" height="2000px>';
                        }
                        ?>
                        </div>
                      </div>



                      <div class="col align-self-center">
                        <div class="form">
                          <form action="mybooking.php" method="post" autocomplete="off">

                            <div class="form-group my-2">
                              <label for="Name">Name</label>
                              <input name="Name" class="form-control" type="text" value="Manda_1202204015" readonly>
                            </div>

                            <div class="form-group my-2">
                              <label for="Date">Event Date</label>
                              <input name="Date" type="text" class="form-control" id="Date" placeholder="mm/dd/yyyy">
                            </div>

                            <div class="form-group my-2">
                              <label for="STime">Start Time</label>
                              <input name="STime" type="text" class="form-control" id="STime" placeholder="--:-- --">
                            </div>

                            <div class="form-group my-2">
                              <label for="Duration">Duration (Hours)</label>
                              <input  name="Duration" type="text" class="form-control" id="Duration" placeholder="" value="1">
                            </div>

                            <div class="form-group my-2">
                              <label for="CarType">Car Type</label>
                              <select name="CarType" class="form-control" id="CarType"<?php echo $mobil ?>>
                                <option>Choose car type</option>
                                <option <?php
                                  if($mobil == "Toyota Rush"){
                                    echo 'selected';
                                  }
                                ?> value="Toyota Rush">Toyota Rush</option>
                                <option <?php
                                  if($mobil == "Toyota Ayla"){
                                    echo 'selected';
                                  }
                                ?> value="Toyota Ayla">Toyota Ayla</option>
                                <option <?php
                                  if($mobil == "Honda Brio"){
                                    echo 'selected';
                                  }
                                ?> value="Honda Brio">Honda Brio</option>
                              </select>
                            </div>

                            <div class="form-group my-2">
                              <label for="PhoneNum">Phone Number</label>
                              <input name="PhoneNum" type="text" class="form-control" id="PhoneNum" placeholder="">
                            </div>
                            <div class="form-group my-2">
                              <label for="Services">Add Service(s)</label>
                              <div class="form-check">
                                <input name="Services[]" class="form-check-input" type="checkbox" value="Catering" id="PhoneNum">
                                <label class="form-check-label" for="PhoneNum">
                                  Health Protocol / Rp. 25000
                                </label>
                            </div>
                              <div class="form-check">
                                <input name="Services[]" class="form-check-input" type="checkbox" value="Decoration" id="PhoneNum">
                                <label class="form-check-label" for="PhoneNum">
                                  Driver / Rp. 100000
                                </label>
                            </div>
                              <div class="form-check">
                                <input name="Services[]" class="form-check-input" type="checkbox" value="Sound System" id="PhoneNum">
                                <label class="form-check-label" for="PhoneNum">
                                  Full Filled / Rp. 250000
                                </label>
                            </div>

                            <div class="form-group my-3">
                              <div class="button">
                                <button type="submit" class="btn btn-primary">Book</button>
                              </div>
                            </div>
                          </form>
                        </div>
                      </div>
                  </div>
                </div>
          </div>
      </section>

      <Footer style="margin-top: 50px;">
          <div style="width: auto;">
            <p style="text-align: center;">
              Created by Manda_1202204015
            </p>
          </div>
        </Footer>

  </body>
  </html>