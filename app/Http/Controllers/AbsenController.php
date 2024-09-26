<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Lokasi;
use App\Exports\AbsenExport;
use App\Models\MappingShift;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Storage;
use RealRashid\SweetAlert\Facades\Alert;

class AbsenController extends Controller
{
    public function index()
    {
        date_default_timezone_set('Asia/Jakarta');
        $user_login = auth()->user()->id;
        $tanggal = "";
        $tglskrg = date('Y-m-d');
        $tglkmrn = date('Y-m-d', strtotime('-1 days'));
        $mapping_shift = MappingShift::where('user_id', $user_login)->where('tanggal', $tglkmrn)->get();
        if($mapping_shift->count() > 0) {
            foreach($mapping_shift as $mp) {
                $jam_absen = $mp->jam_absen;
                $jam_pulang = $mp->jam_pulang;
            }
        } else {
            $jam_absen = "-";
            $jam_pulang = "-";
        }
        if($jam_absen != null && $jam_pulang == null) {
            $tanggal = $tglkmrn;
        } else {
            $tanggal = $tglskrg;
        }

        if (auth()->user()->is_admin == 'admin') {
            return view('absen.index', [
                'title' => 'Absen',
                'shift_karyawan' => MappingShift::where('user_id', $user_login)->where('tanggal', $tanggal)->first()
            ]);
        } else {
            return view('absen.indexUser', [
                'title' => 'Absen',
                'shift_karyawan' => MappingShift::where('user_id', $user_login)->where('tanggal', $tanggal)->first()
            ]);
        }
        
    }

    public function myLocation(Request $request)
    {
        return redirect('maps/'.$request["lat"].'/'.$request['long'].'/'.$request['userid']);
    }

    public function absenMasuk(Request $request, $id)
    {
        date_default_timezone_set('Asia/Jakarta');
       
        $lat_kantor = auth()->user()->Lokasi->lat_kantor;
        $long_kantor = auth()->user()->Lokasi->long_kantor;
        $radius = auth()->user()->Lokasi->radius;
        $nama_lokasi = auth()->user()->Lokasi->nama_lokasi;

        $request["jarak_masuk"] = $this->distance($request["lat_absen"], $request["long_absen"], $lat_kantor, $long_kantor, "K") * 1000;

        $request["jam_absen"] = date('H:i');

        $mapping_shift = MappingShift::find($id);

        if($request["jarak_masuk"] > $radius && $mapping_shift->lock_location == 1) {
            Alert::error('Diluar Jangkauan', 'Lokasi Anda Diluar Radius ' . $nama_lokasi);
            return redirect('/absen');
        } else {
            $foto_jam_absen = $request["foto_jam_absen"];

            $image_parts = explode(";base64,", $foto_jam_absen);
    
            $image_base64 = base64_decode($image_parts[1]);
            $fileName = 'foto_jam_absen/' . uniqid() . '.png';
    
            Storage::put($fileName, $image_base64);
    
    
            $request["foto_jam_absen"] = $fileName;
    
            $request["status_absen"] = "Masuk";
    
            $shift = $mapping_shift->Shift->jam_masuk;
            $tanggal = $mapping_shift->tanggal;
    
            $tgl_skrg = date("Y-m-d");
    
            $awal  = strtotime($tanggal . $shift);
            $akhir = strtotime($tgl_skrg . $request["jam_absen"]);
            $diff  = $akhir - $awal;
    
            if ($diff <= 0) {
                $request["telat"] = 0;
            } else {
                $request["telat"] = $diff;
            }

            if ($mapping_shift->lock_location == 1) {
                $validatedData = $request->validate([
                    'jam_absen' => 'required',
                    'telat' => 'nullable',
                    'foto_jam_absen' => 'required',
                    'lat_absen' => 'required',
                    'long_absen' => 'required',
                    'jarak_masuk' => 'required',
                    'status_absen' => 'required'
                ]);
            } else {
                $validatedData = $request->validate([
                    'jam_absen' => 'required',
                    'telat' => 'nullable',
                    'foto_jam_absen' => 'required',
                    'lat_absen' => 'required',
                    'long_absen' => 'required',
                    'jarak_masuk' => 'required',
                    'keterangan_masuk' => 'required',
                    'status_absen' => 'required'
                ]);
            }
    
            MappingShift::where('id', $id)->update($validatedData);

            $request->session()->flash('success', 'Berhasil Absen Masuk');
    
            return redirect('/absen');
        }

    }

    public function absenPulang(Request $request, $id)
    {
        date_default_timezone_set('Asia/Jakarta');
        $request["jam_pulang"] = date('H:i');

        $lat_kantor = auth()->user()->Lokasi->lat_kantor;
        $long_kantor = auth()->user()->Lokasi->long_kantor;
        $radius = auth()->user()->Lokasi->radius;
        $nama_lokasi = auth()->user()->Lokasi->nama_lokasi;

        $request["jarak_pulang"] = $this->distance($request["lat_pulang"], $request["long_pulang"], $lat_kantor, $long_kantor, "K") * 1000;

        $mapping_shift = MappingShift::find($id);

        if($request["jarak_pulang"] > $radius && $mapping_shift->lock_location == 1) {
            Alert::error('Diluar Jangkauan', 'Lokasi Anda Diluar Radius ' . $nama_lokasi);
            return redirect('/absen');
        } else {
            $foto_jam_pulang = $request["foto_jam_pulang"];

            $image_parts = explode(";base64,", $foto_jam_pulang);
    
            $image_base64 = base64_decode($image_parts[1]);
            $fileName = 'foto_jam_pulang/' . uniqid() . '.png';
    
            Storage::put($fileName, $image_base64);
    
            $request["foto_jam_pulang"] = $fileName;
    
            
            $shiftmasuk = $mapping_shift->Shift->jam_masuk;
            $shiftpulang = $mapping_shift->Shift->jam_keluar;
            $tanggal = $mapping_shift->tanggal;
            $new_tanggal = "";
            $timeMasuk = strtotime($shiftmasuk);
            $timePulang = strtotime($shiftpulang);
    
    
            if ($timePulang < $timeMasuk) {
                $new_tanggal = date('Y-m-d', strtotime('+1 days', strtotime($tanggal)));
            } else {
                $new_tanggal = $tanggal;
            }
    
            $tgl_skrg = date("Y-m-d");
    
            $akhir = strtotime($new_tanggal . $shiftpulang);
            $awal  = strtotime($tgl_skrg . $request["jam_pulang"]);
            $diff  = $akhir - $awal;
    
            if ($diff <= 0) {
                $request["pulang_cepat"] = 0;
            } else {
                $request["pulang_cepat"] = $diff;
            }

            if ($mapping_shift->lock_location == 1) {
                $validatedData = $request->validate([
                    'jam_pulang' => 'required',
                    'foto_jam_pulang' => 'required',
                    'lat_pulang' => 'required',
                    'long_pulang' => 'required',
                    'pulang_cepat' => 'required',
                    'jarak_pulang' => 'required'
                ]);
            } else {
                $validatedData = $request->validate([
                    'jam_pulang' => 'required',
                    'foto_jam_pulang' => 'required',
                    'lat_pulang' => 'required',
                    'long_pulang' => 'required',
                    'pulang_cepat' => 'required',
                    'keterangan_pulang' => 'required',
                    'jarak_pulang' => 'required'
                ]);
            }

            MappingShift::where('id', $id)->update($validatedData);
    
            return redirect('/absen')->with('success', 'Berhasil Absen Pulang');
        }
    }

    public function distance($lat1, $lon1, $lat2, $lon2, $unit)
    {
        $theta = $lon1 - $lon2;
        $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) +  cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
        $dist = acos($dist);
        $dist = rad2deg($dist);
        $miles = $dist * 60 * 1.1515;
        $unit = strtoupper($unit);
      
        if ($unit == "K") {
            return ($miles * 1.609344);
        } else if ($unit == "N") {
            return ($miles * 0.8684);
        } else {
            return $miles;
        }
    }

    public function dataAbsen()
    {
        date_default_timezone_set('Asia/Jakarta');
        $data_absen = MappingShift::dataAbsen()->paginate(10)->withQueryString();

        return view('absen.dataabsen', [
            'title' => 'Data Absen',
            'user' => User::select('id', 'name')->get(),
            'data_absen' => $data_absen
        ]);
    }
    
    public function exportDataAbsen()
    {
        return (new AbsenExport($_GET))->download('List Attendance.xlsx');
    }

    public function maps($lat, $long, $userid)
    {
        date_default_timezone_set('Asia/Jakarta');
        return view('absen.maps', [
            'title' => 'Maps',
            'lat' => $lat,
            'long' => $long,
            'data_user' => User::findOrFail($userid)
        ]);
    }

    public function editMasuk($id)
    {
        $mapping_shift = MappingShift::findOrFail($id);
        $user = User::findOrFail($mapping_shift->user_id);
        $lokasi = $user->Lokasi;
        return view('absen.editmasuk', [
            'title' => 'Edit Absen Masuk',
            'data_absen' => $mapping_shift,
            'lokasi_kantor' => $lokasi
        ]);
    }

    public function prosesEditMasuk(Request $request, $id)
    {
        date_default_timezone_set('Asia/Jakarta');

        $mapping_shift = MappingShift::where('id', $id)->get();

        foreach ($mapping_shift as $mp) {
            $shift = $mp->Shift->jam_masuk;
            $tanggal = $mp->tanggal;
            $user_id = $mp->user_id;
        }

        $awal  = strtotime($tanggal . $shift);
        $akhir = strtotime($tanggal . $request["jam_absen"]);
        $diff  = $akhir - $awal;

        if ($diff <= 0) {
            $request["telat"] = 0;
        } else {
            $request["telat"] = $diff;
        }

        $user = User::findOrFail($user_id);
        $lat_kantor = $user->Lokasi->lat_kantor;
        $long_kantor = $user->Lokasi->long_kantor;

        $request["jarak_masuk"] = $this->distance($request["lat_absen"], $request["long_absen"], $lat_kantor, $long_kantor, "K") * 1000;

        $validatedData = $request->validate([
            'jam_absen' => 'required',
            'telat' => 'nullable',
            'foto_jam_absen' => 'image|max:5000',   
            'lat_absen' => 'required',
            'long_absen' => 'required',
            'jarak_masuk' => 'required',
            'status_absen' => 'required'
        ]);

        if ($request->file('foto_jam_absen')) {
            if ($request->foto_jam_absen_lama) {
                Storage::delete($request->foto_jam_absen_lama);
            }
            $validatedData['foto_jam_absen'] = $request->file('foto_jam_absen')->store('foto_jam_absen');
        }

        MappingShift::where('id', $id)->update($validatedData);
        return redirect('/data-absen')->with('success', 'Berhasil Edit Absen Masuk (Manual)');
    }

    public function editPulang($id)
    {
        $mapping_shift = MappingShift::findOrFail($id);
        $user = User::findOrFail($mapping_shift->user_id);
        $lokasi = $user->Lokasi;
        return view('absen.editpulang', [
            'title' => 'Edit Absen Pulang',
            'data_absen' => $mapping_shift,
            'lokasi_kantor' => $lokasi
        ]);
    }

    public function prosesEditPulang(Request $request, $id)
    {
        $mapping_shift = MappingShift::where('id', $id)->get();
        foreach ($mapping_shift as $mp) {
            $shiftmasuk = $mp->Shift->jam_masuk;
            $shiftpulang = $mp->Shift->jam_keluar;
            $tanggal = $mp->tanggal;
            $user_id = $mp->user_id;
        }
        $new_tanggal = "";
        $timeMasuk = strtotime($shiftmasuk);
        $timePulang = strtotime($shiftpulang);


        if ($timePulang < $timeMasuk) {
            $new_tanggal = date('Y-m-d', strtotime('+1 days', strtotime($tanggal)));
        } else {
            $new_tanggal = $tanggal;
        }

        $akhir = strtotime($new_tanggal . $shiftpulang);
        $awal  = strtotime($new_tanggal . $request["jam_pulang"]);
        $diff  = $akhir - $awal;

        if ($diff <= 0) {
            $request["pulang_cepat"] = 0;
        } else {
            $request["pulang_cepat"] = $diff;
        }

        $user = User::findOrFail($user_id);
        $lat_kantor = $user->Lokasi->lat_kantor;
        $long_kantor = $user->Lokasi->long_kantor;
        
        $request["jarak_pulang"] = $this->distance($request["lat_pulang"], $request["long_pulang"], $lat_kantor, $long_kantor, "K") * 1000;

        $validatedData = $request->validate([
            'jam_pulang' => 'required',
            'foto_jam_pulang' => 'image|max:5000',
            'lat_pulang' => 'required',
            'long_pulang' => 'required',
            'pulang_cepat' => 'required',
            'jarak_pulang' => 'required'
        ]);

        if ($request->file('foto_jam_pulang')) {
            if ($request->foto_jam_pulang_lama) {
                Storage::delete($request->foto_jam_pulang_lama);
            }
            $validatedData['foto_jam_pulang'] = $request->file('foto_jam_pulang')->store('foto_jam_pulang');
        }

        MappingShift::where('id', $id)->update($validatedData);

        return redirect('/data-absen')->with('success', 'Berhasil Edit Absen Pulang (Manual)');
    }
    
    public function deleteAdmin($id)
    {
        $delete = MappingShift::find($id);
        Storage::delete($delete->foto_jam_absen);
        Storage::delete($delete->foto_jam_pulang);
        $delete->delete();
        return redirect('/data-absen')->with('success', 'Data Berhasil di Delete');
    }

    public function myAbsen(Request $request)
    {
        date_default_timezone_set('Asia/Jakarta');
        $tglskrg = date('Y-m-d');
        $data_absen = MappingShift::where('tanggal', $tglskrg)->where('user_id', auth()->user()->id);

        if($request["mulai"] == null) {
            $request["mulai"] = $request["akhir"];
        }

        if($request["akhir"] == null) {
            $request["akhir"] = $request["mulai"];
        }

        if ($request["mulai"] && $request["akhir"]) {
            $data_absen = MappingShift::where('user_id', auth()->user()->id)->whereBetween('tanggal', [$request["mulai"], $request["akhir"]]);
        }

        if (auth()->user()->is_admin == 'admin') {
            return view('absen.myabsen', [
                'title' => 'My Absen',
                'data_absen' => $data_absen->paginate(10)->withQueryString()
            ]);
        } else {
            return view('absen.myabsenuser', [
                'title' => 'My Absen',
                'data_absen' => $data_absen->paginate(10)->withQueryString()
            ]);
        }
    }
}
