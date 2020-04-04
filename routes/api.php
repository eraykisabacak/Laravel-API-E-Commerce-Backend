<?php

use Illuminate\Http\Request;

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

Route::get('urun','UrunController@index');
Route::get('urun/{id}','UrunController@show');
Route::post('urun','UrunController@store');
Route::put('urun/{id}','UrunController@update');
Route::delete('urun/{id}','UrunController@delete');  

Route::get('category','CategoryController@index');
Route::get('category/{id}','CategoryController@show');
Route::post('category','CategoryController@store');
Route::put('category/{id}','CategoryController@update');
Route::delete('category/{id}','CategoryController@delete');  

Route::get('musteri','MusteriController@index');
Route::get('musteri/{id}','MusteriController@show');
Route::post('musteri','MusteriController@store');
Route::put('musteri/{id}','MusteriController@update');
Route::delete('musteri/{id}','MusteriController@delete');  

Route::get('adres','AdresController@index');
Route::get('adres/{id}','AdresController@show');
Route::post('adres','AdresController@store');
Route::put('adres/{id}','AdresController@update');
Route::delete('adres/{id}','AdresController@delete');  

Route::get('sepet','SepetController@index');
Route::get('sepet/{id}','SepetController@show');
Route::post('sepet','SepetController@store');
Route::put('sepet/{id}','SepetController@update');
Route::delete('sepet/{id}','SepetController@delete');  

Route::get('sepetelemanlari','SepetElemanlariController@index');
Route::get('sepetelemanlari/{id}','SepetElemanlariController@show');
Route::post('sepetelemanlari','SepetElemanlariController@store');
Route::put('sepetelemanlari/{id}','SepetElemanlariController@update');
Route::delete('sepetelemanlari/{id}','SepetElemanlariController@delete');

Route::get('admin','AdminController@index');
Route::get('admin/{id}','AdminController@show');
Route::post('admin','AdminController@store');
Route::put('admin/{id}','AdminController@update');
Route::delete('admin/{id}','AdminController@delete');  


Route::group([

    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {

    Route::post('login', 'AuthController@login');
    Route::post('register', 'AuthController@register');
    Route::post('logout', 'AuthController@logout');
    Route::post('refresh', 'AuthController@refresh');
    Route::post('me', 'AuthController@me');

});