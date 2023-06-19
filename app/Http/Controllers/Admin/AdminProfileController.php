<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Admin;
use Illuminate\Support\Facades\Hash;

class AdminProfileController extends Controller
{
    public function index()
    {
        return view('admin.profile');
    }

    public function profile_submit(Request $request)
    {
        $admin_data = Admin::where('email',Auth::guard('admin')->user()->email)->first();

        $request->validate([
            'name' => 'required',
            'email' => 'required|email'
        ]);

        if($request->password!='') {
            $request->validate([
                'password' => 'required',
                'retype_password' => 'required|same:password'
            ]);

            $admin_data->password = Hash::make($request->password);

        }

        if($request->hasFile('picture')){
            $request->validate([
                'picture' => 'image|mimes:jpeg,png,jpg,gif,svg'
            ]);
            
            unlink(public_path('uploads/'.$admin_data->picture));
            $ext = $request->file('picture')->extension();
            $final_name = 'admin'.'.'.$ext;
            $request->file('picture')->move(public_path('uploads/'), $final_name);
            $admin_data->picture = $final_name;

        }


        $admin_data->name = $request->name;
        $admin_data->email = $request->email;
        $admin_data->update();

        return redirect()->back()->with('success', 'Profile updated successfully !!');


    }
}
