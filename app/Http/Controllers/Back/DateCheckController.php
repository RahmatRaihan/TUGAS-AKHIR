<?php

namespace App\Http\Controllers\Back;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Pemesanan;

class DateCheckController extends Controller
{
    public function checkDuplicateDate(Request $request)
    {
        $tanggal_acara = $request->input('tanggal_acara');

        $count = Pemesanan::where('tanggal_acara', $tanggal_acara)->count();

        return response()->json(['valid' => $count < 2]);
    }
}
