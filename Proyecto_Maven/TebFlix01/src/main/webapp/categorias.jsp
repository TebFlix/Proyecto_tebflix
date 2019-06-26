<%@page import="javax.persistence.EntityNotFoundException"%>
<%@page import="org.eclipse.persistence.internal.jpa.ExceptionFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import ="java.util.List" 
 		import="javax.persistence.EntityManager"
 		import="javax.persistence.EntityManagerFactory"
 		import="javax.persistence.Persistence"
 		import= "javax.persistence.TypedQuery"
 		import="model.*"%>
 		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- P�gina de inicio sin suscripci�n -->
<!DOCTYPE html>
<html>

<head>
    <title>TebFlix - Plataforma dedicada al mundo de los c�mics</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="css/style_comics.css">
    <script src="js/jquery-3.4.0.min.js"></script>
    <script src="js/jQueryRotate.js"></script>
    <script src="js/script_comics1.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Gugi|PT+Sans" rel="stylesheet">
    <!--fuente-->
    <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Source+Code+Pro" rel="stylesheet">
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
			<input type="button" value="Iniciar sesi�n" id="inisesion">
			<input type="button" value="Reg�strate" id="botonRegis">
		</div>
	</header>

	<!-- Men� -->
	<nav id="menu">
		<ul id="menu1" class="nav">
			<li> <a href="#"> Inicio </a></li>
			<li id="sub1"class="opt"> <a> Categor�as </a>
				<ul id="sub11">
					<li id="subini"> <a href=""> > Acci�n </a></li>
					<li > <a href=""> > Ciencia Ficci�n </a></li>
					<li > <a href=""> > Detectives </a></li>
					<li > <a href=""> > Fantas�a </a></li>
				</ul>
			</li>
			<li > <a href=""> Eventos </a></li>
			<li > <a href=""> Tiendas de c�mics </a></li>
			<li id="final"> <a href=""> Con�cenos </a></li>
		</ul>
	</nav>
    <!-- Introducci�n -->
    
    <%
 
	String mensaje ="", nombComic="" ;
    List<Comic> co = null;
  
	try{
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("TebFlix01");
		EntityManager em = factory.createEntityManager();
		TypedQuery<Comic> query = em.createNamedQuery("Comic.findAll", Comic.class);
		co = query.getResultList();
		System.out.println("se ha conectado");
		

		
	}catch(Exception e){
		mensaje="Ha ocurrido un error";
		nombComic="null";
		System.out.println("No se ha conectado a la base de datos");
	}
    
    %>
    
    <div id="contenidol">

        <section>

            <span id="title-pdf"></span>
            <nav class="nav1">
                <ul class="imgs">

                    <li class="categoria" onclick="mostrarLista(this)" data-lista="novedades">Novedades
                        
                    </li>
                    <li class="categoria" onclick="mostrarLista(this)" data-lista="accion">Acci�n
                        
                    </li>
                    <li class="categoria" onclick="mostrarLista(this)" data-lista="ciencia">Ciencia ficci�n
                        
                    </li>
                    <li class="categoria" onclick="mostrarLista(this)" data-lista="policiaca">Polic�aca
                        
                    </li>
                    <li class="categoria" onclick="mostrarLista(this)" data-lista="fantasia">Fantas�a
                        
                    </li>
                </ul>
            </nav>
            <div id="margen">
                <div id="imgD">
            	
            	
            	<div class="lista accion"> 
            	<% for(Comic c:co){%>
            	 	<%if(c.getCategoria().equals("accion")){%>
                        <div class="comic">
                            <img class="img2" src="imagenes/<%=c.getImagen()%>.jpg" data-pdf="<%=c.getPdf()%>"/>
                        </div>
                        
            	
            	<%} %>
            	<%} %>
            	
                    </div>
            
            	<div class="lista novedades"> 
            	<% for(Comic c:co){%>
            	 	<%if(c.getCategoria().equals("novedades")){%>
                        <div class="comic">
                            <img class="img2" src="imagenes/<%=c.getImagen()%>.jpg" data-pdf="<%=c.getPdf()%>"/>
                        </div>
                        
            	
            	<%} %>
            	<%} %>
                    </div>
            	<div class="lista ciencia"> 
            	<% for(Comic c:co){%>
            	 	<%if(c.getCategoria().equals("ciencia")){%>
                        <div class="comic">
                            <img class="img2" src="imagenes/<%=c.getImagen()%>.jpg" data-pdf="<%=c.getPdf()%>"/>
                        </div>
                        
            	
            	<%} %>
            	<%} %>
                    </div>
                  <div class="lista policiaca"> 
            	<% for(Comic c:co){%>
            	 	<%if(c.getCategoria().equals("policiaca")){%>
                        <div class="comic">
                            <img class="img2" src="imagenes/<%=c.getImagen()%>.jpg" data-pdf="<%=c.getPdf()%>"/>
                        </div>
                        
            	
            	<%} %>
            	<%} %>
                    </div>
                    <div class="lista fantasia"> 
            	<% for(Comic c:co){%>
            	 	<%if(c.getCategoria().equals("fantasia")){%>
                        <div class="comic">
                            <img class="img2" src="imagenes/<%=c.getImagen()%>.jpg" data-pdf="<%=c.getPdf()%>"/>
                        </div>
                        
            	
            	<%} %>
            	<%} %>
                    </div>
            	
                </div>
            </div>
            <div id="pdfs2">
                <embed id="pdf" height="100%" width="70%" type="application/pdf" />
            </div>
        </section>

    </div>

    <!-- Footer -->
    <footer id="pie">
        <div>
            <a href="https://es-es.facebook.com/" target="_blank"> <img src="./img/facebookblanco32.png" id="facebook"> </a>
            <a href="https://www.youtube.com/" target="_blank"> <img src="./img/youtubeblanco32.png" id="youtube"> </a>
            <a href="https://twitter.com/?lang=es/" target="_blank"> <img src="./img/twitterblanco32.png" id="twitter"> </a>
            <a href="https://www.instagram.com/?hl=es/" target="_blank"> <img src="./img/instagramblanco32.png" id="instagram"> </a>
        </div>
        <ul>
            <li><a class="enl" href="#">Privacidad.</a></li>
            <li><a class="enl" href="#">T�rminos y condiciones.</a></li>
        </ul>
        <p id="copy">Copyright 2019 �. TebFlix.</p>
    </footer>

    <script type="text/javascript" src="js/script_comics.js"></script>

</body>

</html>