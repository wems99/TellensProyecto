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
                <a href="Visitenos" method="POST" action="Visitenos" class="nav-link" href="#">Visitenos</a>
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

<p id="linea"></p>
<h2 class="fuente">Populares</h2>
<div id="divPopulares">
    <div class="tarjetas ">
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/masCannibal.jpg"></a>
            <div class="une">
                <p class="fuenteCatalogo une" >Precio $45000</p>
                <input type="hidden" id="precioPopu1" class="precios" value="450000" >
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/lomas3KAJpE2OOimXE5Z15LHARbeA0eC.jpg"></a>
            <div class="une">
                <p class="fuenteCatalogo une" >Precio $300000</p>
                <input type="hidden" id="precioPopu2" class="precios" value="300000" >
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href="" onclick="precio();"> </a>
            </div>

        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/lomas71Wlzxbp9FL._SL1500_.jpg" alt=""></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioPopu3">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/lomasMV5BYzUzYjA3OGItODcwNi00NTNhLWJmNzctMjU0MDY4NDhjY2NhXkEyXkFqcGdeQXVyNTE3NDExNDY@._V1_FMjpg_UX1000_.jpg" alt=" "></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioPopu4">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/lomasp5173_p_v13_ad.jpg" alt=" "></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioPopu5">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
    </div>
</div>

<h2 class="fuente">Acción</h2>
<div>
    <div class="tarjetas ">
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/ActionFuga_de_Alcatraz-894311174-large.jpg"></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioAccion1">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/ActionFurorDragon.jpg" alt=""></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioAccion2">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>

        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/ActionStar_Wars_La_Guerra_de_las_Galaxias_poster.jpg" alt=""></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioAccion3">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/ActionSuperman.jpg" alt=" "></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioAccion4">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/ActionVive_y_deja_morir-978898874-large.jpg" alt=" "></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioAccion5">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
    </div>
</div>

<h2 class="fuente">Comedia</h2>
<div id="divComedia">
    <div class="tarjetas ">
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/ComediaAmericanGrafiti19872017.jpg-c_310_420_x-f_jpg-q_x-xxyxx.jpg"></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioComedia1">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/ComediaBandaLoro.jpg"></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioComedia2">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>

        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/ComediaBeetlejuice_el_super_fantasma-121077102-large.jpg" alt=""></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioComedia3">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/ComediaSociosYSabuesos.jpg" alt=" "></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioComedia4">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/ComediaVolver_al_Futuro_II_Poster.jpg" alt=" "></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioComedia5">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
    </div>
</div>

<h2 class="fuente">Terror</h2>
<div>
    <div class="tarjetas ">
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/TerrorAlien.jpg"></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioTerror1">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/TerrorBlackChristmas.png" alt=""></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioTerror2">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>

        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/TerrorElEngendro.jpg" alt=""></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioTerror3">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/TerrorTexasChainsaw.jpg" alt=" "></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioTerror4">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/TerrorTheVelvetVampire.jpg" alt=" "></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioTerror5">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
    </div>
</div>

<h2 class="fuente">Romanticas</h2>
<div>
    <div class="tarjetas ">
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/romanti81fk0NKi84L._SL1500_.jpg"></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioRomantica1">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/romantiA1hx78Yei8L._SY679_.jpg" alt=""></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioRomantica2">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>

        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/romantidda84f5b-a233-477d-a732-4148db56a85a_x365.jpg" alt=""></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioRomantica3">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/romantiposter_originalsize_250X375.jpg" alt=" "></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioRomantica4">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
        </div>
        <div class="col-2">
            <a href="Solicitudes" method="POST" action="Solicitudes"><img class="imgs" src="img/romanti91uS74wouML._SY550_.jpg" alt=" "></a>
            <div class="une">
                <p class="fuenteCatalogo une" id="precioRomantica5">Precio $500000</p>
                <a href="Solicitudes" method="POST" action="Solicitudes" class="fas fa-shopping-cart" href=""> </a>
            </div>
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
<script src="https://code.jquery.com/jquery-2.0.3.js"></script>
<script src="js/funcionCatalogo.js "></script>

</html>