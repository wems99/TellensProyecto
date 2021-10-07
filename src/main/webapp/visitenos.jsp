<%--
  Created by IntelliJ IDEA.
  User: allen
  Date: 04/10/2021
  Time: 12:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="css/visitenos.css">
    <link rel="stylesheet" href="css/estiloNav.css">
    <link rel="stylesheet" href="css/estiloFooter.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Unna:ital@1&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.css" />
    <script src="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.js"></script>
    <title>Tellen's Cinema</title>
    <style>
        .map{width:400px;height: 300px}
    </style>
</head>
<body>

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
        <form id="busca" class="form-inline my-2 ">
            <input id="buscar" class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
            <a href="" class="fas fa-search"></a>
            <button class="btn btn-outline-success my-2 my-sm-0" type="button">Registrarse</button>
            <button class="btn btn-outline-success my-2 my-sm-0" type="button">Ingresar</button>

        </form>
    </div>
</nav>
<h1>About Us</h1>
<div class="visitenos-wrapper">
    
    <!--grupo direccion-->
    <div class="informacion-content">
        <h2>Direccion</h2>
        <p>Nos encontramos en Heredia, 200mts oeste del BK contiguo entrada Norte Una </p>
    </div>
    
    <!--grupo telefono-->
    <div class="informacion-content">
        <h2>Telefonos</h2>
        <i class="fab fa-whatsapp"></i>
        <p>(506) 89845122 </p>
        <p>(506) 83865333 </p>
    </div>
    
    <!--grupo correo-->
    <div class="informacion-content">
        <h2>Correos</h2>
        <p>allen.blanco.contreras@est.una.ac.cr</p>
        <p>tere.solano.solis@est.una.ac.cr</p>
    </div>
    
    <!--Grupo fax-->
    <div class="informacion-content">
        <h2>Fax</h2>
        <p>964 778 243</p>
    </div>
    
</div>

<!--geolocalizacion-->
<div class="map-container">
    <div class="map" id="map"></div>
    
    <script>

        var coordenadas_content = [9.99745,-84.11136];
        var zoom_incial = 17;

        var map = L.map('map').setView(coordenadas_content, zoom_incial);

        L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'}).addTo(map);

        var popup = L.popup({closeButton: false});

        popup.setLatLng(coordenadas_content);

        popup.setContent('<p><strong>Tellens</strong></p>' + '<strong>Telefono:</strong> 89845122 <br>'
            + '<strong>Horario:</strong> de 10am a 8pm <br>' + '<strong>E-mail:</strong> allen.blanco.contreras@est.una.ac.cr <br>'
            + '<strong>Direccion postal:</strong><br>' + 'salida norte, Padre Royo<br>' + '86-3000-UNA');

        popup.openOn(map);
    </script>
</div>

<!--termina geolocalizacion-->

<!--footer comienza-->
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
<!--footer termina-->

</body>
</html>
