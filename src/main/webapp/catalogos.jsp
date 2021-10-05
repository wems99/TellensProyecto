<%--
  Created by IntelliJ IDEA.
  User: allen
  Date: 04/10/2021
  Time: 12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estiloCatalogo.css">
    <link rel="stylesheet" href="css/estiloNav.css">
    <link rel="stylesheet" href="css/estiloFooter.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Unna:ital@1&display=swap" rel="stylesheet">

    <title>Tellen's Cinema</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light fuente fondo">
    <a class="navbar-brand" href="#">Tellen's Cinema</a>
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
                    <a href="MisionVision" method="POST" action="MisionVision" class="dropdown-item" href="#">Mision</a>
                    <a href="MisionVision" method="POST" action="MisionVision" class="dropdown-item" href="#">Vision</a>
                    <div class="dropdown-divider"></div>
                </div>
            </li>
            <li class="nav-item">
                <a href="Visitenos" method="POST" action="Visitenos"class="nav-link" href="#">Visitenos</a>
            </li>
            <li class="nav-item">
                <a href="Contactenos" method="POST" action="Contactenos" class="nav-link" href="#">Contáctenos</a>
            </li>


        </ul>
        <form class="form-inline my-2 ">
            <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
        </form>
    </div>
</nav>

<div id="tarjetas">
    <div class="tarjetas row col-13">
        <div class="col-2">
            <a href="/indexDetalles.html"><img class="imgs" src="img/Lo_que_el_viento_se_llev-833455217-large.jpg"></a>
            <p class="fuenteCatalogo">Precio $500000</p>
        </div>
        <div class="col-2">
            <a href="www.google.com"><img class="imgs" src="img/a few good men.jpg" alt=""></a>
            <p class="fuenteCatalogo">Precio $500000</p>
        </div>
        <div class="col-2">
            <a href="www.google.com"><img class="imgs" src="img/WALLSTREET.jpg" alt=""></a>
            <p class="fuenteCatalogo">Precio $500000</p>
        </div>
        <div class="col-2">
            <a href="www.google.com"><img class="imgs"  src="img/TOP GUN.jpg" alt=" "></a>
            <p class="fuenteCatalogo">Precio $500000</p>
        </div>
        <div class="col-2">
            <a href="www.google.com"><img class="imgs"  src="img/TOP GUN.jpg" alt=" "></a>
            <p class="fuenteCatalogo">Precio $500000</p>
        </div>
    </div>
    <div class="tarjetas row col-13">
        <div class="col-2">
            <a href="www.google.com"><img class="imgs" src="img/Breakfast club portada.jpg"></a>
            <p class="fuenteCatalogo">Precio $500000</p>
        </div>
        <div class="col-2">
            <a href="www.google.com"><img class="imgs" src="img/CRIMSON TIDE.jpg" alt=""></a>
            <p class="fuenteCatalogo">Precio $500000</p>
        </div>
        <div class="col-2">
            <a href="www.google.com"><img class="imgs" src="img/cadena perpetua portada.jpg" alt=""></a>
            <p class="fuenteCatalogo">Precio $500000</p>
        </div>
        <div class="col-2">
            <a href="www.google.com"><img class="imgs"  src="img/GREAT ESCAPE.jpg" alt=" "></a>
            <p class="fuenteCatalogo">Precio $500000</p>
        </div>
        <div class="col-2">
            <a href="www.google.com"><img class="imgs"  src="img/GREAT ESCAPE.jpg" alt=" "></a>
            <p class="fuenteCatalogo">Precio $500000</p>
        </div>
    </div>
</div>
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
</body>
</html>
