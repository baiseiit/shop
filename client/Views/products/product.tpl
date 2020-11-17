<!DOCTYPE html>
<html>
<head>
	<title>products/product</title>
</head>
<body>
	{include file='blocks/header.tpl'}

	<div class="container mt-5">
		<div class="row">
			<div class="col-md-6">
				<img src="{$product.image}">
			</div>
			<div class="col-md-6">
				<h1 id="name">{$product.name}</h1>
				<div class="d-flex">
					
					<h3 id="price">{$product.price}</h3>
					<h3 id="cupon">{$product.cupon}</h3>
					<h3 id="newPrice"></h3>
				</div>
				<p id="description">{$product.description}</p>
			</div>
		</div>
		<div class="row mt-3 mb-3">
			<form class="col-md-6 ml-auto" method="post" action="/orders">
				<h3>Тапсырыс беру</h3>
				<input type="hidden" name="product_id" placeholder="Product" class="form form-control" value="{$product.id}"><br>
				<input type="number" name="count" placeholder="Count" class="form form-control" required><br>
				<input type="tel" name="phone_number" placeholder="Tel number" class="form form-control" required><br>
				<button class="btn btn-success">Buy</button>
			</form>
		</div>
	</div>

	{include file='blocks/footer.tpl'}
</body>
</html>