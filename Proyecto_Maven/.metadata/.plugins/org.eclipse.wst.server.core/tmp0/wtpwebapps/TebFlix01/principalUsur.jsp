<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>TebFlix - Plataforma dedicada al mundo de los cómics</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="css/style_principalUsur.css">
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
			<li id="sub1"class="opt"> <a href="categorias.jsp"> Categorías </a>
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
	
	<!-- Introducción -->
	<div id="contenido">
		<section id="intro">
			<h3>Lo que siempre has deseado.</h3>
			<p id="p1">TebFlix es un nuevo portal innovador dedicado al mundo del cómic. Aquí podréis
				conocer a nuevos artistas, estar al día de eventos y novedades y subir vuestro 
				propio contenido con el fin de compartir vuestro talento.</p>
			<p id="p2">Si los cómics son tu pasión...</br>¡este es tu sitio!</p>
		</section>


	<div id="contenido2">
		<!-- Información: no sé qué poner, pero estaría bien meter algo de relleno en medio.-->
		<section id="informacion">
			<h4>Próximos eventos</h4>
			<div class="imagenes" id="info1"> 
				<p class="estilotexto" id="textoinfo1">XVII Salón del cómic en Zaragoza</p>
				<img class="estiloimagen" id="fotoinfo1" src="img/comic_zaragoza.jpg">
				<p class="textoPrueba">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean dapibus, odio et bibendum feugiat, enim dui rutrum ligula illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. .</p>
			</div>
			<div class="imagenes" id="info2">
				<p class="estilotexto" id="textoinfo2">Cómic 37 en Barcelona</p>
				<img class="estiloimagen" id="fotoinfo2" src="img/comic_barcelona.jpg">
				<p class="textoPrueba">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. </p>
			</div>
			<div class="imagenes" id="info3">
				<p class="estilotexto" id="textoinfo3">ComiCON en Madrid</p>
				<img class="estiloimagen" id="fotoinfo3" src="img/feria_comic_madrid.png">
				<p class="textoPrueba">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. </p>
			</div>
		</section>

		<section id="lateral">
			<section id="infoPersonal">
			<p id="cuentaPrin">Cuenta.</p>
			<p><strong> Nombre: </strong></p>
			<p><strong>Nombre de usuario: </strong></p>
			<p><strong>Correo: </strong></p>
		</section>
			<a id="cuentaBoton" href="Navegador"><input type="button" value="Mi perfil" id="suscrip2"> </a>
		</section>

		<section id="comics">
			<h4>Últimos cómics subidos</h4>
		</section>

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

</body>
	
</html>