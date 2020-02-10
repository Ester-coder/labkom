<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePeminjamanAlatTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('peminjaman_alat', function (Blueprint $table) {
            $table->bigIncrements('id_peminjaman_alat');
            $table->string('tanggal_pinjam', 20);
            $table->string('tanggal_kembali', 20);
            $table->string('waktu_pinjam', 20);
            $table->string('tempat', 50);
            $table->string('no_hp', 12);
            $table->integer('id_peminjam', 11)->unsigned();
            $table->foreign('id_peminjam')->references('id_peminjam')->on('peminjam');
            $table->integer('id_alat', 11)->unsigned();
            $table->foreign('id_alat')->references('id_alat')->on('alat');
            $table->integer('total_harga_sewa', 11);
            $table->enum('status_peminjaman', ['belum', 'selesai']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('peminjaman_alat');
    }
}
