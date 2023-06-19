<?php

namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Room;
use App\Models\RoomImage;
use App\Models\Facility;

class AdminRoomController extends Controller
{
    public function index()
    {
        $rooms = Room::all();
        return view('admin.room_view', compact('rooms'));
    }

    public function add()
    {
        $all_facilities = Facility::get();
        return view('admin.room_add', compact('all_facilities'));
    }

    public function store(Request $request)
    {
        $facilities = '';
        $i=0;
        if(isset($request->arr_facilities)) {
            foreach($request->arr_facilities as $item) {
                if($i==0) {
                    $facilities .= $item;
                } else {
                    $facilities .= ','.$item;
                }            
                $i++;
            }
        }

        $request->validate([
            'featured_image' => 'required|image|mimes:jpg,jpeg,png,gif',
            'name' => 'required',
            'description' => 'required',
            'price' => 'required',
            'total_rooms' => 'required'
        ]);

        $ext = $request->file('featured_image')->extension();
        $final_name = time().'.'.$ext;
        $request->file('featured_image')->move(public_path('uploads/'),$final_name);

        $obj = new Room();
        $obj->featured_image = $final_name;
        $obj->name = $request->name;
        $obj->description = $request->description;
        $obj->price = $request->price;
        $obj->total_rooms = $request->total_rooms;
        $obj->facilities = $facilities;
        $obj->size = $request->size;
        $obj->total_beds = $request->total_beds;
        $obj->total_bathrooms = $request->total_bathrooms;
        $obj->total_balconies = $request->total_balconies;
        $obj->total_guests = $request->total_guests;
        $obj->video_id = $request->video_id;
        $obj->save();

        return redirect()->back()->with('success', 'Room is added successfully.');

    }

    public function edit($id)
    {
        $all_facilities = Facility::get();
        $room_data = Room::where('id',$id)->first();

        $existing_facilities = array();
        if($room_data->facilities != '') {
            $existing_facilities = explode(',',$room_data->facilities);
        }
        return view('admin.room_edit', compact('room_data','all_facilities','existing_facilities'));
    }

    public function update(Request $request,$id) 
    {        
        $obj = Room::where('id',$id)->first();

        $facilities = '';
        $i=0;
        if(isset($request->arr_facilities)) {
            foreach($request->arr_facilities as $item) {
                if($i==0) {
                    $facilities .= $item;
                } else {
                    $facilities .= ','.$item;
                }            
                $i++;
            }
        }

        $request->validate([
            'name' => 'required',
            'description' => 'required',
            'price' => 'required',
            'total_rooms' => 'required'
        ]);

        if($request->hasFile('featured_image')) {
            $request->validate([
                'featured_image' => 'image|mimes:jpg,jpeg,png,gif'
            ]);
            unlink(public_path('uploads/'.$obj->featured_image));
            $ext = $request->file('featured_image')->extension();
            $final_name = time().'.'.$ext;
            $request->file('featured_image')->move(public_path('uploads/'),$final_name);
            $obj->featured_image= $final_name;
        }

        $obj->name = $request->name;
        $obj->description = $request->description;
        $obj->price = $request->price;
        $obj->total_rooms = $request->total_rooms;
        $obj->facilities = $facilities;
        $obj->size = $request->size;
        $obj->total_beds = $request->total_beds;
        $obj->total_bathrooms = $request->total_bathrooms;
        $obj->total_balconies = $request->total_balconies;
        $obj->total_guests = $request->total_guests;
        $obj->video_id = $request->video_id;
        $obj->update();

        return redirect()->back()->with('success', 'Room is updated successfully.');
    }

    public function delete($id)
    {
        $single_data = Room::where('id',$id)->first();
        unlink(public_path('uploads/'.$single_data->featured_image));
        $single_data->delete();

        $room_image_data = RoomImage::where('room_id',$id)->get();
        foreach($room_image_data as $item) {
            unlink(public_path('uploads/'.$item->image));
            $item->delete();
        }

        return redirect()->back()->with('success', 'Room is deleted successfully.');
    }

    public function gallery($id)
    {
        $room_data = Room::where('id',$id)->first();
        $room_images = RoomImage::where('room_id',$id)->get();
        return view('admin.room_gallery', compact('room_data','room_images'));
    }

    public function gallery_store(Request $request,$id)
    {
        $request->validate([
            'image' => 'required|image|mimes:jpg,jpeg,png,gif'
        ]);

        $ext = $request->file('image')->extension();
        $final_name = time().'.'.$ext;
        $request->file('image')->move(public_path('uploads/'),$final_name);

        $obj = new RoomImage();
        $obj->image = $final_name;
        $obj->room_id = $id;
        $obj->save();

        return redirect()->back()->with('success', 'Image is added successfully.');
    }

    public function gallery_delete($id)
    {
        $single_data = RoomImage::where('id',$id)->first();
        unlink(public_path('uploads/'.$single_data->image));
        $single_data->delete();

        return redirect()->back()->with('success', 'Image is deleted successfully.');
    }

    
}
