<%--
  Created by IntelliJ IDEA.
  User: allen
  Date: 09/10/2021
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estiloHome.css">
    <link rel="stylesheet" href="css/estiloNav.css">
    <link rel="stylesheet" href="css/estiloFooter.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Unna:ital@1&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/estiloDetalleJSP.css">
    <title>Tellen's Cinema</title>
</head>
<body>

<!--nav bar-->

<nav class="navbar navbar-expand-lg navbar-light bg-light fuente fondo">
    <img id="logo" src="img/logo.png" alt="">
    <a class="navbar-brand fuente" href="#">Tellen's Cinema</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ">
            <li class="nav-item active">
                <a href="Inicio" method="POST" action="Inicio" class="nav-link" href="#">Inicio<span class="sr-only"></span></a>
            </li>
            <li class="nav-item">
                <a href="Catalogo" method="POST" action="Catalogo" class="nav-link" href="#">Catálogo</a>
            </li>
            <li class="nav-item">
                <a href="Historia" method="POST" action="Historia" class="nav-link" href="#">Nuestra historia</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Misión y visión
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a href="Mision" method="POST" action="Mision" class="dropdown-item" href="#">Mision</a>
                    <a href="Vision" method="POST" action="Vision" class="dropdown-item" href="#">Vision</a>
                    <div class="dropdown-divider"></div>
                </div>
            </li>
            <li class="nav-item">
                <a href="Visitenos" method="POST" action="Visitenos" class="nav-link" href="#">Visitenos</a>
            </li>
            <li class="nav-item">
                <a href="Contactenos" method="POST" action="Contactenos" class="nav-link" href="#">Contáctenos</a>
            </li>
        
        
        </ul>
        <form id="busca" class="form-inline my-2 ">
            <input id="buscar" class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
            <a href="" class="fas fa-search"></a>
            <button class="btn btn-outline-success my-2 my-sm-0" type="button">Registrarse</button>
            <button class="btn btn-outline-success my-2 my-sm-0" type="button">Ingresar</button>
        
        </form>
    </div>
</nav>

<!--cotent movie-->

<div id="linea"></div>
<h1 class="fuente">A Few Good Man</h1>
<div id="linea"></div>
<div id="detalles" class="flexContainer">
    <div class="principal">
        <h2 class="fuente">Sipnosis</h2>
        <p id="sipnosis" class="fuente"> La película está ambientada en 1995 (a partir de varias referencias que se hacen en la historia)
            durante un periodo de inestabilidad en Rusia. En Rusia ha surgido un grupo rebelde ultranacionalista ha tomado el control de una instalación
            de misiles nucleares y amenaza con enviar misiles atómicos si los estadounidenses o el gobierno ruso intenta enfrentarse a ellos....</p>
    
    </div>
    <div id="reparto" class="secundario">
        
        <h2 class="fuente"><b>Direccion y Reparto</b> </h2>
        <div class="flexContainer">
            <h3 class="fuente">Dirección:</h3>
            <p class="fuente nombres">Tony Scott </p>
        </div>
        <div class="flexContainer">
            <h3 class="fuente">Reparto:</h3>
            <p class="fuente nombres">Gene Hackman. Denzel Washington. James Gandolfini. Viggo Mortensen.</p>
        </div>
    </div>
</div>
<div id="detalles" class="flexContainer">
    <div class="principal">
        <h2 class="fuente">Premios y nominaciones</h2>
        <p class="fuente">Premio Oscar Mejor montaje, Premio Oscar Mejor edicion de sonido, Premio Oscar Mjor sonido</p>
    </div>
    <div id="premio" class="secundario">
        <h2 class="fuente">Audios y subtitulos</h2>
        <div class="flexContainer">
            <h3 class="fuente">Idiomas:</h3>
            <p class="fuente nombres">Ingles, español.</p>
        </div>
        <div class="flexContainer">
            <h3 class="fuente">Subtitulos:</h3>
            <p class="fuente nombres">Español, ingles.</p>
        </div>
    </div>
</div>
<!--footer-->
<footer id="footer">
    <div id="cuadrosFooter">
        <p id="primerCuadro" class="fuente"><a href="">Preguntas frecuentes</a></p>
        <p class="fuente"><a href="">Contacto</a></p>
        <p class="fuente"> <a href="">Canjear código</a></p>
        <p class="fuente"> <a href="">Aviso legal</a></p>
        <p class="fuente"><a href="">Prensa</a></p>
    </div>
    <div id="iconos">
        <i class="fab fa-facebook-square icono"></i>
        <i class="fab fa-instagram icono"></i>
        <i class="fab fa-twitter icono"></i>
        <i class="fab fa-pinterest-square icono"></i>
        <i class="fab fa-invision icono"></i>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js " integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN " crossorigin="anonymous "></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js " integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/ " crossorigin="anonymous "></script>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="js/funtion.js "></script>
</html>