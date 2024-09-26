@extends('templates.app')
@section('container')
    <div class="tf-spacing-20"></div>
    <center>
        <a href="{{ url('/request-location/tambah') }}" class="btn btn-primary btn-sm" style="font-size: 12px">+ Tambah Data Lokasi</a>
    </center>
    <div class="tf-spacing-20"></div>
    <div class="transfer-content">
        <div class="tf-container">
            <table id="tableprint" class="table table-bordered table-striped">
                <thead>
                        <tr>
                            <th>No.</th>
                            <th>Nama Lokasi</th>
                            <th>Latitude</th>
                            <th>Longitude</th>
                            <th>Radius (Meter)</th>
                            <th>Status</th>
                            <th>Created By</th>
                            <th>Actions</th>
                        </tr>
                </thead>
                <tbody>
                        @foreach ($data_lokasi as $dl)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $dl->nama_lokasi }}</td>
                                <td>{{ $dl->lat_kantor }}</td>
                                <td>{{ $dl->long_kantor }}</td>
                                <td>{{ $dl->radius }}</td>
                                <td>{{ $dl->status }}</td>
                                <td>{{ $dl->CreatedBy->name }}</td>
                                <td>
                                    @if ($dl->status == 'approved')
                                        <span class="badge badge-success">{{ $dl->status }}</span>
                                    @else
                                        <a href="{{ url('/request-location/edit/'.$dl->id) }}" class="btn btn-sm btn-warning"><i class="fa fa-solid fa-edit"></i></a>
                                        <form action="{{ url('/request-location/delete/'.$dl->id) }}" method="post" class="d-inline">
                                            @method('delete')
                                            @csrf
                                            <button class="btn btn-danger btn-sm btn-circle" style="width: 40px" onClick="return confirm('Are You Sure')"><i class="fa fa-solid fa-trash"></i></button>
                                        </form>
                                    @endif
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