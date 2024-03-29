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
        Schema::create('nilai_siswa_head', function (Blueprint $table) {
            $table->id();
            $table->string('tahun_ajaran_id'); 
            $table->string('kelas_id'); 
            $table->string('siswa_id'); 
            $table->string('nilai'); 
            $table->string('grade'); 
            $table->string('rank'); 
            $table->string('keterangan'); 
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
        Schema::dropIfExists('nilai_siswa_head');
    }
};
