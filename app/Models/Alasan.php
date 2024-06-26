<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Alasan extends Model
{
    use HasFactory;
    protected $table = 'alasan';
    protected $fillable = [
        'nama_alasan',
        'keterangan',
        'ikon',
        'urutan',
    ];
}
