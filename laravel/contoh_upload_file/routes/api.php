<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

//  Route untuk menangani pengiriman file
//  api/upload
Route::post('/upload', function (Request $request) {
    // jangan lupa jalankan perintah:
    // php artisan storage:link
    if ($request->hasFile('file')) {
        $file = $request->file('file');
        $path = $file->store('uploads', 'public');

        // Dapatkan URL lengkap dengan HTTP
        $url = url('storage/' . $path);

        return response()->json(['message' => 'File berhasil diunggah', 'url' => $url]);
    } else {
        return response()->json(['message' => 'Tidak ada file yang diunggah'], 400);
    }
});
