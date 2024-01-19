<?php

use App\Http\Controllers\data\OfficerController;
use App\Http\Controllers\data\ProfileController;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('layout.home', [
        "title" => "Home",
    ]);
});


Route::get('/home', function () {
    return view('layout.home', [
        "title" => "Home",
    ]);
});

Route::get('/add-officer', function () {
    return view('layout.officer.add-officer');
});

Route::get('/officer-list', function () {
    return view('layout.officer.officer-list');
});

Route::get('/settings', function () {
    return view('layout.settings');
});


Route::get('/officer-list', [App\Http\Controllers\data\ProfileController::class, 'getProfileList']);
Route::get('/officer-list-filter', [App\Http\Controllers\data\ProfileController::class, 'index']);

Route::get('/officer-list', [App\Http\Controllers\data\ProfileController::class, 'sortByTable'])->name('order-asc');
Route::get('/officer-list-desc', [App\Http\Controllers\data\ProfileController::class, 'sortByTable'])->name('order-desc');

Route::get('/test-database', function () {
    $results = DB::select('select * from users');
    return $results;
});
