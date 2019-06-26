<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Crear cuenta - TebFlix</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="css/style_registro.css">
	<script type="text/javascript" src="js/jquery-3.4.0.min.js"></script>
	<script type="text/javascript" src="js/script2.js"></script>
	<script type="text/javascript" src="js/jQueryRotate.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Gugi|PT+Sans" rel="stylesheet"> <!--fuente-->
	<link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Source+Code+Pro" rel="stylesheet">
	<link rel="icon" type="image/png" sizes="16x16" href="./img/favicon-16x16.png">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
	<!--<link rel="icon" type="image/png" sizes="16x16" href="./img/favicon.png">-->
</head>

<body>
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
			<a href="Navegador?accion=Iniciar" id="inisesion">Iniciar sesión</a>
			<a href="Navegador?accion=Registrar" id="botonRegis">Regístrate</a>
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
		<section id="suscripcion">
			<h4>Únete al mejor portal de cómics de 	Internet.</h4>
			<p id="titulo4">No tardarás mucho, tampoco nos gusta el papeleo...</p>
			<form action="Registro" method="post" id="formulario">
				<label id="principal">Crear cuenta</label>
				<div> <label>Correo electrónico *</label> 
					<label id="infoEmail1"></label>
					<input id="email1" type="email" name="correo" 
					required placeholder="Correo electrónico" class="correo"> 
				</div>
				<div> <label>Repita correo electrónico *</label>
					<label id="infoEmail2"></label>
					<input id="email2" type="email" 
					required placeholder="Repetir correo electrónico" class="correo"> 
				</div>
				<div> <label>Nombre de usuario *</label>
					<input type="text" name="usuario" required placeholder="Nombre de usuario"> 
				</div>
				<div> <label>Nombre *</label>
					<input type="text" name="nombre" required placeholder="Nombre"> 
				</div>
				<div> <label>Primer apellido *</label>
					<input type="text" name="apellido1" required placeholder="Primer apellido"> 
				</div>
				<div> <label>Segundo apellido</label>
					<input type="text" name="apellido2" placeholder="Segundo apellido"> 
				</div>
				<div> <label>Contraseña *</label> <label id="infoContra1"></label>
					<input id="contra1" type="password" name="contrasena" required 
					placeholder="Contraseña" maxlength="10" minlength="6" class="contra"> 
				</div>
				<div> <label>Repita contraseña *</label> <label id="infoContra2"></label>
					<input id="contra2" type="password"  required 
					placeholder="Repetir contraseña" maxlength="10" minlength="6" class="contra"> 
				</div>
				<div> <label>¿Vas a ser proveedor de cómics?*</label><br>
					<label> >>> Sí, quiero compartir mis cómics en TebFlix
					<input type="radio" name="prove" value="1" required class="prov">
					</label>
					<br>
					<label> >>> No, mejor me lo pienso para otra ocasión
					<input type="radio" name="prove" value="0" checked required class="prov">
					</label>
				</div>
				<input type="submit" id="botoncrear" value="Crear cuenta"> 
				<label id="leyenda">* Campos obligatorios.</label>
			</form>
		</section>	
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

</body>

</html>