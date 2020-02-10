<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJasaPrintTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('jasa_print', function (Blueprint $table) {
            $table->bigIncrements('id_jasa_print');
            $table->string('tanggal', 20);
            $table->enum('jenis_print', ['hitam_putih', 'berwarna']);
            $table->integer('jumlah', 11);
            $table->integer('harga', 11);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('jasa_print');
    }
}
