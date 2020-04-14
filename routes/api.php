<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::group(['namespace' => 'Api'], function () {
    Route::get('category/list', 'PostController@categoryList');
    Route::get('post/{type}/{category}/{page}', 'PostController@postListWithCategory');
    Route::get('post/details/{id}', 'PostController@postList');
    Route::get('video/list/{type}', 'PostController@videoList');
});

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

