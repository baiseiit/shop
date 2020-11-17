<?php

	Route::get('/', function($request) {
		(new HomeController)->example($request);
	});

	Route::get('/products', function($request) {
		(new ProductController)->index($request);
	})->middleware(AdminMiddleware::class);

	Route::get('/products/create', function($request) {
		(new ProductController)->create($request);
	})->middleware(AdminMiddleware::class);

	Route::get('/products/@id/edit', function($request) {
		(new ProductController)->edit($request);
	})->middleware(AdminMiddleware::class);

	Route::post('/products/store', function($request) {
		(new ProductController)->store($request);
	})->middleware(AdminMiddleware::class);

	Route::post('/products/@id/update', function($request) {
		(new ProductController)->update($request);
	})->middleware(AdminMiddleware::class);

	Route::post('/products/@id/delete', function($request) {
		(new ProductController)->delete($request);
	})->middleware(AdminMiddleware::class);

	Route::get('/products/@id', function($request) {
		(new ProductController)->get($request);
	})->middleware(ProductIdMiddleware::class);

	Route::post('/orders', function($request) {
		(new OrderController)->store($request);
	});

	Route::get('/auth/login', function($request) {
		(new UserController)->login($request);
	});

	Route::get('/auth/register', function($request) {
		(new UserController)->register($request);
	});

	Route::post('/auth/create', function($request) {
		(new UserController)->create($request);
	});

	Route::post('/auth/authorize', function($request) {
		(new UserController)->authorize($request);
	});

	Route::post('/auth/logout', function($request) {
		(new UserController)->logout($request);
	});
