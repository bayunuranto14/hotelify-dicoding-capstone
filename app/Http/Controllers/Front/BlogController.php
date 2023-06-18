<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;

class BlogController extends Controller
{
    public function index()
    {
        $post_all = Post::orderBy('id','desc')->paginate(9);
        return view('front.blog', compact('post_all'));
    }
    public function details($id)
    {
        $post_data = Post::where('id',$id)->first();
        $post_data->total_view = $post_data->total_view + 1;
        $post_data->update();
        return view('front.blog_details', compact('post_data'));
    }
    
}
