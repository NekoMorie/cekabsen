@extends('templates.app')
@section('container')
    <div class="tf-spacing-20"></div>
    <center>
        <a href="{{ url('/my-dokumen/tambah') }}" class="btn btn-primary btn-sm" style="font-size: 12px">+ Tambah Dokumen</a>
    </center>
    <div class="tf-spacing-20"></div>
    <div class="transfer-content">
        <div class="tf-container">
            <table id="tableprint" class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Nama Pegawai</th>
                        <th>Nama Dokumen</th>
                        <th>Tanggal Upload</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($data_dokumen as $dd)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $dd->User->name }}</td>
                            <td>{{ $dd->nama_dokumen}}</td>
                            <td>{{ $dd->tanggal_berakhir}}</td>
                            
                            <td>
                                <a href="{{ url('storage/'.$dd->file) }}" class="btn btn-sm btn-info" target="_blank"><i class="fa fa-solid fa-download"></i></a>
                                <a href="{{ url('/my-dokumen/edit/'.$dd->id) }}" class="btn btn-sm btn-warning"><i class="fa fa-solid fa-edit"></i></a>
                                <form action="{{ url('/my-dokumen/delete/'.$dd->id) }}" method="post" class="d-inline">
                                    @method('delete')
                                    @csrf
                                    <button class="btn btn-danger btn-sm btn-circle" style="width: 30px" onClick="return confirm('Are You Sure')"><i class="fa fa-solid fa-trash"></i></button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <br>
    <br>
    <br>
    <br>
@endsection