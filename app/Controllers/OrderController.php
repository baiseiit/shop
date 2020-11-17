<?php

use App\Models\Order;

class OrderController extends Controller {

	public function store($request) {
		$order = Db::dispense(Order::TABLE);

		$order->phone_number = $request->params['phone_number'];
		$order->product_id = $request->params['product_id'];
		$order->count = $request->params['count'];

		Db::store($order);
		header("Location: /");
	}
}