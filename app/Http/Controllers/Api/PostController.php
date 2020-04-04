<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Carbon\Carbon;
use Validator;

class PostController extends Controller
{
    public function categoryList(){
        $category = DB::table('category')->orderBy('category_name', 'asc')->get();
        $response = [
            'status' => true,
            'message' => 'Category List',
            'data' => $category,
        ];
        return response()->json($response, 200);
    }

    public function postListWithCategory($type, $category, $page)
    {
        $posts = DB::table('posts')->where('cat_id', $category)->where('post_type', $type);

        $total_rows = $posts->count();
        $total_page = ceil($total_rows/10);
        $limit = ($page*10)-10;
        $posts = $posts->skip($limit)->take(10)->get();

        $response = [
            'status' => true,
            'message' => 'Post List',
            'total_page' => $total_page,
            'current_page' => $page,
            'data' => $posts,
        ];
        return response()->json($response, 200);
    }

    public function postList($id)
    {   
        $posts = DB::table('posts')->where('id', $id)->get();

        $response = [
            'status' => true,
            'message' => 'Post Details',
            'data' => $posts,
        ];
        return response()->json($response, 200);
    }

    public function videoList($id){
        $video = DB::table('video')->where('id', $id)->get();

        $response = [
            'status' => true,
            'message' => 'Video Details',
            'data' => $video,
        ];
        return response()->json($response, 200);
    }
}
