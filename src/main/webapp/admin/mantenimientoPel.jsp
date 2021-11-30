<%@ page import="com.example.tellensproyecto.controllers.ControladorPelicula" %>
<%@ page import="com.example.tellensproyecto.controllers.ControladorUsuario" %><%--
  Created by IntelliJ IDEA.
  User: teres
  Date: 29/11/2021
  Time: 04:08 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ControladorPelicula controladorPelicula =new ControladorPelicula();

%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/font-awesome.min.css" rel="stylesheet">
    <link href="../css/main.css" rel="stylesheet">
    <link href="../css/responsive.css" rel="stylesheet">
    <link href="../css/estiloMantPel.css" rel="stylesheet">
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>

   <title>Mantenimiento Películas</title>
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
<section>
    <div class="container">
        <div class="row">
        <h1>Lista de peliculas</h1>
            <div class="col-sm-9 padding-right">
                <div class="features_items">
                    <a href="administrativo.jsp">Regresar</a>
                    <%=controladorPelicula.getPeliculas()%>



                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
