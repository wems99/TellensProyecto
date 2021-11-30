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
    ControladorUsuario controladorUsuario =new ControladorUsuario();

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
    <link href="../css/estiloMantUsu.css" rel="stylesheet">
    <link href="../css/responsive.css" rel="stylesheet">
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>

    <title>Mantenimiento Usuario</title>
</head>
<body>
<section>
    <div class="container">
        <div class="row">

            <div class="col-sm-9 padding-right">
                <div class="features_items">
                    <h2 class="title text-center">Usuario</h2>
                    <a href="administrativo.jsp">Regresar</a>
                    <%=controladorUsuario.getUsuarios()%>

                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
