<?php

namespace App\Http\Controllers;

use App\Models\Guru;
use Illuminate\Http\Request;
 
 
 

class LaporanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function guru(Request $request)
    {
        $filterStartDate = $request->start_date ?? null;
        $filterEndDate = $request->end_date ?? null;
    
        $guru = Guru::when($filterStartDate && $filterEndDate, function ($q) use ($filterStartDate, $filterEndDate) {
                return $q->whereDate('tanggal_masuk', '>=', $filterStartDate)
                    ->whereDate('tanggal_masuk', '<=', $filterEndDate);
            })
            ->get();
    
        return view('back.laporan.guru.index', compact('guru', 'filterStartDate', 'filterEndDate'));
    }
    
 
    
 
    


   


    
}
