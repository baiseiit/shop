<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	  <link rel="icon" href="storage/favicon.png">
</head>
<body>
	{include file='lib.tpl'}
		<div class="container">
		{if isset($error)}
		<div class="alert alert-danger mt-5">{$error}</div>
		{/if}
		<div class="col-md-6 offset-md-3 mt-5 pt-5">
			<form method="post" action="/auth/authorize">
				<h3>Кіру</h3>
				<input type="email" name="email" placeholder="Email" class="form form-control" required><br>
				<input type="password" name="password" placeholder="Құпия сөз" class="form form-control" required><br>
				<button class="btn btn-success">Кіру</button>
			</form>
		</div>
	</div>
</body>
</html>