<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Front\HomeController;
use App\Http\Controllers\Front\AboutController;
use App\Http\Controllers\Front\BlogController; 
use App\Http\Controllers\Front\ContactController; 
use App\Http\Controllers\Front\GalleryController;


use App\Http\Controllers\Customer\CustomerAuthController;
use App\Http\Controllers\Customer\CustomerHomeController;
use App\Http\Controllers\Customer\CustomerProfileController;
use App\Http\Controllers\Customer\CustomerOrderController;
use App\Http\Controllers\Front\RoomController;
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

Route::get('/', [HomeController::class, 'index'])->name('home');

// Route::get('/', function () {
//     return view('welcome');
// });


Route::get('/', [HomeController::class, 'index'])->name('home');

Route::get('/about', [AboutController::class, 'index'])->name('about');

Route::get('/blog', [BlogController::class, 'index'])->name('blog');

Route::get('/post/{id}', [BlogController::class, 'details'])->name('blog_details');

Route::get('/checkout', [BookingController::class, 'checkout'])->name('checkout');

Route::get('/gallery', [GalleryController::class, 'index'])->name('gallery');

Route::get('/video', [VideoController::class, 'index'])->name('video');

Route::get('/faq', [FaqController::class, 'index'])->name('faq');

Route::get('/terms-and-conditions', [TermsController::class, 'index'])->name('terms');

Route::get('/privacy-policy', [PrivacyController::class, 'index'])->name('privacy');

Route::get('/contact', [ContactController::class, 'index'])->name('contact');

Route::post('/contact/send-email', [ContactController::class, 'send_email'])->name('contact_send_email');

Route::post('/subscriber/send-email', [SubscriberController::class, 'send_email'])->name('subscriber_send_email');

Route::get('/subscriber/verify/{email}/{token}', [SubscriberController::class, 'verify'])->name('subscriber_verify');

Route::get('/room', [RoomController::class, 'index'])->name('room');

Route::get('/room/{id}', [RoomController::class, 'room_detail'])->name('room_detail');

Route::post('/booking/submit', [BookingController::class, 'cart_submit'])->name('cart_submit');

Route::get('/cart', [BookingController::class, 'cart_view'])->name('cart');

Route::get('/cart/delete/{id}', [BookingController::class, 'cart_delete'])->name('cart_delete');

Route::get('/checkout', [BookingController::class, 'checkout'])->name('checkout');

Route::post('/payment', [BookingController::class, 'payment'])->name('payment');

Route::get('/payment/paypal/{price}', [BookingController::class, 'paypal'])->name('paypal');


Route::get('/login', [CustomerAuthController::class, 'login'])->name('customer_login');

Route::post('login-submit', [CustomerAuthController::class, 'login_submit'])->name('customer_login_submit');

Route::get('/logout', [CustomerAuthController::class, 'logout'])->name('customer_logout');
