<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ShopeWiseController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\UnitController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CustomerDashboardController;
use App\Http\Controllers\CustomerAuthController;
use App\Http\Controllers\CustomerOrderController;
use App\Http\Controllers\UserController;

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

Route::get('/', [ShopeWiseController::class, 'index'])->name('home');
Route::get('/category/{id}', [ShopeWiseController::class, 'category'])->name('category');
Route::get('/detail/{id}', [ShopeWiseController::class, 'detail'])->name('detail');
Route::get('/cart/show-item', [CartController::class, 'index'])->name('cart');
Route::post('/cart/add-item/{id}', [CartController::class, 'addCart'])->name('cart.add');
Route::get('/cart/remove/{id}', [CartController::class, 'remove'])->name('cart.remove');
Route::post('/cart/update/{id}', [CartController::class, 'update'])->name('cart.update');
Route::get('/checkout', [CheckoutController::class, 'index'])->name('checkout');
Route::post('/order/new-order', [CheckoutController::class, 'newOrder'])->name('order.new');
Route::get('/order/complete', [CheckoutController::class, 'orderComplete'])->name('order.complete');

Route::get('/customer/dashboard', [CustomerDashboardController::class, 'index'])->name('customer.dashboard')->middleware('customer');

Route::get('/customer/wishlist', [CustomerDashboardController::class, 'wishlist'])->name('customer.wishlist');
Route::get('/customer/logout', [CustomerAuthController::class, 'logout'])->name('customer.logout');
Route::get('/customer/login', [CustomerAuthController::class, 'login'])->name('customer.login');
Route::post('/customer/sign-in', [CustomerAuthController::class, 'signIn'])->name('customer.sign-in');
Route::get('/customer/register', [CustomerAuthController::class, 'register'])->name('customer.register');
Route::post('/customer/sign-up', [CustomerAuthController::class, 'signUp'])->name('customer.sign-up');
Route::get('/customer/manage', [CustomerAuthController::class, 'manage'])->name('customer.manage');

Route::get('/order/manage', [CustomerOrderController::class, 'index'])->name('order.manage');
Route::get('/order/detail/{id}', [CustomerOrderController::class, 'detail'])->name('order.detail');
Route::get('/order/invoice/{id}', [CustomerOrderController::class, 'invoice'])->name('order.invoice');
Route::get('/order/print-invoice/{id}', [CustomerOrderController::class, 'download'])->name('order.print-invoice');
Route::get('/order/edit/{id}', [CustomerOrderController::class, 'edit'])->name('order.edit');
Route::post('/order/update/{id}', [CustomerOrderController::class, 'update'])->name('order.update');
Route::get('/order/delete/{id}', [CustomerOrderController::class, 'delete'])->name('order.delete');


Route::middleware(['auth:sanctum', config('jetstream.auth_session'), 'verified'])->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    Route::get('/category/add', [CategoryController::class, 'index'])->name('category.add');
    Route::post('/category/create', [CategoryController::class, 'create'])->name('category.create');
    Route::get('/category/manage', [CategoryController::class, 'manage'])->name('category.manage');
    Route::get('/category/edit/{id}', [CategoryController::class, 'edit'])->name('category.edit');
    Route::post('/category/update/{id}', [CategoryController::class, 'update'])->name('category.update');
    Route::get('/category/delete/{id}', [CategoryController::class, 'delete'])->name('category.delete');

    Route::get('/sub-category.add', [SubCategoryController::class, 'index'])->name('sub-category.add');
    Route::post('/sub-category/create', [SubCategoryController::class, 'create'])->name('sub-category.create');
    Route::get('/sub-category/manage', [SubCategoryController::class, 'manage'])->name('sub-category.manage');
    Route::get('/sub-category/edit/{id}', [SubCategoryController::class, 'edit'])->name('sub-category.edit');
    Route::post('/sub-category/update/{id}', [SubCategoryController::class, 'update'])->name('sub-category.update');
    Route::get('/sub-category/delete/{id}', [SubCategoryController::class, 'delete'])->name('sub-category.delete');

    Route::get('/unit/add', [UnitController::class, 'index'])->name('unit.add');
    Route::post('/unit/create', [UnitController::class, 'create'])->name('unit.create');
    Route::get('/unit/manage', [UnitController::class, 'manage'])->name('unit.manage');
    Route::get('/unit/edit/{id}', [UnitController::class, 'edit'])->name('unit.edit');
    Route::post('/unit/update/{id}', [UnitController::class, 'update'])->name('unit.update');
    Route::get('/unit/delete/{id}', [UnitController::class, 'delete'])->name('unit.delete');

    Route::get('/brand/add', [BrandController::class, 'index'])->name('brand.add');
    Route::post('/brand/create', [BrandController::class, 'create'])->name('brand.create');
    Route::get('/brand/manage', [BrandController::class, 'manage'])->name('brand.manage');
    Route::get('/brand/edit/{id}', [BrandController::class, 'edit'])->name('brand.edit');
    Route::post('/brand/update/{id}', [BrandController::class, 'update'])->name('brand.update');
    Route::get('/brand/delete/{id}', [BrandController::class, 'delete'])->name('brand.delete');

    Route::get('/product/add', [ProductController::class, 'index'])->name('product.add');
    Route::post('/product/create', [ProductController::class, 'create'])->name('product.create');
    Route::get('/product/manage', [ProductController::class, 'manage'])->name('product.manage');
    Route::get('/product/detail/{id}', [ProductController::class, 'detail'])->name('product.detail');
    Route::get('/product/edit/{id}', [ProductController::class, 'edit'])->name('product.edit');
    Route::post('/product/update/{id}', [ProductController::class, 'update'])->name('product.update');
    Route::get('/product/delete/{id}', [ProductController::class, 'delete'])->name('product.delete');

    Route::get('/user/add', [UserController::class, 'index'])->name('user.add');
    Route::post('/user/create', [UserController::class, 'create'])->name('user.create');
    Route::get('/user/manage', [UserController::class, 'manage'])->name('user.manage');
});
