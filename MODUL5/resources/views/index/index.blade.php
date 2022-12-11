@extends('Layouts.main')
@section('konten')
<div class="header">
    <h2>My Showroom</h2>
    <p>List Showroom Manda_1202204015</p>
  </div>
  <div class="row gap-4">
      <div class="col-md-5">
        <div class="card">
          <img src="../Asset/images/avanza.png" alt="foto_mobil" class="card-img-top">
          <div class="card-body">
            <h5 class="card-title">
            <p class="card-text">
          </div>
          <div class="card-body">
          <div class="row justify-content-center gap-4">
            <div class="col-md-5"><button type="button" class="btn btn-primary rounded-pill w-100">Detail</button></div>
            <div class="col-md-5"><a href="../config/delete.php?id=" class="btn btn-danger rounded-pill w-100">Delete</a></div>

          </div>
          
          </div>
        </div>
      </div>
  </div>
    
@endsection