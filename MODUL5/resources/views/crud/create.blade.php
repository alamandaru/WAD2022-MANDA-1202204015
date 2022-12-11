@extends('layout.main')
@section('konten')
            <!-- title -->
            <h2 class="fw-bold">Tambah mobil</h2>
            <p>Tambah mobil ke showroom</p>
            <!-- end title -->
            
            <!-- form -->
            <div class="row">
                <div class="col-md-10">
                    <form action="/mobil" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label fw-bold">Nama mobil</label>
                            <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label fw-bold">Nama pemilik</label>
                            <input type="text" name="owner" class="form-control" id="exampleInputPassword1">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label fw-bold">Merk</label>
                            <input type="text" name="brand" class="form-control" id="exampleInputPassword1">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label fw-bold">Tanggal</label>
                            <input type="date" name="purchase_date" class="form-control" id="exampleInputPassword1">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label fw-bold">Deskripsi</label>
                            <textarea name="description" class="form-control" id="exampleInputPassword1"></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label fw-bold">Foto</label>
                            <input type="file" name="image" class="form-control" id="exampleInputPassword1">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label fw-bold">Status</label>
                            <div class="form-check">
                                <input value="Lunas" class="form-check-input" type="radio"  name="status" id="flexRadioDefault1">
                                <label  class="form-check-label" for="flexRadioDefault1">
                                    Lunas
                                </label>
                            </div>
                            <div class="form-check">
                                <input value="Belum-Lunas" class="form-check-input" type="radio" name="status" id="flexRadioDefault2">
                                <label class="form-check-label" for="flexRadioDefault2">
                                    Belum lunas
                                </label>
                            </div>
                        </div>
                        <button type="submit" name="submit" class="btn btn-primary px-4">Submit</button>
                    </form>
                </div>
            </div>
@endsection

