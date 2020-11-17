<?php

use App\Models\User;

class UserController extends Controller {
	public function login($req) {
		if (isset($req->params['error'])) {
			$this->view->set('error', $req->params['error']);
		}

		$this->view->render('auth/login');
	}

	public function register($req) {
		$this->view->render('auth/register');
	}

	public function create($request) {
		$user = Db::dispense(User::TABLE);

		$user->name = $request->params['name'];
		$user->email = $request->params['email'];
		$user->password = $request->params['password'];

		Db::store($user);
		header("Location: /auth/login");
	}

	public function authorize($request) {
		$email = $request->params['email'];
		$password = $request->params['password'];

		$user = Db::findOne(User::TABLE, " email = ? AND password = ?", [
			$email,
			$password
		]);

		if (isset($user)) {
			$this->auth($user);
			header("Location: /?success=Success logged");
		} else {
			header("Location: /auth/login?error=Not found");
		}
	}

	public function logout() {
		session_start();
		$_SESSION['user'] = null;

		header('Location: /');
	}

	private function auth($user) {
		session_start();
		$_SESSION['user'] = $user;
	}
}