<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Slide;

class AdminSlideController extends Controller
{
    public function index()
    {
        $slides = Slide::get();
        return view('admin.slide_view', compact('slides'));
    }

    public function add()
    {
        return view('admin.slide_add');
    }

    public function store(Request $request)
    {
        $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg'
        ]);

        $ext = $request->file('image')->extension();
        $final_name = 'slide' . time() . '.' . $ext;
        $request->file('image')->move(public_path('uploads/'), $final_name);
        //$admin_data->image = $final_name;

        $obj = new Slide();
        $obj->image = $final_name;
        $obj->heading = $request->heading;
        $obj->text = $request->text;
        $obj->button_text = $request->button_text;
        $obj->button_url = $request->button_url;
        $obj->save();

        return redirect()->back()->with('success', 'Slide added successfully !!');
    }

    public function edit($id)
    {
        //echo $id;

        $slide_data = Slide::where('id', $id)->first();
        return view('admin.slide_edit', compact('slide_data'));
    }


    public function update(Request $request, $id)
    {

        $obj = Slide::where('id', $id)->first();

        if ($request->hasFile('image')) {

            $request->validate([
                'image' => 'image|mimes:jpeg,png,jpg,gif,svg'
            ]);

            unlink(public_path('uploads/' . $obj->image));
            $ext = $request->file('image')->extension();
            $final_name = 'slide' . time() . '.' . $ext;
            $request->file('image')->move(public_path('uploads/'), $final_name);
            $obj->image = $final_name;
        }

        $obj->heading = $request->heading;
        $obj->text = $request->text;
        $obj->button_text = $request->button_text;
        $obj->button_url = $request->button_url;
        $obj->update();

        return redirect()->back()->with('success', 'Slide updated successfully !!');
    }

    public function delete($id)
    {
        $obj = Slide::where('id', $id)->first();
        unlink(public_path('uploads/' . $obj->image));
        $obj->delete();
        return redirect()->back()->with('success', 'Slide deleted successfully !!');
    }
}
