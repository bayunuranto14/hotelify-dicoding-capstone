<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Setting;

class AdminSettingController extends Controller
{
    public function index()
    {
        $setting_data = Setting::where('id',1)->first();
        return view('admin.setting', compact('setting_data'));
    }

    public function update(Request $request)
    {
        $obj = Setting::find(1);
        if($request->hasFile('logo')) {
            $request->validate([
                'logo' => 'image|mimes:jpg,jpeg,png,gif'
            ]);
            unlink(public_path('uploads/'.$obj->logo));
            $ext = $request->file('logo')->extension();
            $final_name = time().'.'.$ext;
            $request->file('logo')->move(public_path('uploads/'),$final_name);
            $obj->logo = $final_name;
        }
        if($request->hasFile('favicon')) {
            $request->validate([
                'favicon' => 'image|mimes:jpg,jpeg,png,gif'
            ]);
            unlink(public_path('uploads/'.$obj->favicon));
            $ext = $request->file('favicon')->extension();
            $final_name = time().'.'.$ext;
            $request->file('favicon')->move(public_path('uploads/'),$final_name);
            $obj->favicon = $final_name;
        }

        $obj->phone = $request->phone;
        $obj->email = $request->email;
        $obj->home_feature_status = $request->home_feature_status;
        $obj->home_room_total = $request->home_room_total;
        $obj->home_room_status = $request->home_room_status;
        $obj->home_testimonial_status = $request->home_testimonial_status;
        $obj->home_latest_post_total = $request->home_latest_post_total;
        $obj->home_latest_post_status = $request->home_latest_post_status;
        $obj->address = $request->address;
        $obj->copyright = $request->copyright;
        $obj->facebook = $request->facebook;
        $obj->twitter = $request->twitter;
        $obj->linkedin = $request->linkedin;
        $obj->pinterest = $request->pinterest;
        $obj->instagram = $request->instagram;
        $obj->theme_color_1 = $request->theme_color_1;
        $obj->theme_color_2 = $request->theme_color_2;
        $obj->update();

        return redirect()->back()->with('success', 'Setting is updated successfully.');
    }
}
