<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

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

    <title>Tellen's Cinema</title>
</head>

<body>
<header>
    <img src="" alt="">
</header>
<nav class="navbar navbar-expand-lg navbar-light bg-light fuente fondo">
    <a class="navbar-brand" href="#">Tellen's Cinema</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ">
            <li class="nav-item active">
                <a class="nav-link" href="#">Inicio<span class="sr-only"></span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Catálogo</a>
            </li>
            <li class="nav-item">
                <a method="POST" action="HelloServlet" class="nav-link" href="#">Nuestra historia</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Misión y visión
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Mision</a>
                    <a class="dropdown-item" href="#">Vision</a>
                    <div class="dropdown-divider"></div>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Visitenos</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Contáctenos</a>
            </li>


        </ul>
        <form class="form-inline my-2 ">
            <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
        </form>
    </div>
</nav>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <div class="carousel-inner">

        <div class="item">
            <img class="imgs" src="img/godfather banner.jpg" alt="Chicago" style="width:100%;">
        </div>
        <div class="item active">
            <img class="imgs" src="img/Grease-1978-1-1200x675.jpg" alt="Los Angeles" style="width:100%;">
        </div>

        <div class="item">
            <img class="imgs" src="img/goodfellas banner.jpg" alt="New york" style="width:100%;">
        </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<aside method="POST" action="Home" id="sctPelis">
    <div></div>
    <div ></div>
    <h2 class="fuente">Lo más buscado</h2>
    <div ></div>
    <div id="lineaCentro"></div>
    <div id="tarjetas">
    <div class="tarjetas row col-13">
        <div class="col-3">
            <a href="/indexDetalles.html"><img class="imgs" src="img/Lo_que_el_viento_se_llev-833455217-large.jpg"></a>
        </div>
        <div class="col-3">
            <a href="www.google.com"><img class="imgs" src="img/a few good men.jpg" alt=""></a>

        </div>
        <div class="col-3">
            <a href="www.google.com"><img class="imgs" src="img/WALLSTREET.jpg" alt=""></a>

        </div>
        <div class="col-3">
            <a href="www.google.com"><img class="imgs"  src="img/TOP GUN.jpg" alt=" "></a>

        </div>
    </div>
    <div class="tarjetas row col-13">
        <div class="col-3">
            <a href="www.google.com"><img class="imgs" src="img/Breakfast club portada.jpg"></a>
        </div>
        <div class="col-3">
            <a href="www.google.com"><img class="imgs" src="img/CRIMSON TIDE.jpg" alt=""></a>

        </div>
        <div class="col-3">
            <a href="www.google.com"><img class="imgs" src="img/cadena perpetua portada.jpg" alt=""></a>

        </div>
        <div class="col-3">
            <a href="www.google.com"><img class="imgs"  src="img/GREAT ESCAPE.jpg" alt=" "></a>

        </div>
    </div>
    </div>
</aside>

<div id="contVideo">
    <div class="distancia">
        <video width="100%" height="240" controls>
            <source src="video/y2mate.com - Gone With The Wind  75th Anniversary Trailer  Warner Bros Entertainment_480p.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
    </div>
    <div class="distancia">
        <video width="100%" height="240" controls>
            <source src="video/GREASE _ Trailer _ Paramount Movies.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
    </div>
    <div class="distancia">
        <video width="100%" height="240" controls>
            <source src="video/y2mate.com - The Breakfast Club Official Trailer 1  Paul Gleason Movie 1985 HD_360p.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
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

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js " integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN " crossorigin="anonymous "></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js " integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/ " crossorigin="anonymous "></script>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="js/funtion.js "></script>

</html>