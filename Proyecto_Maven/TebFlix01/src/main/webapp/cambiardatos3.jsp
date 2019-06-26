<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>TebFlix - Plataforma dedicada al mundo de los c�mics</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="css/style_cambiardatos3.css">
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
			<h2>C�mics, eventos y mucho m�s</h2>
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
			<a href="" id="botonRegis">Cerrar sesi�n</a> 
		</div>
	</header>

	<!-- Men� -->
	<nav id="menu">
		<ul id="menu1" class="nav">
			<li> <a href="#"> Inicio </a></li>
			<li id="sub1"class="opt"> <a> Categor�as </a>
				<ul id="sub11">
					<li href="" id="subini"> <a href=""> > Acci�n </a></li>
					<li href=""> <a href=""> > Ciencia Ficci�n </a></li>
					<li href=""> <a href=""> > Detectives </a></li>
					<li href=""> <a href=""> > Fantas�a </a></li>
				</ul>
			</li>
			<li href=""> <a href=""> Eventos </a></li>
			<li href=""> <a href=""> Tiendas de c�mics </a></li>
			<li id="final" href=""> <a href=""> Con�cenos </a></li>
		</ul>
	</nav>

<main>
	<div id="contenido">
		<section id="suscripcion">
			<form action="Cambio" method="post">
				<label id="principal">Cambiar datos <%=session.getAttribute("usuario") %></label>
						<h2 id="err">Este usuario o email ya existen</h2>
				<div> <label>Correo electr�nico</label> 
					<label id="infoEmail1"></label>
					<input type="email" name="correo" placeholder="Correo electr�nico"> 
				</div>
				<div> <label>Repita correo electr�nico</label>
					<label id="infoEmail2"></label>
					<input type="email" name="correo" placeholder="Repetir correo electr�nico" > 
				</div>
				<div> <label>Nombre de usuario</label>
					<input type="text" name="usuario" placeholder="Nombre de usuario"> 
				</div>
				<div> <label>Nombre</label>
					<input type="text" name="nombre"placeholder="Nombre"> 
				</div>
				<div> <label>Primer apellido</label>
					<input type="text" name="apellido1"placeholder="Primer apellido"> 
				</div>
				<div> <label>Segundo apellido</label>
					<input type="text" name="apellido2" placeholder="Segundo apellido"> 
				</div>
				<div> <label>Contrase�a</label> <label id="infoContra1"></label>
					<input type="password" name="contrasena" placeholder="Contrase�a" maxlength="10" minlength="6"> 
				</div>
				<div> <label>Repita contrase�a</label> <label id="infoContra2"></label>
					<input type="password" name="contrasena" placeholder="Repetir contrase�a" maxlength="10" minlength="6"> 
				</div>
				<input type="submit" id="botoncrear" value="Cambiar datos"> 
			</form>
		</section>	
	</div>
</main>
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
			<li><a class="enl" href="#">T�rminos y condiciones.</a></li>
		</ul>
		<p id="copy">Copyright 2019 �. TebFlix.</p>
	</footer>

</body>

</html>