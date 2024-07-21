<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\ProductController;


Route::get('/test', function() {
    if(Auth::check()){
        print(Auth::id() . '<br>');
        print(Auth::user());
    }
    else {
        print('Hi');
    }
})->middleware('auth');

Route::get('/', function () {
    return view('welcome');
});
// ================================登入====================================
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

// ===============================產品進購物車========================================

Route::get('/update-product', function() {
    return view('products');
})->name('products.view');

Route::post('/update-product', [ProductController::class, 'updateQuantity'])
->name('products.update');

