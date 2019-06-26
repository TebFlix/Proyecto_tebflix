<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Bienvenido - TebFlix</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="css/style_cuentaNueva.css">
	<script type="text/javascript" src="js/jquery-3.4.0.min.js"></script>
	<script type="text/javascript" src="js/script1.js"></script>
	<script type="text/javascript" src="js/jQueryRotate.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Gugi|PT+Sans" rel="stylesheet"> <!--fuente-->
	<link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Source+Code+Pro" rel="stylesheet">
	<link rel="icon" type="image/png" sizes="16x16" href="./img/favicon-16x16.png">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
	<!--<link rel="icon" type="image/png" sizes="16x16" href="./img/favicon.png">-->
</head>

<body>
	<div id="capaCubrir"> </div>
	<!-- Cabecera -->
	<header>
		<div id="titulo">
			<h1 class="titulos"><a class="titulos"href="#">TebFlix</a></h1>
			<h2>Cómics, eventos y mucho más</h2>
			<a class="logo" href="#"> <img src="./img/logo_final1.png" class="logo"> </a>
			<img src="./img/menuBlanco.png" id="logoMenu">


			<div id="redes">
				<a href="https://es-es.facebook.com/" target="_blank"> <img src="./img/facebookblanco32.png"						
					id="facebook"> </a>
				<a href="https://www.youtube.com/" target="_blank"> <img src="./img/youtubeblanco32.png"
					id="youtube"> </a>
				<a href="https://twitter.com/?lang=es/" target="_blank"> <img src="./img/twitterblanco32.png"
					id="twitter"> </a>
				<a href="https://www.instagram.com/?hl=es/" target="_blank"> <img src="./img/instagramblanco32.png"
					id="instagram"> </a>
			</div>
			<a href="" id="inisesion">Mi Perfil</a>
			<a href="" id="botonRegis">Cerrar sesión</a> 
		</div>
	</header>

	<!-- Menú -->
	<nav id="menu">
		<ul id="menu1" class="nav">
			<li> <a href="#"> Inicio </a></li>
			<li id="sub1"class="opt"> <a> Categorías </a>
				<ul id="sub11">
					<li href="" id="subini"> <a href=""> > Acción </a></li>
					<li href=""> <a href=""> > Ciencia Ficción </a></li>
					<li href=""> <a href=""> > Detectives </a></li>
					<li href=""> <a href=""> > Fantasía </a></li>
				</ul>
			</li>
			<li href=""> <a href=""> Eventos </a></li>
			<li href=""> <a href=""> Tiendas de cómics </a></li>
			<li id="final" href=""> <a href=""> Conócenos </a></li>
		</ul>
	</nav>

	<main>
		<div id="contenido">
			<div id="marco">
				<h3>
					¡Bienvenido <%= session.getAttribute("nombre") %>! Muchas gracias por formar parte de nuestro proyecto.
				</h3>
				
					<p>
						Acabas de dar el primer paso <%= session.getAttribute("nombre") %>. Ahora solo tienes que disfrutar
						del contenido de otros usuario y, si te animas, subir tus propios cómics.
					</p>
					<p>Recuerda que puedes cambiar los datos que has introducido. Echa un ojo 
					a tu perfil para saber más.</p>
				
				<a href="Navegador?accion=Perfil"><input type="button" value="Ir a mi pefil" id="suscrip2" class="botonElim"> </a>
			</div>
		</div>


	</main>

<!-- Footer -->
	<footer id="pie">
		<div>
			<a href="https://es-es.facebook.com/" target="_blank"> <img src="./img/facebookblanco32.png"			id="facebook"> </a>
			<a href="https://www.youtube.com/" target="_blank"> <img src="./img/youtubeblanco32.png"
				id="youtube"> </a>
			<a href="https://twitter.com/?lang=es/" target="_blank"> <img src="./img/twitterblanco32.png"
				id="twitter"> </a>
			<a href="https://www.instagram.com/?hl=es/" target="_blank"> <img src="./img/instagramblanco32.png"
				id="instagram"> </a>
		</div>
		<ul>
			<li><a class="enl" href="#">Privacidad.</a></li>
			<li><a class="enl" href="#">Términos y condiciones.</a></li>
		</ul>
		<p id="copy">Copyright 2019 ©. TebFlix.</p>
	</footer>
