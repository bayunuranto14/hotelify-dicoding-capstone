<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Facility;

class AdminFacilityController extends Controller
{
    public function index()
    {
        $facilities = Facility::get();
        return view('admin.facility_view', compact('facilities'));
    }

    public function add()
    {
        return view('admin.facility_add');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required'
        ]);

        $obj = new Facility();
        $obj->name = $request->name;
        $obj->save();

        return redirect()->back()->with('success', 'Facility is added successfully.');

    }


    public function edit($id)
    {
        $facility_data = Facility::where('id',$id)->first();
        return view('admin.facility_edit', compact('facility_data'));
    }

    public function update(Request $request,$id) 
    {        
        $obj = Facility::where('id',$id)->first();
        $obj->name = $request->name;
        $obj->update();

        return redirect()->back()->with('success', 'Facility is updated successfully.');
    }

    public function delete($id)
    {
        $single_data = Facility::where('id',$id)->first();
        $single_data->delete();

        return redirect()->back()->with('success', 'Facility is deleted successfully.');
    }
    
}
