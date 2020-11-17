<?php

	define('__APP_DIR__', __DIR__);

	require_once __APP_DIR__ . '/vendor/autoload.php';
	include __APP_DIR__ . '/framework/src/lib.php';

	session_start();

	Route::dispatch($_SERVER, $_REQUEST);

