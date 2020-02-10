<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePeminjamanRuangsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('peminjaman_ruangs', function (Blueprint $table) {
            $table->bigIncrements('id_peminjaman_ruang');
            $table->string('tanggal_pinjam', 20);
            $table->string('nama_peminjam', 20);
            $table->string('dosen_pengampu', 20);
            $table->string('jam_pinjam', 20);
            $table->enum('status_pinjam', ['belum', 'selesai']);
            $table->integer('id_jurusan', 11)->unsigned();
            $table->foreign('id_jurusan')->references('id_jurusan')->on('jurusan');
            $table->integer('id_ruang', 11)->unsigned();
            $table->foreign('id_ruang')->references('id_ruang')->on('ruang');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('peminjaman_ruangs');
    }
}
