<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.tellensproyecto.entities.Pelicula" %>
<%@ page import="com.example.tellensproyecto.entities.PeliculaDB" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <link rel="stylesheet" href="css/estiloFooter.css">
    <title>Inicio</title>
</head>
<body>
<h1>HOLA</h1>
<table border="0" width="1000" align="center">
    <tr bgcolor="#87ceeb">
        <th><a href="index.jsp">HOLA</a></th>
        <th><a href="index.jsp"> Registra productos</a></th>
        <th><a href="index.jsp">Registra Venta</a> </th>
        <th><a methods="POST" action="LogOutServlet">Cerrar sesión</a></th>
        <th width="200"></th>
    </tr>
</table>
<div>

    <%
        PeliculaDB peliculaDB = new PeliculaDB();
        ArrayList<Pelicula> lista = peliculaDB.getAllProductos();
        int salto = 0;
        for(Pelicula p : lista){
    %>

    <img src="img/<%=p.getImagen()%>" width="140" height="140"><p>
    <%=p.getTitulo()%><br>
    <%=p.getPrecio()%></p>
    <a href="">Añadir</a>
    <a href="">Modificar</a>
    <%
        }
    %>
</div>
</body>
</html>