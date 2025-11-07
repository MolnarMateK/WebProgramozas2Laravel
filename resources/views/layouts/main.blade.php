<!DOCTYPE HTML>
<html>
	<head>
		<title>ReNew Kft. - Notebook Webshop</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		
		<link rel="stylesheet" href="{{ asset('assets/css/main.css') }}" />
	</head>

	<body>

		<div id="wrapper">

			<div id="main">
				<div class="inner">

					<header id="header">
						<a href="{{ route('home') }}" class="logo"><strong>ReNew Kft.</strong> - Felújított Notebook Szaküzlet</a>
						
						<ul class="icons">
							@auth
								<li><a href="{{ route('dashboard') }}">{{ Auth::user()->name }} (Profil)</a></li>
								<li>
									<form method="POST" action="{{ route('logout') }}">
										@csrf
										<a href="{{ route('logout') }}" onclick="event.preventDefault(); this.closest('form').submit();">Kijelentkezés</a>
									</form>
								</li>
							@else
								<li><a href="{{ route('login') }}" class="icon solid fa-sign-in-alt">Bejelentkezés</a></li>
								<li><a href="{{ route('register') }}" class="icon solid fa-user-plus">Regisztráció</a></li>
							@endauth
						</ul>
					</header>

					@yield('content')

				</div>
			</div>

			<div id="sidebar">
				<div class="inner">

					<nav id="menu">
						<header class="major">
							<h2>Menü</h2>
						</header>
						<ul>
							<li><a href="{{ route('home') }}">Főoldal</a></li>
							<li><a href="{{ route('adatbazis') }}">Adatbázis</a></li>
							<li><a href="#">Kapcsolat</a></li>
							<li><a href="#">Üzenetek</a></li>
							<li><a href="#">Diagram</a></li>
							<li><a href="#">CRUD (Processzorok)</a></li>
							<li><a href="#">Admin</a></li>
						</ul>
					</nav>

					<footer id="footer">
						<p class="copyright">&copy; ReNew Kft. Minden jog fenntartva. Sablon: Editorial by <a href="https://html5up.net">HTML5 UP</a>.</p>
					</footer>

				</div>
			</div>

		</div>

		<script src="{{ asset('assets/js/jquery.min.js') }}"></script>
		<script src="{{ asset('assetsjs/browser.min.js') }}"></script>
		<script src="{{ asset('assets/js/breakpoints.min.js') }}"></script>
		<script src="{{ asset('assets/js/util.js') }}"></script>
		<script src="{{ asset('assets/js/main.js') }}"></script>

	</body>
</html>