var desc = document.getElementsByClassName('card-text');

for (var i = 0; i < desc.length; i++) {
	desc[i].innerHTML = desc[i].innerHTML.substring(0, 180);
}

window.onload = cupon();

function cupon() {
	var cupon = document.getElementById('cupon');
	var price = document.getElementById('price');
	var newPrice = document.getElementById('newPrice');

	var salePercent = cupon.innerHTML;

	if (salePercent) {
		price.style.textDecoration = 'line-through';
		price.style.color = 'red';
		newPrice.style.color = 'green';
		newPrice.innerHTML = price.innerHTML * (1 - (salePercent / 100));
	}
}

function register() {
	location.href = '/auth/register';
}

function login() {
	location.href = '/auth/login';
}