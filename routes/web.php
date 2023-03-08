<?php

use App\Http\Controllers\HotelController;
use App\Http\Controllers\MainController;
use App\Http\Controllers\ProfileController;
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
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

Route::resources([
    'billing_click' => MainController::class,
    'billing_payments' => MainController::class,
    'bookings' => MainController::class,
    'comfortables' => MainController::class,
    'comments' => MainController::class,
    'corp' => MainController::class,
    'pay_trans' => MainController::class,
    'regions' => MainController::class,
    'reservations' => MainController::class,
    'rooms' => MainController::class
]);


Route::resource('hotels', HotelController::class);
