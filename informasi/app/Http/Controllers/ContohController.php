<?php

namespace App\Http\Controllers;

class ContohController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function informasi()
    {
        $text = 'KETEK';
        return response()->json([
            'message' => $text
        ]);
    }
    //
}
