@extends('../template')

@section('title', 'Peminjaman Ruang')

@section('page', 'List Pinjam Ruang')

@section('content')
<div class="animated fadeIn">
    <div class="row">

        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <strong class="card-title">Peminjaman Ruang</strong>
                </div>
                <div class="card-body">
                    <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>tanggal pinjam</th>
                                <th>peminjam</th>
                                <th>dosen</th>
                                <th>jam</th>
                                <th>jenis pinjam</th>
                                <th>jurusan</th>
                                <th>ruang</th>
                                <th>status</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if($data != null)
                            @foreach($data as $row)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>{{ $row->tanggal_pinjam }}</td>
                                <td>{{ $row->nama_peminjam }}</td>
                                <td>{{ $row->dosen_pengampu }}</td>
                                <td>{{ $row->jam_pinjam }}</td>
                                <td>{{ $row->jenis_peminjaman }}</td>
                                <td>{{ $row->nama_jurusan }} {{ $row->angkatan }}</td>
                                <td>{{ $row->nama_ruang }}</td>
                                <td>
                                    @if($row->status_pinjam == "belum")
                                        <span class="btn btn-danger"><i class="fa fa-times"></i></span>
                                    @else
                                        <span class="btn btn-success"><i class="fa fa-check"></i></span>
                                    @endif
                                </td>
                            </tr>
                            @endforeach
                            @endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>


    </div>
</div><!-- .animated -->
@endsection