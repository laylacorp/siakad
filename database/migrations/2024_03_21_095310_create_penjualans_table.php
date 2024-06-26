<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('penjualan', function (Blueprint $table) {
            $table->id();
            $table->date('tanggal_penjualan'); 
            $table->string('kode_penjualan'); 
            $table->string('konsumen_id'); 
            $table->string('nama_konsumen'); 
            $table->string('total_bayar'); 
            $table->string('jenis_pembayaran'); 
            $table->string('bukti'); 
            $table->string('pic'); 
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('penjualan');
    }
};
