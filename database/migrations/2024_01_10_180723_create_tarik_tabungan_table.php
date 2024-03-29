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
        Schema::create('tarik_tabungan', function (Blueprint $table) {
            $table->id();
            $table->date('tanggal_tarik'); 
            $table->string('siswa_id'); 
            $table->string('jumlah_tarik'); 
            $table->string('keterangan'); 
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
        Schema::dropIfExists('tarik_tabungan');
    }
};