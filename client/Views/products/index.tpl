<!DOCTYPE html>
<html>
<head>
	<title>products</title>
</head>
<body>
	{include file='blocks/header.tpl'}

	<div class="container mt-5">

		<form method="get" action="/products/create">
			<button class="btn btn-success">Жаңа тауар</button>
		</form>
		
		<table class="table mt-2">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">Атауы</th>
		      <th scope="col">Сипаттамасы</th>
		      <th scope="col">Бағасы</th>
		      <th scope="col">Суреті</th>
		      <th scope="col"></th>
		    </tr>
		  </thead>
		  <tbody>
		  	{foreach from=$products item=product}
		    <tr>
		      <th scope="row">{$product.id}</th>
		      <td>{$product.name}</td>
		      <td>{$product.description}</td>
		      <td>{$product.price} тг</td>
		      <td>
		      	<img src="{$product.image}" width="100px">
		      </td>
		      <td>
		      	<div class="d-flex">
			      	<form method="get" action="/products/{$product.id}/edit" class="mr-1">
			      		<button class="btn btn-primary">Өзгерту</button>
			      	</form>
			      	<form method="post" action="/products/{$product.id}/delete">
			      		<button class="btn btn-danger">Өшіру</button>
			      	</form>
		      	</div>
		      </td>
		    </tr>
		 	{/foreach}
		  </tbody>
		</table>
	</div>
</body>
</html>