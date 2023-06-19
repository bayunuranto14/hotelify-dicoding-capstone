<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Customer;
use Illuminate\Support\Facades\Auth;
use App\Models\Order;
use App\Models\Room;



class AdminHomeController extends Controller
{
    public function index()
    {
        $total_completed_orders = Order::where('status', 'Completed')->count();
        $total_pending_orders = Order::where('status', 'Pending')->count();
        $total_active_customers = Customer::where('status', 1)->count();
        $total_inactive_customers = Customer::where('status', 0)->count();
        $total_rooms = Room::sum('total_rooms');
        $total_amount = Order::sum('paid_amount');

        $orders = Order::orderBy('id','desc')->skip(0)->take(5)->get();
        return view('admin.home',compact('total_completed_orders','total_pending_orders','total_active_customers','total_inactive_customers','total_rooms','total_amount','orders'));
    }
}
