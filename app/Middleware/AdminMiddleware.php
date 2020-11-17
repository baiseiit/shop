<?php

class AdminMiddleware extends Middleware {
	public static function handle($request, \Closure $next) {
		if (isset($_SESSION['user'])) {
			$role = $_SESSION['user']['role'];
			
			if ($role == 2) return $next($request);
		}

		header('Location: /?error=Сізде бұл ресурсты алуғы құқық жоқ!');
	}
}