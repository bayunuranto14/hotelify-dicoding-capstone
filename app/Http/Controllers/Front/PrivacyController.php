<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Page;


class PrivacyController extends Controller
{
    public function index()
    {
        $privacy_data = Page::where('id',1)->first();
        return view('front.privacy', compact('privacy_data'));
    }
}
