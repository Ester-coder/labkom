@extends('../template')

@section('title', 'Peminjaman Ruang')

@section('page', 'Tambah Data Peminjaman Ruang')

@section('content')
<div class="animated fadeIn">
    <div class="row">

        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <strong class="card-title">Peminjaman Ruang</strong>
                </div>
                <div class="card-body">
                <form method="POST" action="/student">
                        @csrf
                        <div class="form-group">
                            <label for="name">Tanggal</label>
                            <input type="date" class="form-control" id="tanggal_pinjam" placeholder="Masukan tanggal peminjaman" name="tanggal_pinjam">
                        </div>
                        <div class="form-group">
                            <label for="nim">Nama</label>
                            <input type="text" class="form-control" id="nama_peminjam" placeholder="Masukan nama peminjam" name="nama_peminjam" >
                        </div>
                        <div class="form-group">
                            <label for="dosen_pengampu">Dosen Pengampu</label>
                            <input type="text" class="form-control" id="dosen_pengampu" placeholder="Masukan nama dosen pengampu" name="dosen_pengampu">
                        </div>
                        <div class="form-group">
                            <label for="jam_pinjam">Jam Pinjam</label>
                            <input type="text" class="form-control" id="jam_pinjam" placeholder="Masukan jam pinjam" name="jam_pinjam">
                        </div>
                        <fieldset class="form-group">
                            <div class="row">
                                <legend class="col-form-label col-sm-2 pt-0">Jenis Pinjam</legend>
                                    <div class="col-sm-10">
                                        <div class="form-check">
                                        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
                                        <label class="form-check-label" for="gridRadios1">
                                            Jam Kuliah
                                        </label>
                                        </div>
                                        <div class="form-check">
                                        <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                                        <label class="form-check-label" for="gridRadios2">
                                            Diluar jam kuliah
                                        </label>
                                        </div>
                                
                                    </div>
                            </div>
                        </fieldset>
                        <button type="submit" class="btn btn-primary">Send</button>
                    </form>
                </div>
            </div>
        </div>


    </div>
</div><!-- .animated -->
@endsection