<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="com.example.tellensproyecto.utils.Conexion" %>
<%@ page import="java.time.LocalDateTime" %><%--
  Created by IntelliJ IDEA.
  User: teres
  Date: 29/11/2021
  Time: 07:06 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <title>JSP Page</title>
</head>
<body>
<div class="container">
    <h1>Agregar Pelicula</h1>
    <hr>
    <form action="" method="post" class="form-control" style="width: 500px; height: 400px">
        Titulo:
        <input type="text" name="txtTitulo" placeholder="Titulo" class="form-control"/>
        Descripción:
        <input type="text" name="txtDes" placeholder="Descripción" class="form-control"/>
        Género:
        <input type="text" name="txtGenero" placeholder="Genero" class="form-control"/>
        Director:
        <input type="text" name="txtDirector" placeholder="Director" class="form-control"/>
        Año:
        <input type="text" name="txtAnno" placeholder="Año" class="form-control"/>
       Precio:
        <input type="text" name="txtPrecio" placeholder="Precio" class="form-control"/>
        Imagen:
        <input type="text" name="txtImagen" placeholder="Director" class="form-control"/>
        <br>
        <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>
        <a href="administrativo.jsp">Regresar</a>
    </form>
</div>
</body>
</html>
<%
    Connection con;
    con = Conexion.getConnection();
    PreparedStatement ps;
    String tit,des,gen,dir,an,pre,img;
    tit= request.getParameter("txtTitulo");
    des = request.getParameter("txtDes");
    gen=request.getParameter("txtGenero");
    dir =request.getParameter("txtDirector");
    an=request.getParameter("txtAnno");
    pre=request.getParameter("txtPrecio");
    img=request.getParameter("txtImagen");

    if(tit!=null && des!=null && gen!=null && dir!=null && an!=null && pre!=null && img!=null) {
        ps=con.prepareStatement("insert into pelicula(titulo, descripcion,genero,director,anno,precio,imagen) values('"+tit+"','"+des+"','"+gen+"','"+dir+"','"+an+"','"+pre+"','"+img+"')");
        ps.executeUpdate();
        response.sendRedirect("mantenimientoPel.jsp");
    }
%>
