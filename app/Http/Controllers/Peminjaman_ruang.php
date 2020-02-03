<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Peminjaman_ruang extends Controller
{
    public function list()
    {
    	return view('peminjaman_ruang/list');
    }

	public function tambah()
    {
    	return view('peminjaman_ruang/tambah');
    }

}
