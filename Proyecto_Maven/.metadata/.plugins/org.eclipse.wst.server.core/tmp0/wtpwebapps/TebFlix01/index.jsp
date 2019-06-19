<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<!-- P�gina de inicio sin suscripci�n -->
<html>

<head>
    <title>TebFlix - Plataforma dedicada al mundo de los c�mics</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/scriptM.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Gugi|PT+Sans" rel="stylesheet">
    <!--fuente-->
    <link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Source+Code+Pro" rel="stylesheet">
</head>

<body>

    <!-- Cabecera -->
    <header>
        <div id="titulo">
            <h1 class="titulos"><a class="titulos" href="#">TebFlix</a></h1>
            <h2 class="titulos">Tu Netfix de comics</h2>
            <div id="redes">
                <a href="https://es-es.facebook.com/" target="_blank"> <img src="./img/facebookblanco32.png" id="facebook"> </a>
                <a href="https://www.youtube.com/" target="_blank"> <img src="./img/youtubeblanco32.png" id="youtube"> </a>
                <a href="https://twitter.com/?lang=es/" target="_blank"> <img src="./img/twitterblanco32.png" id="twitter"> </a>
                <a href="https://www.instagram.com/?hl=es/" target="_blank"> <img src="./img/instagramblanco32.png" id="instagram"> </a>
            </div>
            <input type="button" value="Iniciar sesi�n" id="inisesion">
        </div>
    </header>

    <!-- Men� -->
    <nav id="menu">
        <ul id="menu1" class="nav">
            <li> <a href="#"> Inicio </a></li>
            <li id="sub1"> <a> Categor�as </a>
                <ul id="sub11">
                    <li href="" id="subini">
                        <a href=""></a> > Acci�n </a>
                    </li>
                    <li href=""> <a href=""> > Ciencia Ficci�n </a></li>
                    <li href=""> <a href=""> > Detectives </a></li>
                    <li href=""> <a href=""> > Fantas�a </a></li>
                </ul>
            </li>
            <li href=""> <a href=""> Noticias </a></li>
            <li href=""> <a href=""> Mejores comics del mes </a></li>
            <li id="final" href=""> <a href=""> Con�cenos </a></li>
        </ul>
    </nav>

    <!-- Introducci�n -->
    <div id="contenidol">

        <section>

            <span id="title-pdf"></span>
            <nav class="nav1">
                <ul class="imgs">

                    <li class="categoria" onclick="mostrarLista(this)" data-lista="novedades">Novedades
                        <ul class="pdfs">

                        </ul>
                    </li>
                    <li class="categoria" onclick="mostrarLista(this)" data-lista="accion">accion
                        <ul class="pdfs">

                        </ul>
                    </li>
                    <li class="categoria" onclick="mostrarLista(this)" data-lista="ciencia">Ciencia ficci�n
                        <ul class="pdfs">

                        </ul>
                    </li>
                </ul>

            </nav>
            <div id="margen">
                <div id="imgD">
                    <div class="lista novedades">
                        <div class="comic">
                            <img class="img2" src="imagenes/detective_pikachu.jpg" data-pdf="ejemplo_esp" />
                        </div>
                        <div class="comic">
                            <img class="img2" src="imagenes/goku.jpg" data-pdf="pdf_ejemplo4" />
                        </div>
                        
                    </div>
                    <div class="lista accion">
                        <div class="comic">
                            <img class="img2" src="imagenes/baby_groot.jpg" data-pdf="ejemplo_esp" />
                        </div>
                        <div class="comic">
                            <img class="img2" src="imagenes/avengers_3.jpg" data-pdf="pdf_ejemplo4" />
                        </div>
                    </div>
                    <div class="lista ciencia">
                        <div class="comic">
                            <img class="img2" src="imagenes/deadpool_vs_thanos.jpg" data-pdf="ejemplo_esp" />
                        </div>
                        <div class="comic">
                            <img class="img2" src="imagenes/dragon_ball_super.jpg" data-pdf="pdf_ejemplo4" />
                        </div>
                    </div>
                </div>
            </div>
            <div id="pdfs2">
                <embed id="pdf" height="100%" width="70%" name="embed_content" type="application/pdf" />
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

    <script type="text/javascript" src="js/script.js"></script>

</body>

</html>

