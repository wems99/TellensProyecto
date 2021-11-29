<%--
  Created by IntelliJ IDEA.
  User: teres
  Date: 21/11/2021
  Time: 04:45 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estiloformModif.css">
    <link rel="stylesheet" href="css/estiloNav.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Unna:ital@1&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <title>Mantenimiento de película</title>
</head>

<body>

<nav>

    <div id="nav-placeholder">
    </div>
    <script>
        $(function(){
            $("#nav-placeholder").load("Nav.jsp");
        });
    </script>
</nav>
<div class="form">
    <h1>
        Rellene los campos que desea cambiar
    </h1>
    <form id="contactform">
        <p class="contact"><label for="titulo">Título</label></p>
        <input id="titulo" name="titulo" placeholder="Titulo de la película" tabindex="1" type="text">

        <p class="contact"><label for="descripcion">Descripcion</label></p>
        <input id="descripcion" name="descripcion" placeholder="Descripcion" type="text">

        <p class="contact"><label for="genero">Género</label></p>
        <input id="genero" name="genero" placeholder="Género" type="text">

        <p class="contact"><label for="director">Director</label></p>
        <input id="director" name="director" placeholder="Director" type="text">
        <p class="contact"><label for="anno">Año</label></p>
        <input id="anno" name="anno" placeholder="Año" type="text">

        <input class="buttom" name="submit" id="submit" tabindex="5" value="Guardar cambios" type="submit">
    </form>
</div>

</body>

</html>