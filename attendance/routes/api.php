<?php

use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\DeskController;
use App\Http\Controllers\EventController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/users', [UserController::class, 'index']);
Route::get('/users/pg', [UserController::class, 'indexPaginate']);
Route::get('/users/{id}', [UserController::class, 'show']);

Route::get('/desks', [DeskController::class, 'index']);
Route::get('/desks/pg', [DeskController::class, 'indexPaginate']);
Route::get('/desks/{id}', [DeskController::class, 'show']);

Route::get('/categories', [CategoryController::class, 'index']);
Route::get('/categories/pg', [CategoryController::class, 'indexPaginate']);
Route::get('/categories/{id}', [CategoryController::class, 'show']);

Route::get('/events', [EventController::class, 'index']);
Route::get('/events/pg', [EventController::class, 'indexPaginate']);
Route::get('/events/{id}', [EventController::class, 'show']);


Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

Route::group(['middleware' => ['auth:sanctum']], function () {
    Route::get('/profile', function (Request $request) {
        return auth()->user();
    });

    Route::resource('/desks', DeskController::class)
        ->only(['store', 'update', 'destroy']);

    Route::resource('/categories', CategoryController::class)
        ->only(['store', 'update', 'destroy']);

    Route::resource('/events', EventController::class)
        ->only(['store', 'update', 'destroy']);

    Route::post('/logout', [AuthController::class, 'logout']);
});
