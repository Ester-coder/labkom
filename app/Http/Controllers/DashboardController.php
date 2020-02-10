<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Dashboard as Db;

class DashboardController extends Controller
{
    public function home()
    {
    	$count['ruang'] = Db::countValues('peminjaman_ruangs');
    	$count['alat'] = Db::countValues('peminjaman_alat');
    	$count['installasi'] = Db::countValues('jasa_install');
    	$count['print'] = Db::countValues('jasa_print');

    	return view('dashboard', compact('count'));
    }
}
