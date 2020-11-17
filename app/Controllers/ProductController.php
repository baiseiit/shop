<?php

use App\Models\Product;
use App\Models\Category;

class ProductController extends Controller {
	public function get($request) {
		$id = $request->query['id'];

		$product = Db::findOne(Product::TABLE, "id = {$id}");

		$this->view->set('product', $product);
		$this->view->render('products/product');
	}

	public function index($request) {
		$products = Db::findAll(Product::TABLE);

		$this->view->set('products', $products);
		$this->view->render('products\index');
	}

	public function create($request) {
		$categories = Db::findAll(Category::TABLE);

		$this->view->set('categories', $categories);
		$this->view->render('products\create');
	}

	public function edit($request) {
		$id = $request->query['id'];

		$product = Db::findOne(Product::TABLE, "id = {$id}");
		$categories = Db::findAll(Category::TABLE);

		$this->view->set('product', $product);
		$this->view->set('categories', $categories);
		$this->view->render('products\edit');
	}

	public function store($request) {
		$product = Db::dispense(Product::TABLE);

		$product->name = $request->params['name'];
		$product->description = $request->params['description'];
		$product->price = $request->params['price'];
		$product->category_id = $request->params['category_id'];
		$product->cupon = $request->params['cupon'];
		$product->image = $request->params['image'];

		Db::store($product);
		header("Location: /");
	}

	public function update($request) {
		$id = $request->query['id'];
		$product = Db::findOne(Product::TABLE, "id = {$id}");

		$product->name = $request->params['name'];
		$product->description = $request->params['description'];
		$product->price = $request->params['price'];
		$product->category_id = $request->params['category_id'];
		$product->cupon = $request->params['cupon'];
		$product->image = $request->params['image'];

		Db::store($product);
		header("Location: /");
	}

	public function delete($request) {
		$id = $request->query['id'];
		$product = Db::findOne(Product::TABLE, "id = {$id}");
		
		Db::trash($product);
		header("Location: /");
	}
}