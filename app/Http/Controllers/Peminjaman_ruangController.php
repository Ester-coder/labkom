<?php

namespace App\Http\Controllers;

use App\Model\Peminjaman_ruang as Pr;
use Illuminate\Http\Request;

class Peminjaman_ruangController extends Controller
{
	
    public function list()
    {
    	$no = 1;
    	$data = Pr::list();
        
    	return view('peminjaman_ruang/list', compact('data', 'no'));
    }

	public function tambah()
    {
    	return view('peminjaman_ruang/tambah');
    }

    public function ubah($id)
    {
    	return view('peminjaman_ruang/ubah');
    }

    public function hapus($id)
    {
    	return view('peminjaman_ruang/hapus');
    }

}
