<?php


namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;

class AdminPostController extends Controller
{
    public function index()
    {
        $posts = Post::get();
        return view('admin.post_view', compact('posts'));
    }
    public function add()
    {
        return view('admin.post_add');
    }

    public function store(Request $request)
    {
        $request->validate([
            'image' => 'required|image|mimes:jpg,jpeg,png,gif',
            'heading' => 'required',
            'short_desc' => 'required',
            'content' => 'required'
        ]);

        $ext = $request->file('image')->extension();
        $final_name = 'post-img-'.time().'.'.$ext;
        $request->file('image')->move(public_path('uploads/'),$final_name);

        $obj = new Post();
        $obj->image = $final_name;
        $obj->heading = $request->heading;
        $obj->short_desc = $request->short_desc;
        $obj->content = $request->content;
        $obj->total_view = 1;
        $obj->save();

        return redirect()->back()->with('success', 'Post is added successfully.');

    }

    public function edit($id)
    {
        $post_data = Post::where('id',$id)->first();
        return view('admin.post_edit', compact('post_data'));
    }

    public function update(Request $request,$id) 
    {        
        $obj = Post::where('id',$id)->first();
        if($request->hasFile('image')) {
            $request->validate([
                'image' => 'image|mimes:jpg,jpeg,png,gif'
            ]);
            unlink(public_path('uploads/'.$obj->image));
            $ext = $request->file('image')->extension();
            $final_name = 'post-img-'.time().'.'.$ext;
            $request->file('image')->move(public_path('uploads/'),$final_name);
            $obj->image = $final_name;
        }

        $obj->heading = $request->heading;
        $obj->short_desc = $request->short_desc;
        $obj->content = $request->content;
        $obj->update();

        return redirect()->back()->with('success', 'Post is updated successfully.');
    }

    public function delete($id)
    {
        $single_data = Post::where('id',$id)->first();
        unlink(public_path('uploads/'.$single_data->image));
        $single_data->delete();

        return redirect()->back()->with('success', 'Post is deleted successfully.');
    }
    
}
