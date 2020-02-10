<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJasaInstallTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jasa_install', function (Blueprint $table) {
            $table->bigIncrements('id_jasa_install');
            $table->string('tanggal', 20);
            $table->string('service', 100);
            $table->text('deskripsi_barang');
            $table->string('no_hp', 12);
            $table->string('kelengkapan', 50);
            $table->enum('status_service', ['belum', 'selesai']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jasa_install');
    }
}
