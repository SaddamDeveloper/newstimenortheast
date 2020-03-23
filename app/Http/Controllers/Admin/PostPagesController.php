<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PostPagesController extends Controller
{
    public function createPost(){
        return view('admin.create_post');
    }

    public function addPost(Request $request){
        return $request;
    }
}
