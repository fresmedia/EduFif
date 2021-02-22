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

// Route::prefix('diaspora')->group(function() {
//     Route::get('/', 'DiasporaController@index');
// });

Route::group(['prefix' => 'diaspora', 'as' => 'diaspora.'], function () {
    Route::get('/', 'DiasporaController@index')->name('index');
    Route::get('/{parent_slug}', 'CategoriesController@showParent')->name('category.show');
    // Route::get('/{parent_slug}/{child_slug}', 'CategoriesController@showChild1')->name('category.child1.show');
    // Route::get('/{parent_slug}/{child_slug}/{child_slug2}', 'CategoriesController@showChild2')->name('category.child2.show');
    Route::get('/{child_slug}/{page_slug}', 'PagesController@showSinglePage')->name('pages.show');
});
// Route::get('/', 'DiasporaController@index')->name('diaspora.index');
