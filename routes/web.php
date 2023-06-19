<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Front\HomeController;
use App\Http\Controllers\Front\AboutController;
use App\Http\Controllers\Front\BlogController; 
use App\Http\Controllers\Front\ContactController; 
use App\Http\Controllers\Front\GalleryController;
use App\Http\Controllers\Front\VideoController;
use App\Http\Controllers\Front\FaqController;
use App\Http\Controllers\Front\TermsController;
use App\Http\Controllers\Front\PrivacyController;
use App\Http\Controllers\Front\SubscriberController;
use App\Http\Controllers\Front\RoomController;
use App\Http\Controllers\Front\BookingController;

use App\Http\Controllers\Admin\AdminHomeController;
use App\Http\Controllers\Admin\AdminCustomerController;
use App\Http\Controllers\Admin\AdminOrderController;
use App\Http\Controllers\Admin\AdminLoginController;
use App\Http\Controllers\Admin\AdminProfileController;
use App\Http\Controllers\Admin\AdminSlideController;
use App\Http\Controllers\Admin\AdminFeatureController;
use App\Http\Controllers\Admin\AdminTestimonialController;
use App\Http\Controllers\Admin\AdminPostController;
use App\Http\Controllers\Admin\AdminGalleryController;
use App\Http\Controllers\Admin\AdminVideoController;
use App\Http\Controllers\Admin\AdminFaqController;
use App\Http\Controllers\Admin\AdminPageController;
use App\Http\Controllers\Admin\AdminSubscriberController;
use App\Http\Controllers\Admin\AdminFacilityController;
use App\Http\Controllers\Admin\AdminRoomController;
use App\Http\Controllers\Admin\AdminSettingController;
use App\Http\Controllers\Admin\AdminDatewiseRoomController;


use App\Http\Controllers\Customer\CustomerAuthController;
use App\Http\Controllers\Customer\CustomerHomeController;
use App\Http\Controllers\Customer\CustomerProfileController;
use App\Http\Controllers\Customer\CustomerOrderController;
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

// admin

/* Admin */

Route::get('/admin/login', [AdminLoginController::class, 'index'])->name('admin_login');

Route::post('/admin/login_submit', [AdminLoginController::class, 'login_submit'])->name('admin_login_submit');

Route::get('/admin/logout', [AdminLoginController::class, 'logout'])->name('admin_logout');

Route::get('/admin/forget_password', [AdminLoginController::class, 'forget_password'])->name('admin_forget_password');

Route::post('/admin/forget_password_submit', [AdminLoginController::class, 'forget_password_submit'])->name('admin_forget_password_submit');

Route::get('/admin/reset-password/{token}/{email}', [AdminLoginController::class, 'reset_password'])->name('admin_reset_password');

Route::post('/admin/reset-password-submit', [AdminLoginController::class, 'reset_password_submit'])->name('admin_reset_password_submit');

/* Customer */

//route login

Route::get('/login', [CustomerAuthController::class, 'login'])->name('customer_login');

Route::post('login-submit', [CustomerAuthController::class, 'login_submit'])->name('customer_login_submit');

Route::get('/logout', [CustomerAuthController::class, 'logout'])->name('customer_logout');

//route sign up

Route::get('/signup', [CustomerAuthController::class, 'signup'])->name('customer_signup');

Route::post('/signup-submit', [CustomerAuthController::class, 'signup_submit'])->name('customer_signup_submit');

Route::get('/signup-verify/{email}/{token}', [CustomerAuthController::class, 'verify'])->name('customer_signup_verify');

//route forget password

Route::get('/forget-password', [CustomerAuthController::class, 'forget_password'])->name('customer_forget_password');

Route::post('/forget-password-submit', [CustomerAuthController::class, 'forget_password_submit'])->name('customer_forget_password_submit');

Route::get('/reset-password/{token}/{email}', [CustomerAuthController::class, 'reset_password'])->name('customer_reset_password');

Route::post('/reset-password-submit', [CustomerAuthController::class, 'reset_password_submit'])->name('customer_reset_password_submit');



/* Customer - Middleware */

Route::group(['middleware' => ['customer:customer']],function(){

    Route::get('/customer/home', [CustomerHomeController::class, 'index'])->name('customer_home');;

    Route::get('/customer/edit-profile', [CustomerProfileController::class, 'index'])->name('customer_edit_profile');

    Route::post('/customer/edit-profile-submit', [CustomerProfileController::class, 'profile_submit'])->name('customer_profile_submit');

    Route::get('/customer/order/view', [CustomerOrderController::class, 'index'])->name('customer_order_view');

    Route::get('/customer/invoice/{id}', [CustomerOrderController::class, 'Invoice'])->name('customer_invoice');







});


/* Admin - Middleware */
Route::group(['middleware' => ['admin:admin']],function(){

    //Route profile admin

    Route::get('/admin/edit-profile', [AdminProfileController::class, 'index'])->name('admin_profile');

    Route::post('/admin/edit-profile-submit', [AdminProfileController::class, 'profile_submit'])->name('admin_profile_submit');

    //Route home admin

    Route::get('/admin', [AdminHomeController::class, 'index'])->name('admin_home');

    //Route Setting
    Route::get('/admin/setting', [AdminSettingController::class, 'index'])->name('admin_setting');

    Route::post('/admin/setting/update', [AdminSettingController::class, 'update'])->name('admin_setting_update');

    //Route Datewise

    Route::get('/admin/datewise-rooms', [AdminDatewiseRoomController::class, 'index'])->name('admin_datewise_rooms');

    Route::post('/admin/datewise-rooms/submit', [AdminDatewiseRoomController::class, 'show'])->name('admin_datewise_rooms_submit');

    //Route Customer

    Route::get('/admin/customer', [AdminCustomerController::class, 'index'])->name('admin_customer');

    Route::get('/admin/customer/change-status/{id}', [AdminCustomerController::class, 'change_status'])->name('admin_customer_change_status');

    //Route Orders

    Route::get('/admin/order/view', [AdminOrderController::class, 'index'])->name('admin_orders');

    Route::get('/admin/order/invoice/{id}', [AdminOrderController::class, 'Invoice'])->name('admin_invoice');

    Route::get('/admin/order/delete/{id}', [AdminOrderController::class, 'delete'])->name('admin_order_delete');

    //Route slide

    Route::get('/admin/slide/view', [AdminSlideController::class, 'index'])->name('admin_slide_view');

    Route::get('/admin/slide/add', [AdminSlideController::class, 'add'])->name('admin_slide_add');

    Route::post('/admin/slide/store', [AdminSlideController::class, 'store'])->name('admin_slide_store');

    Route::get('/admin/slide/edit/{id}', [AdminSlideController::class, 'edit'])->name('admin_slide_edit');

    Route::post('/admin/slide/update/{id}', [AdminSlideController::class, 'update'])->name('admin_slide_update');

    Route::get('/admin/slide/delete/{id}', [AdminSlideController::class, 'delete'])->name('admin_slide_delete');

    //Route feature

    Route::get('/admin/feature/view', [AdminFeatureController::class, 'index'])->name('admin_feature_view');

    Route::get('/admin/feature/add', [AdminFeatureController::class, 'add'])->name('admin_feature_add');

    Route::post('/admin/feature/store', [AdminFeatureController::class, 'store'])->name('admin_feature_store');

    Route::get('/admin/feature/edit/{id}', [AdminFeatureController::class, 'edit'])->name('admin_feature_edit');

    Route::post('/admin/feature/update/{id}', [AdminFeatureController::class, 'update'])->name('admin_feature_update');

    Route::get('/admin/feature/delete/{id}', [AdminFeatureController::class, 'delete'])->name('admin_feature_delete');

    //Route testimonial

    Route::get('/admin/testimonial/view', [AdminTestimonialController::class, 'index'])->name('admin_testimonial_view');

    Route::get('/admin/testimonial/add', [AdminTestimonialController::class, 'add'])->name('admin_testimonial_add');

    Route::post('/admin/testimonial/store', [AdminTestimonialController::class, 'store'])->name('admin_testimonial_store');

    Route::get('/admin/testimonial/edit/{id}', [AdminTestimonialController::class, 'edit'])->name('admin_testimonial_edit');

    Route::post('/admin/testimonial/update/{id}', [AdminTestimonialController::class, 'update'])->name('admin_testimonial_update');

    Route::get('/admin/testimonial/delete/{id}', [AdminTestimonialController::class, 'delete'])->name('admin_testimonial_delete');

    //Route Post Blog

    Route::get('/admin/post/view', [AdminPostController::class, 'index'])->name('admin_post_view');

    Route::get('/admin/post/add', [AdminPostController::class, 'add'])->name('admin_post_add');

    Route::post('/admin/post/store', [AdminPostController::class, 'store'])->name('admin_post_store');

    Route::get('/admin/post/edit/{id}', [AdminPostController::class, 'edit'])->name('admin_post_edit');

    Route::post('/admin/post/update/{id}', [AdminPostController::class, 'update'])->name('admin_post_update');

    Route::get('/admin/post/delete/{id}', [AdminPostController::class, 'delete'])->name('admin_post_delete');

    //Route Gallery

    Route::get('/admin/gallery/view', [AdminGalleryController::class, 'index'])->name('admin_gallery_view');

    Route::get('/admin/gallery/add', [AdminGalleryController::class, 'add'])->name('admin_gallery_add');

    Route::post('/admin/gallery/store', [AdminGalleryController::class, 'store'])->name('admin_gallery_store');

    Route::get('/admin/gallery/edit/{id}', [AdminGalleryController::class, 'edit'])->name('admin_gallery_edit');

    Route::post('/admin/gallery/update/{id}', [AdminGalleryController::class, 'update'])->name('admin_gallery_update');

    Route::get('/admin/gallery/delete/{id}', [AdminGalleryController::class, 'delete'])->name('admin_gallery_delete');

    //Route Video

    Route::get('/admin/video/view', [AdminVideoController::class, 'index'])->name('admin_video_view');

    Route::get('/admin/video/add', [AdminVideoController::class, 'add'])->name('admin_video_add');

    Route::post('/admin/video/store', [AdminVideoController::class, 'store'])->name('admin_video_store');

    Route::get('/admin/video/edit/{id}', [AdminVideoController::class, 'edit'])->name('admin_video_edit');

    Route::post('/admin/video/update/{id}', [AdminVideoController::class, 'update'])->name('admin_video_update');

    Route::get('/admin/video/delete/{id}', [AdminVideoController::class, 'delete'])->name('admin_video_delete');

    //Route Faq

    Route::get('/admin/faq/view', [AdminFaqController::class, 'index'])->name('admin_faq_view');

    Route::get('/admin/faq/add', [AdminFaqController::class, 'add'])->name('admin_faq_add');

    Route::post('/admin/faq/store', [AdminFaqController::class, 'store'])->name('admin_faq_store');

    Route::get('/admin/faq/edit/{id}', [AdminFaqController::class, 'edit'])->name('admin_faq_edit');

    Route::post('/admin/faq/update/{id}', [AdminFaqController::class, 'update'])->name('admin_faq_update');

    Route::get('/admin/faq/delete/{id}', [AdminFaqController::class, 'delete'])->name('admin_faq_delete');

    //Route Page

    Route::get('/admin/page/about', [AdminPageController::class, 'about'])->name('admin_page_about');

    Route::post('/admin/page/about/update', [AdminPageController::class, 'about_update'])->name('admin_page_about_update');


    Route::get('/admin/page/terms', [AdminPageController::class, 'terms'])->name('admin_page_terms');

    Route::post('/admin/page/terms/update', [AdminPageController::class, 'terms_update'])->name('admin_page_terms_update');


    Route::get('/admin/page/privacy', [AdminPageController::class, 'privacy'])->name('admin_page_privacy');

    Route::post('/admin/page/privacy/update', [AdminPageController::class, 'privacy_update'])->name('admin_page_privacy_update');


    Route::get('/admin/page/contact', [AdminPageController::class, 'contact'])->name('admin_page_contact');

    Route::post('/admin/page/contact/update', [AdminPageController::class, 'contact_update'])->name('admin_page_contact_update');


    Route::get('/admin/page/image-gallery', [AdminPageController::class, 'image_gallery'])->name('admin_page_image_gallery');

    Route::post('/admin/page/image-gallery/update', [AdminPageController::class, 'image_gallery_update'])->name('admin_page_image_gallery_update');


    Route::get('/admin/page/video-gallery', [AdminPageController::class, 'video_gallery'])->name('admin_page_video_gallery');

    Route::post('/admin/page/video-gallery/update', [AdminPageController::class, 'video_gallery_update'])->name('admin_page_video_gallery_update');


    Route::get('/admin/page/faq', [AdminPageController::class, 'faq'])->name('admin_page_faq');

    Route::post('/admin/page/faq/update', [AdminPageController::class, 'faq_update'])->name('admin_page_faq_update');


    Route::get('/admin/page/blog', [AdminPageController::class, 'blog'])->name('admin_page_blog');

    Route::post('/admin/page/blog/update', [AdminPageController::class, 'blog_update'])->name('admin_page_blog_update');


    Route::get('/admin/page/room', [AdminPageController::class, 'room'])->name('admin_page_room');

    Route::post('/admin/page/room/update', [AdminPageController::class, 'room_update'])->name('admin_page_room_update');


    Route::get('/admin/page/cart', [AdminPageController::class, 'cart'])->name('admin_page_cart');

    Route::post('/admin/page/cart/update', [AdminPageController::class, 'cart_update'])->name('admin_page_cart_update');


    Route::get('/admin/page/checkout', [AdminPageController::class, 'checkout'])->name('admin_page_checkout');

    Route::post('/admin/page/checkout/update', [AdminPageController::class, 'checkout_update'])->name('admin_page_checkout_update');


    Route::get('/admin/page/payment', [AdminPageController::class, 'payment'])->name('admin_page_payment');

    Route::post('/admin/page/payment/update', [AdminPageController::class, 'payment_update'])->name('admin_page_payment_update');


    Route::get('/admin/page/signup', [AdminPageController::class, 'signup'])->name('admin_page_signup');

    Route::post('/admin/page/signup/update', [AdminPageController::class, 'signup_update'])->name('admin_page_signup_update');


    Route::get('/admin/page/signin', [AdminPageController::class, 'signin'])->name('admin_page_signin');

    Route::post('/admin/page/signin/update', [AdminPageController::class, 'signin_update'])->name('admin_page_signin_update');


    //Route Forget Password and Reset Password

    Route::get('/admin/page/forget-password', [AdminPageController::class, 'forget_password'])->name('admin_page_forget_password');

    Route::post('/admin/page/forget-password/update', [AdminPageController::class, 'forget_password_update'])->name('admin_page_forget_password_update');

    Route::get('/admin/page/reset-password', [AdminPageController::class, 'reset_password'])->name('admin_page_reset_password');

    Route::post('/admin/page/reset-password/update', [AdminPageController::class, 'reset_password_update'])->name('admin_page_reset_password_update');


    //route subscriber

    Route::get('/admin/subscriber/show', [AdminSubscriberController::class, 'show'])->name('admin_subscriber_show');

    Route::get('/admin/subscriber/send-email', [AdminSubscriberController::class, 'send_email'])->name('admin_subscriber_send_email');

    Route::post('/admin/subscriber/send-email-submit', [AdminSubscriberController::class, 'send_email_submit'])->name('admin_subscriber_send_email_submit');


    //route facility 

    Route::get('/admin/facility/view', [AdminFacilityController::class, 'index'])->name('admin_facility_view');

    Route::get('/admin/facility/add', [AdminFacilityController::class, 'add'])->name('admin_facility_add');

    Route::post('/admin/facility/store', [AdminFacilityController::class, 'store'])->name('admin_facility_store');

    Route::get('/admin/facility/edit/{id}', [AdminFacilityController::class, 'edit'])->name('admin_facility_edit');

    Route::post('/admin/facility/update/{id}', [AdminFacilityController::class, 'update'])->name('admin_facility_update');

    Route::get('/admin/facility/delete/{id}', [AdminFacilityController::class, 'delete'])->name('admin_facility_delete');


    //route room

    Route::get('/admin/room/view', [AdminRoomController::class, 'index'])->name('admin_room_view');

    Route::get('/admin/room/add', [AdminRoomController::class, 'add'])->name('admin_room_add');

    Route::post('/admin/room/store', [AdminRoomController::class, 'store'])->name('admin_room_store');

    Route::get('/admin/room/edit/{id}', [AdminRoomController::class, 'edit'])->name('admin_room_edit');

    Route::post('/admin/room/update/{id}', [AdminRoomController::class, 'update'])->name('admin_room_update');

    Route::get('/admin/room/delete/{id}', [AdminRoomController::class, 'delete'])->name('admin_room_delete');

    //route room gallery

    Route::get('/admin/room/gallery{id}', [AdminRoomController::class, 'gallery'])->name('admin_room_gallery');

    Route::post('/admin/room/gallery/store/{id}', [AdminRoomController::class, 'gallery_store'])->name('admin_room_gallery_store');

    Route::get('/admin/room/gallery/delete/{id}', [AdminRoomController::class, 'gallery_delete'])->name('admin_room_gallery_delete');

});



