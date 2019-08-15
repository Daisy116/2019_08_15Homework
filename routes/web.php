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

Route::get('/', 'Bulletin_BoardController@index');
Route::resource('Bulletin_Board', 'Bulletin_BoardController');
Route::get('/Bulletin_Board_Details.html/{id}', "Bulletin_BoardController@detail");