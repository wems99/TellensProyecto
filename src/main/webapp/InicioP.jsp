<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.tellensproyecto.entities.Pelicula" %>
<%@ page import="com.example.tellensproyecto.entities.PeliculaDB" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <link rel="stylesheet" href="css/estiloFooter.css">
    <link rel="stylesheet" href="css/estiloNav.css">
    <link rel="stylesheet" href="css/estiloCatalog.css">
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <title>Inicio</title>
</head>
<body>
<div id="nav-placeholder">
</div>

<script>
    $(function(){
        $("#nav-placeholder").load("Nav.jsp");
    });
</script>
<div>
<table id="tabla" border="0" align="center" width="1000">
    <%
        PeliculaDB peliculaDB = new PeliculaDB();
        ArrayList<Pelicula> lista = peliculaDB.getAllProductos();
        int salto = 0;
        for(Pelicula p : lista){
    %>

   <th><img src="img/<%=p.getImagen()%>" width="140" height="140"><p>
    <%=p.getTitulo()%><br>
    <%=p.getPrecio()%></p>
    <a href="anadirCarrito.jsp?id=<%=p.getIdPelicula()%>">Añadir</a>
    <a href="">Modificar</a>
   </th>
    <%
            salto++;
            if(salto == 3){
    %>
            <tr>
    <%
            salto=0;
            }
        }
    %>
</table>

</div>
</body>
</html>