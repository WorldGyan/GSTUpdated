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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();
Route::middleware('auth')->group(function() {

	// Manage Party
 Route::view('/dashboard','gst.dashboard');
 Route::get('/gst/manage-party/add','ManagePartyController@save');
 Route::get('/gst/manage-party/add/{id}','ManagePartyController@save');
 Route::post('/gst/manage-party/add','ManagePartyController@save');
 Route::get('/gst/manage-party/search','ManagePartyController@view');
 Route::post('/gst/manage-party/update','ManagePartyController@save');
 Route::get('/gst/manage-party/trash/{id}','ManagePartyController@trash');
 Route::get('/gst/manage-party/delete','ManagePartyController@trashedList');
 Route::get('/gst/manage-party/delete/{id}','ManagePartyController@permanemetDelete');
 Route::view('/sample/dashboard','samples.buttons');
	// Route::view('/sample/social','samples.social');
	// Route::view('/sample/cards','samples.cards');
	// Route::view('/sample/forms','samples.forms');
	// Route::view('/sample/modals','samples.modals');
	// Route::view('/sample/switches','samples.switches');
	 Route::view('/sample/tables','samples.tables');
	// Route::view('/sample/tabs','samples.tabs');
	// Route::view('/sample/icons-font-awesome', 'samples.font-awesome-icons');
	// Route::view('/sample/icons-simple-line', 'samples.simple-line-icons');
	// Route::view('/sample/widgets','samples.widgets');
	// Route::view('/sample/charts','samples.charts');
	
});

Route::get('/home', 'HomeController@index')->name('home');
