<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\Category;
use App\Post;
use App\Http\Resources\Category as CategoryResource;
use Illuminate\Support\Str;
class MainController extends Controller
{
    public function slidePost()
    {

        $slide_post = DB::table('posts')
            ->select('posts.*', 'category.category_name as category_name')
            ->join('category','posts.cat_id','=','category.id')
            ->where('hp_section1', 1)
            ->get();

        $four_post = DB::table('posts')
            ->select('posts.*', 'category.category_name as category_name')
            ->join('category','posts.cat_id','=','category.id')
            ->where('hp_section1', 2)
            ->take(4)
            ->get();

        $slider_post = NULL;
        if(count($slide_post) > 0){
            $slider_post = $slide_post;
        }else{
            $slider_post = DB::table('posts')
            ->select('posts.*', 'category.category_name as category_name')
            ->join('category','posts.cat_id','=','category.id')
            ->take(5)
            ->get();
        }
        
        $fourth_post = NULL;
        if(count($four_post) >= 4){
            $fourth_post = $four_post;
        }else{
            $fourth_post = DB::table('posts')
            ->select('posts.*', 'category.category_name as category_name')
            ->join('category','posts.cat_id','=','category.id')
            ->take(4)
            ->get();
        }

        $catid = NULL;
        $posts = [];
        $categories = DB::table('category')->whereIn('id', [1, 2, 5])->get();
        foreach ($categories as $category) {
            $catid = $category->id;
            $posts[] = Post::where('cat_id', $catid)
                ->select('posts.*','category.category_name as category_name')
                ->join('category','posts.cat_id','category.id')
                ->take(5)
                ->orderBy('id', 'desc')
                ->get();
        }
        // return $sec_posts;
        // $categories = Category::whereIn('id', [1, 2, 5])->get();
        // foreach($categories as $category){
        //     // $cat_id = $category->id;
        //     // $sec_posts[] = Category::with('posts')->find($cat_id);  
        //     $posts = $category->posts()->take(5)->orderBy('id', 'desc')->get();  
        // }
        // return $posts;

        //Business Section
        $business_posts = Post::where('cat_id', 6)
            ->select('posts.*','category.category_name as category_name')
            ->join('category','posts.cat_id','category.id')
            ->take(8)
            ->orderBy('id', 'desc')
            ->get();

        // $business_posts = Category::with('posts')->take(4)->get();
        // return $business_posts;
        //Lifestyle Section
        $lifestyle_posts = Post::where('cat_id', 7)
                ->select('posts.*', 'category.category_name as category_name')
                ->join('category','posts.cat_id','category.id')
                ->take(2)
                ->orderBy('id', 'desc')
                ->get();
       
        // return $lifestyle_posts;
                //Popular Post
        // $popular_post = Post::get()->sortByDesc('view_count');
        // return $lifestyle_posts;

        $catid = NULL;
        $cats = DB::table('category')->whereIn('id', [8, 9, 10])->get();
        foreach ($cats as $category) {
            $catid = $category->id;
            $gadget[] = Category::with('posts')->where('id', $catid)->take(3)->get();
        }
        // return $gadget;
        return view('web.index', compact('slider_post', 'fourth_post', 'posts', 'business_posts', 'lifestyle_posts', 'gadget'));

    }

    public function showPost($slug, $id){
    $single_post = DB::table('posts')
        ->select('posts.*', 'category.category_name as category_name')
        ->join('category','posts.cat_id','=','category.id')
        ->where('posts.id', $id)
        ->first();

        //Related Post
        $posts = Post::where('id',$id)->first();
        $related_post = Category::with('posts')
            ->where('id', $posts->cat_id)
            ->get();
        return view('web.show', compact('single_post', 'related_post'));
    }

}
