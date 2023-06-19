<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Gallery;


class AdminGalleryController extends Controller
{
    public function index()
    {
        $gallery = Gallery::get();
        return view('admin.gallery_view', compact('gallery'));
    }

    public function add()
    {
        return view('admin.gallery_add');
    }

    public function store(Request $request)
    {
        $request->validate([
            'image' => 'required|image|mimes:jpg,jpeg,png,gif'
        ]);

        $ext = $request->file('image')->extension();
        $final_name = 'IMG-'.time().'.'.$ext;
        $request->file('image')->move(public_path('uploads/'),$final_name);

        $obj = new Gallery();
        $obj->image = $final_name;
        $obj->caption = $request->caption;
        $obj->save();

        return redirect()->back()->with('success', 'Image is added successfully.');

    }


    public function edit($id)
    {
        $gallery_data = Gallery::where('id',$id)->first();
        return view('admin.gallery_edit', compact('gallery_data'));
    }

    public function update(Request $request,$id) 
    {        
        $obj = Gallery::where('id',$id)->first();
        if($request->hasFile('image')) {
            $request->validate([
                'image' => 'image|mimes:jpg,jpeg,png,gif'
            ]);
            unlink(public_path('uploads/'.$obj->image));
            $ext = $request->file('image')->extension();
            $final_name = time().'.'.$ext;
            $request->file('image')->move(public_path('uploads/'),$final_name);
            $obj->image = $final_name;
        }

        $obj->caption = $request->caption;
        $obj->update();

        return redirect()->back()->with('success', 'Image is updated successfully.');
    }

    public function delete($id)
    {
        $single_data = Gallery::where('id',$id)->first();
        unlink(public_path('uploads/'.$single_data->image));
        $single_data->delete();

        return redirect()->back()->with('success', 'Image is deleted successfully.');
    }
}
