<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', 'PageController@index')->name('home');
Route::get('gioi-thieu', 'PageController@about')->name('about');
Route::get('lien-he', 'PageController@contact')->name('contact');
Route::get('dich-vu-an-toan-thong-tin', 'PageController@service')->name('service');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
