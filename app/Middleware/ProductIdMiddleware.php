<?php

use App\Models\Product;

class ProductIdMiddleware extends Middleware {
	public static function handle($request, \Closure $next) {
		$id = $request->query['id'];

		$product = Db::findOne(Product::TABLE, "id = {$id}");

		if (isset($product)) {
			return $next($request);
		} else {
			return self::redirect('blocks/error', [
				'code' => 404
			]);
		}
	}
}