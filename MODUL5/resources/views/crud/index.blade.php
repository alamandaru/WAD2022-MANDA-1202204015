@extends('layout.main')
@section('konten')
<h2 class="fw-bold">My showroom</h2>
<p class="fw-light">List showroom ALAMANDA REGITA UTAMI - 1202204015</p>
<!-- read -->
    <div class="row g-2">
        @foreach ($datamobil as $datamobils)
        <div class="col-4">
            <div class="card" width = 200px height = 200px>
                <img src="{{ asset('storage/'.$datamobils->image) }}" class="card-img-top" alt="uknown" width = 200px height = 300px> 
                <div class="card-body">
                    <h5 class="card-title">{{$datamobils -> name}}</h5>
                    <p class="card-text">{{Str::limit($datamobils->description,150)}}</p> 
                    <p class="card-text"></p>  
                    <div class="d-flex justify-content-start">
                        <div class="row">
                            <div class="col">
                                <a href="itemdetail.php?id_mobil=" class="btn btn-primary rounded-4">Detail</a>
                            </div>
                            <div class="col">
                                <a href="config/delete.php?id_mobil=" class="btn btn-danger rounded-4">Delete</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
@endsection