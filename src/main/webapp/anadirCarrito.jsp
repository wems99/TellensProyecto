<%@ page import="com.example.tellensproyecto.entities.Pelicula" %>
<%@ page import="com.example.tellensproyecto.entities.PeliculaDB" %><%--
  Created by IntelliJ IDEA.
  User: teres
  Date: 24/11/2021
  Time: 12:39 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Pelicula p = PeliculaDB.obtenerPelicula(Integer.parseInt(request.getParameter("codigoPelicula")));
%>
<html>
<head>
    <title>Añadir Productos</title>
</head>
<body>
    <h2>Añadir producto al carrito</h2>

<table border="0" align="center" width="1000">
        <form method="post" action="PeliculaServlet">
            <tr rowspan="5">

                <img src="img/<%= p.getImagen()%>" width="140" height="140">
                <th>Código</th>
                <th>
                    <input type="text" name="txtCodigo" value="<%=p.getIdPelicula()%>" readonly></th>
            </tr>
            <tr>
                <th>Nombre</th>
                <th><input type="text" name="txtNombre" value="<%=p.getTitulo()%>" readonly></th>
            </tr>
            <tr>
                <th>Precio</th>
                <th><input type="text" name="txtPrecio" value="<%=p.getPrecio()%>" readonly></th>
            </tr>
            <tr>
                <th>Cantidad</th>
                <th><input type="number" name="txtCant" value="0" min="1"></th>
            </tr>
            <tr colspan="3"><input type="button" value="Añadir" name="btnAñadir">
            </tr>
            <input type="hidden" name="action" value="AnadirCarrito">

        </form>
</table>
</body>
</html>
