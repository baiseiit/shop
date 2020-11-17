<!DOCTYPE html>
<html>
<head>
	<title>Register</title>
</head>
<body>
	{include file='lib.tpl'}
	<div class="container">
		<div class="col-md-6 offset-md-3 mt-5 pt-5">
			<form method="post" action="/auth/create">
				<h3>Тіркелу</h3>
				<input type="text" name="name" placeholder="Атыныз" class="form form-control"><br>
				<input type="email" name="email" placeholder="Email" class="form form-control" required><br>
				<input type="password" name="password" placeholder="Құпия сөз" class="form form-control" required><br>
				<button class="btn btn-success">Тіркелу</button>
			</form>
		</div>
	</div>
</body>
</html>