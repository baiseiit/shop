<!DOCTYPE html>
<html>
<head>
	<title>{$title}</title>
</head>
<body>
	{include file='blocks/header.tpl'}

	<div class="container">
		{if isset($success)}
		<div class="alert alert-success mt-5">{$success}</div>
		{/if}
		{if isset($error)}
		<div class="alert alert-danger mt-5">{$error}</div>
		{/if}

		<div class="row mt-5 justify-content-center">
		{foreach from=$products item=product}
			<div class="card col-md-4 mb-3">
			  <img class="card-img-top" src="{$product.image}" alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title">{$product.name}</h5>
			    <p class="card-text">{$product.description}</p>
			    <a href="products/{$product.id}" class="btn btn-primary">Толық мәлімет</a>
			  </div>
			</div>
		{/foreach}
		</div>
	</div>

	{include file='blocks/footer.tpl'}
</body>
</html>
