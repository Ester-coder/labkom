<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'DashboardController@home');
     
Route::get('/peminjaman_ruang', 'Peminjaman_ruangController@list');

Route::get('/peminjaman_alat', 'Peminjaman_alatController@list');

Route::get('/installasi', 'installasiController@list');

Route::get('/jasa_print', 'jasa_printController@list');


