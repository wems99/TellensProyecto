<%--
  Created by IntelliJ IDEA.
  User: teres
  Date: 7/10/2021
  Time: 08:11 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <link rel="stylesheet" href="css/estiloRespuesta.css">
        <link rel="stylesheet" href="css/estiloNav.css">
        <link rel="stylesheet" href="css/estiloFooter.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Unna:ital@1&display=swap" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <title>Tellen's Cinema</title>
    </head>
</head>

<body>
<div  class="contLogOut" >
    <span>Bienvenido ${sessionScope.usuario.nombreUsuario}</span>
    <a class="logOut" href="LogOutServlet">Cerrar sesión</a>
</div>
<nav>

    <div id="nav-placeholder">
    </div>
    <script>
        $(function(){
            $("#nav-placeholder").load("Nav.jsp");
        });
    </script>
</nav>


<div id="datos">
    <h1 class="fuente">Datos del formulario</h1>
    <div>
        <h2 class="fuente ">Nombre </h2>
        <h3 class="fuente">
            <%= request.getAttribute("name") %>
        </h3>
    </div>
    <div>
        <h2 class="fuente ">Correo </h2>
        <h3 class="fuente">
            <%= request.getAttribute("mail") %>
        </h3>
    </div>

    <div>
        <h2 class="fuente ">Telefono </h2>
        <h3 class="fuente">
            <%= request.getAttribute("tel") %>
        </h3>
    </div>
    <div>
        <h2 class="fuente ">Cantidad </h2>
        <h3 class="fuente">
            <%= request.getAttribute("cantidad") %>
        </h3>
    </div>
    <div>
        <h2 class="fuente ">Tarjeta </h2>
        <h3 class="fuente">
            <%= request.getAttribute("tarjeta") %>
        </h3>
    </div>
    <div>
        <h2 class="fuente ">Mensaje </h2>
        <h3 class="fuente">
            <%= request.getAttribute("message") %>
        </h3>
    </div>
    <div>
        <h2 class="fuente ">Precio Total </h2>
        <h3 class="fuente">
            $<%= request.getAttribute("total") %>
        </h3>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</html>
