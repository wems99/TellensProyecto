<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*"%>
<%@ page import="com.example.tellensproyecto.utils.Conexion" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
<%

    Connection con;
    con= Conexion.getConnection();
    PreparedStatement ps;
    int id=Integer.parseInt(request.getParameter("id"));
    ps=con.prepareStatement("delete from pelicula where codigoPelicula="+id);
    ps.executeUpdate();
    response.sendRedirect("mantenimientoPel.jsp");

%>
<p>h</p>
</body>
</html>
