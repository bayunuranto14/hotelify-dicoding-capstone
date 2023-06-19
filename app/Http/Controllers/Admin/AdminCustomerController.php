<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Customer;

class AdminCustomerController extends Controller
{
    public function index()
    {
        $customers = Customer::get();    
        return view('admin.customer', compact('customers'));
    }

    public function change_status($id)
    {
        $customer = Customer::where('id', $id)->first();
        if($customer->status == 1){
            $customer->status = 0;
        }else{
            $customer->status = 1;
        }
        $customer->update();
        return redirect()->back()->with('success', 'Customer status updated successfully');
    }
}
