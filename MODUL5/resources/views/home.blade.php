@extends('layout.main')
@section('konten')
<div class="row align-items-center mt-5">
    <div class="col">
      <h1 class="fw-bold">Selamat Datang Di Show Room</h1>

      <div class="description">
        <p>Show Room mobil ini milik manda yang sangat dipercaya oleh banyak orang dengan memberikan kualitas tinggi
          dan memberikan kenyamanan yang lebih
        </p>
      </div>

      <a href="/mobil" type="button" class="btn btn-primary">MyCar</a>

      <div class="about mt-5">
        <div class="d-flex gap-4">
          <img src="{{ asset('image/logo-ead.png') }}" alt="logo-ead" width="100" height="25">
          <p>Manda_1202204015</p>
        </div>
      </div>
    </div>

    <div class="col">
      <img src="{{ asset('image/bmw.png') }}" width="640" height="400" alt="car image">
    </div>
  </div>
    
@endsection