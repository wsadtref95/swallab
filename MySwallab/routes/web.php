<?php

use Illuminate\Support\Facades\Auth;

use App\Http\Middleware\IsAdmin;
use App\Http\Middleware\IsMember;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProfileController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/test', function () {
    return 'Test route works!';
});

// =============================登入路徑=================================
Route::view('/register', 'auth.register');
Route::get('/login', [AuthController::class, 'showLoginForm'])->name('login');
Route::post('/login', [AuthController::class, 'login']);
// Route::view('/login', 'auth.login');
Route::get('/forgot-password', function () {
    return view('auth.forgot-password');
});
Route::get('/reset-password/{token}', function ($token) {
    return view('auth.reset-password', ['token' => $token]);
})->name('password.reset');

Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);
Route::post('/forgot-password', [AuthController::class, 'forgotPassword']);
Route::post('/reset-password', [AuthController::class, 'resetPassword']);

Route::post('/change-password', [ProfileController::class, 'changePassword'])->name('profile.changePassword');
Route::post('/profile/update-social-link', [ProfileController::class, 'updateSocialLink'])->name('profile.updateSocialLink');
Route::post('/profile/update-credit-card', [ProfileController::class, 'updateCreditCard'])->name('profile.updateCreditCard');
Route::post('/profile/delete-credit-card', [ProfileController::class, 'deleteCreditCard'])->name('profile.deleteCreditCard');

// Route::middleware(['auth'])->group(function () {
//     Route::middleware([IsAdmin::class])->group(function () {
//         Route::get('/admin', function () {
//             return view('/backstage/new_oder');
//         });
//     });

//     Route::middleware([IsMember::class])->group(function () {
//         Route::get('/headpage/headpage', function () {
//             return view('headpage.headpage');
//         });

//         Route::get('/profile', function () {
//             $user = Auth::user();
//             return view('login.profile', compact('user'));
//         })->name('profile.show');
//         Route::get('/profile', [ProfileController::class, 'show'])->name('profile.show');
//         Route::get('/profile/edit', [ProfileController::class, 'edit'])->name('profile.edit');
//         Route::post('/profile/edit', [ProfileController::class, 'update'])->name('profile.update');
//     });
// });


// 取得登入的使用者資訊
Route::get('user_id', function() {
    return response()->json([
        'role' => session('role') ?? '', 
        'r_id' => session('r_id') ?? '', 
        'name' => session('name') ?? ''
    ]);
});

// 取得使用者名稱
Route::get('user_name', [AuthController::class, 'getUserName']);

// ===========================================================
Route::view('/aa','aa');