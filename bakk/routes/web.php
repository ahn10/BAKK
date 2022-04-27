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

// Route::get('/', function () {
//     return view('welcome');
// });
Route::group(['namespace' => 'Auth','prefix' => 'account'], function(){
    Route::get('register','RegisterController@getFormRegister')->name('get.register');
    Route::post('register','RegisterController@postRegister');

    Route::get('login','LoginController@getFormLogin')->name('get.login');
    Route::post('login','LoginController@postLogin');

    Route::get('logout','LoginController@getLogout')->name('get.logout');
    Route::get('reset-password','ResetPasswordController@getEmailReset')->name('get.email_reset_password');
    Route::post('reset-password','ResetPasswordController@checkEmailResetPassword');

    Route::get('new-password','ResetPasswordController@newPassword')->name('get.new_password');
    Route::post('new-password','ResetPasswordController@savePassword');

    Route::get('/{social}/redirect', 'SocialAuthController@redirect')->name('get.login.social');
    Route::get('/{social}/callback', 'SocialAuthController@callback')->name('get.login.social_callback');
});


// Login admin
Route::group(['prefix' => 'admin-auth','namespace' => 'Admin\Auth'], function() {
    Route::get('login','AdminLoginController@getLoginAdmin')->name('get.login.admin');
    Route::post('login','AdminLoginController@postLoginAdmin');

    Route::get('logout','AdminLoginController@getLogoutAdmin')->name('get.logout.admin');
});

Route::get('test-pay','PayPalTestController@index');
Route::group(['namespace' => 'Frontend'], function() {
    Route::get('','HomeController@index')->name('get.home');
    Route::get('ajax-load-product-recently','HomeController@getLoadProductRecently')->name('ajax_get.product_recently');
    Route::get('ajax-load-product-by-category','HomeController@getLoadProductByCategory')->name('ajax_get.product_by_category');
    Route::get('ajax-load-slide','HomeController@loadSlideHome')->name('ajax_get.slide');
    Route::get('product','ProductController@index')->name('get.product.list');
    Route::get('category/{slug}','CategoryController@index')->name('get.category.list');
    Route::get('product/{slug}','ProductDetailController@getProductDetail')->name('get.product.detail');
    Route::get('product/{slug}/rating','ProductDetailController@getListRatingProduct')->name('get.product.rating_list');

    Route::get('articles','BlogController@index')->name('get.blog.home');
    Route::get('menu/{slug}','BlogMenuController@getArticleByMenu')->name('get.article.by_menu');
    Route::get('articles/{slug}','ArticleDetailController@index')->name('get.blog.detail');
    // Cart
    Route::get('order','ShoppingCartController@index')->name('get.shopping.list');
    Route::prefix('shopping')->group(function () {
        Route::get('add/{id}','ShoppingCartController@add')->name('get.shopping.add');
        Route::get('delete/{id}','ShoppingCartController@delete')->name('get.shopping.delete');
        Route::get('update/{id}','ShoppingCartController@update')->name('ajax_get.shopping.update');
        Route::get('order-tracking','TrackOrderController@index')->name('get.track.transaction');
        Route::post('pay','ShoppingCartController@postPay')->name('post.shopping.pay');
        Route::get('hook','ShoppingCartController@hookCallback')->name('get.shopping.callback');
    });

    //Comment
    Route::group(['prefix' => 'comment', 'middleware' => 'check_user_login'], function(){
        Route::post('ajax-comment','CommentsController@store')->name('ajax_post.comment');
    });

    Route::get('contact','ContactController@index')->name('get.contact');
    Route::post('contact','ContactController@store');
    Route::get('product-ban-da-xem','PageStaticController@getProductView')->name('get.static.product_view');
    Route::get('ajax/product-ban-da-xem','PageStaticController@getListProductView')->name('ajax_get.product_view');
    Route::get('shopping-guide','PageStaticController@getShoppingGuide')->name('get.static.shopping_guide');
    Route::get('return-policy','PageStaticController@getReturnPolicy')->name('get.static.return_policy');
    Route::get('customer-service','PageStaticController@getCustomerCare')->name('get.static.customer_care');



    Route::get('ajax/load-document','PageStaticController@getDocumentAjax')->name('get_ajax.static.document');
    Route::get('demo/view-file','PageStaticController@getDemoViewFile');
});

Route::group(['prefix' => 'test','namespace' => 'Test'], function(){
	Route::get('hoa-don-ban','TestController@index');
});


include 'route_api.php';

Route::get('/home', 'HomeController@index')->name('get.home');
