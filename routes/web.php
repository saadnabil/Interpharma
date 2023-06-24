<?php

use Illuminate\Support\Facades\Route;


Route::get('/clear', function () {
    
    $clearcache = Artisan::call('cache:clear');
  
    $clearview = Artisan::call('view:clear');
      
    $clearview = Artisan::call('route:clear');

    $clearconfig = Artisan::call('config:cache');
    
    $clearconfig = Artisan::call('storage:link');
    
    echo "Config cleared<br>";

});


Route::group(['prefix' => LaravelLocalization::setLocale(),'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]], function()
{
Route::get('/','ProductController@index')->name('index');
Route::get('/ar','ProductController@ar')->name('ar');
Route::get('/product/{id}','ProductController@product')->name('product');
Route::get('/Event','BlogController@index')->name('event');
Route::get('/aboutUs','AvailabilityController@index')->name('about');
Route::get('/tt','AvailabilityController@store')->name('tt');
Route::get('/about/{id}','AvailabilityController@show')->name('aboutus');
Route::post('avaBranches',"AvailabilityController@ava")->name('avldata');
Route::get('/contact','ContactController@index')->name('contact');
// Route::get('/checkout','ProductController@checkout')->name('checkout');
Route::get('/post/{id}','ProductController@post')->name('post');
Route::any('/comment', 'CommentController@store')->name('comment');
// Route::get('/{id}','ProductController@show')->name('show');

Route::get('/shop', function () {
    return view('shop');
});

//Orders handle routes
Route::post('storeOrderData',"OrderController@store")->name('storeOrder');


//orders handle store routes
Route::get('/singleproduct/{id}', 'ProductController@details')->name('details');

Route::post('/storeContact','ContactController@storecontact')->name('contactStore');

Route::get('/team', 'TeamController@index')->name('team');

Route::get('/shop', 'CartController@shop')->name('shop')->middleware('auth');
Route::get('/add-to-cart/{id}', 'CartController@add')->name('add')->middleware('auth');
Route::get('/checkout', 'CartController@index')->name('cart-index')->middleware('auth');
Route::get('/destroy/{id}', 'CartController@delete')->name('cart-delete')->middleware('auth');
Route::get('/cart/{id}', 'CartController@update')->name('cart-update')->middleware('auth');

// for testinng

//add to favourite routes add_favourite
Route::get('/add_favourite/{id}', 'CartController@favourite_add')->name('add_favourite')->middleware('auth');
Route::get('/favourites',"CartController@favourites")->name('favourites')->middleware('auth');
Route::get('/removeFavourite/{id}',"CartController@removeFavourite")->name('removeFavourite')->middleware('auth');
//end add to favourites routes 
//start the rate of products
Route::get('/add_stars/{id}',"CartController@addStar")->name('addStar')->middleware('auth');
Route::get('/remove_stars/{id}',"CartController@removeStar")->name('removeStar')->middleware('auth');
//end the rate of products

Route::get("/cartContent",function(){
   return \Cart::session(auth()->id())->getContent();
});
// end for testing
// Route::get('/checkout', 'CartController@checkout')->name('cart-checkout')->middleware('auth');


//ajax route

Route::post('/ajax','ContactController@ajaxshow')->name('ajax');

//end ajax route
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
//clients route
    Route::get("/clients","clientController@index")->name('client.index');
    Route::get("/deleteClient/{id}","clientController@deleteClient")->name('client.deletecl');
    Route::get("/clients/filter/{id}","clientController@filterClient")->name('client_filter');
    //end clients route
//start orders route
    Route::get("/orders","OrderController@index")->name('order.index');
    Route::get("/orders{cl_id}","OrderController@cl_order")->name('order.filter');
    Route::get("/deleteOrder/{id}","OrderController@deleteOrder")->name('order.deletedel');
    Route::post("/orders/filter","OrderController@orderFilter")->name('orders.date.filter');
    Route::get("/upadte/orders/{id}","OrderController@updateOrders")->name('updateOrders');
    Route::post("/orders/edit","OrderController@editOrders")->name('edit.orders');

//end orders route

//start orders route
    Route::get("/orderdetails","orderdetailsController@index")->name('orderdetails.index');
    Route::get("/orderdetails/{cl_id}","orderdetailsController@orderdetails")->name('orderdetails.filter');
    Route::get("/orderdetails/delete/{od_id}","orderdetailsController@orderdetailsDelete")->name('orderdetails.delete');
    Route::get("/orderdetails/update/{od_id}","orderdetailsController@orderdetailsUpdate")->name('update.orderdetails');
    Route::post("/orderdetails/edit/","orderdetailsController@orderdetailsEdit")->name('edit.orderdetails');
    // Route::get("/deleteOrder/{id}","orderController@deleteOrder")->name('order.deletedel');
//end orders route


});

Route::group(['prefix' => 'admin'], function () {

    Route::get('create', 'CrudController@create');
    Route::post('store', 'CrudController@store')->name('admin.store');
});

});
