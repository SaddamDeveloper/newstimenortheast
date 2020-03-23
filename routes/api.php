<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//List Posts
Route::get('posts', 'Web\PostController@index');

//Single Post
Route::get('post/{id}', 'Web\PostController@show');

//Create new Post
Route::post('post', 'Web\PostController@store');

//Update post
Route::put('post', 'Web\PostController@store');

//Delete Post
Route::delete('post/{id}', 'Web\PostController@destroy');
