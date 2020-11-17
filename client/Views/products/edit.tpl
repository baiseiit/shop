<!DOCTYPE html>
<html>
<head>
	<title>products\edit</title>
</head>
<body>
	{include file='blocks/header.tpl'}

	<div class="container">
		<div class="col-md-6 offset-md-3 mt-5 pt-5">
			<form method="post" action="/products/{$product.id}/update">
				<h3>Тауарды өзгерту</h3>
				<input type="text" name="name" placeholder="Тауар аты" class="form form-control" value="{$product.name}"><br>
				<textarea name="description" placeholder="Сипаттамасы" class="form form-control" required>{$product.description}</textarea><br>
				<input type="number" name="price" placeholder="Бағасы" class="form form-control" required value="{$product.price}"><br>
				<select name="category_id" class="form-control" value="{$product.category_id}">
					{foreach from=$categories item=category}
					<option value="{$category.id}">{$category.name}</option>
					{/foreach}
				</select><br>
				<input type="number" name="cupon" placeholder="Купон" class="form form-control" max="100" value="{$product.cupon}"><br>
				<input type="text" name="image" placeholder="Сурет сілтеме" class="form form-control" required value="{$product.image}"><br>
				<button class="btn btn-success">Өзгертуді сақтау</button>
			</form>
		</div>
	</div>
</body>
</html>