<%--
  Created by IntelliJ IDEA.
  User: teres
  Date: 29/11/2021
  Time: 02:12 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.awt.TrayIcon.MessageType"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="com.example.tellensproyecto.utils.Conexion" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <title>JSP Page</title>
</head>
<body>
<div class="container">
    <h1>Agregar Registro</h1>
    <hr>
    <form action="" method="post" class="form-control" style="width: 500px; height: 400px">
        Correo:
        <input type="email" name="txtNomUsu" placeholder="Correo" class="form-control"/>
        Tipo de usuario:
        1- Administrador 0- Usuario:
        <input type="text" name="txtTipo" placeholder="Tipo Usuario" class="form-control"/>
        Contraseña:
        <input type="password" name="txtContra" placeholder="Contraseña" class="form-control"/>
        Nombre de usuario:
        <input type="text" name="txtNom" placeholder="Nombre de usuario" class="form-control"/>
        <br>
        <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>
        <a href="administrativo.jsp">Regresar</a>
    </form>
</div>


</body>
</html>
<%
    //CONECTANOD A LA BASE DE DATOS:
    Connection con;
    con = Conexion.getConnection();
    PreparedStatement ps;
    String correo,nom,contra,tipo;
    LocalDateTime fecha = LocalDateTime.now();
    contra = request.getParameter("txtContra");
    correo=request.getParameter("txtNomUsu");
    tipo =request.getParameter("txtTipo");
    nom=request.getParameter("txtNom");
    if(correo!=null && contra!=null && tipo!=null && nom!=null) {
        ps=con.prepareStatement("insert into usuario(nombreUsuario, fechaCreacion,tipoUsuario,password,nombre,ultimoLogueo) values('"+correo+"','"+fecha+"','"+tipo+"','"+contra+"','"+nom+"','"+fecha+"')");
        ps.executeUpdate();
        response.sendRedirect("MantenimientoUsu.jsp");
    }
%>
