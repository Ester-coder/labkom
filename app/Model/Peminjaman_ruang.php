<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use DB;


class Peminjaman_ruang extends Model
{
    public static function list()
    {
    	$list = DB::table('peminjaman_ruangs')
		    	->join('jurusan', 'peminjaman_ruangs.id_jurusan', '=', 'jurusan.id_jurusan')
		    	->join('ruang', 'peminjaman_ruangs.id_ruang', '=', 'ruang.id_ruang')
		    	->select('*')
		    	->orderBy('id_peminjaman_ruang', 'desc')
		    	->get();
		return $list;
    }
}
