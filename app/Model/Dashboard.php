<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use DB;

class Dashboard extends Model
{
    public static function countValues($table)
    {
    	$counts = DB::table($table)
    				->select('*')
    				->get();
    	return count($counts);
    }
}
