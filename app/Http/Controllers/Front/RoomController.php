<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Room;


class RoomController extends Controller
{


    public function index()
    {
        $rooms = Room::paginate(12);
        return view('front.room', compact('rooms'));
    }

    public function room_detail($id)
    {
        $room_detail_data = Room::with('rRoomImage')->where('id', $id)->first();
        return view('front.room_detail', compact('room_detail_data'));
    }
    
}
