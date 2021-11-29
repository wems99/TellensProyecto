<%--
  Created by IntelliJ IDEA.
  User: teres
  Date: 24/11/2021
  Time: 02:51 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: teres
  Date: 24/11/2021
  Time: 02:48 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estiloMante.css">
    <link rel="stylesheet" href="css/estiloNav.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Unna:ital@1&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <title>Tellen's Cinema</title>
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

<h1> Agregar película</h1>
<form action="registrarPeliculaServlet" method="post">
    <table border="0" width="400" align="center">
        <tr>
            <td>Titulo:</td>
            <td><input type="text" name="txtTitulo"></td>
        </tr>
        <tr>
            <td>Descripción:</td>
            <td><input type="text" name="txtDescripcion"></td>
        </tr>
        <tr>
            <td>Genero:</td>
            <td><input type="text" name="txtGenero"></td>
        </tr>
        <tr>
            <td>Director:</td>
            <td><input type="text" name="txtDirector"></td>
        </tr>
        <tr>
            <td>Año:</td>
            <td><input type="text" name="txtAnno"></td>
        </tr>
        <tr>
            <td>Precio:</td>
            <td><input type="text" name="txtPrecio"></td>
        </tr>
        <tr>
            <td>Imagen:</td>
            <td><input type="text" name="txtImagen"></td>
        </tr>
        <tr>
            <th colspan="2">
                <input type="submit" value="Registrar película" name="boton">
            </th>
        </tr>
    </table>
    <input type="hidden" name="accion" value="insertar">

</form>

</body>
</html>
