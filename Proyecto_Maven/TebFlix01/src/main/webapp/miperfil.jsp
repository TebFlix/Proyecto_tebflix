<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "controlDatos.LogicaBD" %> 
<%@ page import= "model.Usuario" %> 
<html>
<head>
	<title>Mi Perfil - TebFlix</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="css/style_miperfil.css">
	<script type="text/javascript" src="js/jquery-3.4.0.min.js"></script>
	<script type="text/javascript" src="js/script1.js"></script>
	<script type="text/javascript" src="js/jQueryRotate.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Gugi|PT+Sans" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Source+Code+Pro" rel="stylesheet">
	<link rel="icon" type="image/png" sizes="16x16" href="./img/favicon-16x16.png">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
	<!--<link rel="icon" type="image/png" sizes="16x16" href="./img/favicon.png">-->
</head>
<body>
<%
	HttpSession sesion = request.getSession(true);
	ServletContext contextoAplicacion = this.getServletContext();
	LogicaBD lbd = (LogicaBD) contextoAplicacion.getAttribute("LogicaBD");
	String usuario = (String) session.getAttribute("usuario");
	Usuario usu = lbd.devuelveUsuario(usuario);
	String listaSubidos = lbd.comicSubidos(usuario);
	//String listaFavoritos = lbd.comicsFavoritos(usuario);

%>


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
			<input type="button" value="Mi Perfil" id="inisesion">
			<input type="button" value="Cerrar sesión" id="botonRegis">
		</div>
	</header>

	<!-- Menú -->
	<nav id="menu">
		<ul id="menu1" class="nav">
			<li> <a href="#"> Inicio </a></li>
			<li id="sub1"class="opt"> <a> Categorías </a>
			<li href=""> <a href=""> Noticias </a></li>
			<li href=""> <a href=""> Mejores comics del mes </a></li>
			<li id="final" href=""> <a href=""> Conócenos </a></li>
		</ul>
	</nav>
<main> <!--Habrá que generar dinámicamente los datos del usuario.-->
	<div id="contenido">
		<section id="infoPersonal">
			<h3>MI PERFIL.</h3>
			<div id="imgPerfil">
				<img src="./img/avatar_anonimo_azul.png">
			</div>
			<input type="button" value="Cambiar avatar">
			<p><strong> Nombre: </strong> <%=usu.getNombre() + " " + usu.getApellido1()%></p>
			<p><strong>Nombre de usuario: </strong> <%= usu.getUsuario() %></p>
			<p><strong>Correo: </strong> <%= usu.getCorreo() %></p>

			<section id="gestiones">
				<h3>GESTIONES.</h3>
				<div>
					<a class="link" href="Navegador?accion=Cambiar"><p>Cambiar datos de usuario.</p></a>
					<p>Subir cómics.</p>
					<p>Cerrar sesión.</p>
					<p id="elim">Eliminar cuenta.</p>
				</div>
			</section>
			
		</section>

		<section id="misComics">
			<h3 id="titleCom">MIS CÓMICS.</h3>
			<div id="infoComics">
				<p id="top"><strong>Cómics subidos </strong> </p> 
					<label id="respuestaSubidos"><%= listaSubidos %></label>
				<p><strong>Cómics favoritos </strong> </p> 
					<label id="respuestaFavoritos"></label>
				<input type="button" value="SUBIR CÓMIC" id="subirComic">
			</div>
		</section>

		<section id="sobreMi">
			<h3>SOBRE MÍ.</h3>
			<div id="infoSobremi">
				<p>Mis gustos, aficiones, intereses, cómics favoritos, estilos...</p>
				<textarea cols="91" rows="4" id="textoSobremi" spellcheck="true">Escribe aquí una descripción sobre ti. </textarea>
				<input type="button" value="Guardar" id="guardar">
			</div>
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
