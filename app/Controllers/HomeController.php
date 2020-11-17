<?php

use App\Models\Product;

class HomeController extends Controller {

	public function example($request) {

		if (isset($request->params['success'])) {
			$this->view->set('success', $request->params['success']);
		}

		if (isset($request->params['error'])) {
			$this->view->set('error', $request->params['error']);
		}

		$products = Db::findAll(Product::TABLE);

		$this->view->set('products', $products);
		$this->view->set('title', 'Baiseiit');
		$this->view->render('home');
	}
}
