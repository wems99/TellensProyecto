<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.example.tellensproyecto.utils.Conexion" %>
<%@ page import="com.example.tellensproyecto.controllers.ControladorUsuario" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ControladorUsuario controladorUsuario = new ControladorUsuario();

%>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <title>JSP Page</title>
</head>
<body>
<%
    Connection con = Conexion.getConnection();
    PreparedStatement ps;
    ResultSet rs;
    int id=Integer.parseInt(request.getParameter("id"));
    ps=con.prepareStatement("select * from usuario where id="+id);
    rs=ps.executeQuery();
    while(rs.next()){
%>
<div class="container">
    <h1>Modificar Registro</h1>
    <hr>
    <form action="" method="post" class="form-control" style="width: 500px; height: 400px">
        ID:
        <input type="text" readonly="" class="form-control" value="<%= rs.getInt("id")%>"/>
        Nombre:
        <input type="text" name="txtNom" class="form-control" value="<%= rs.getString("nombre")%>"/><br>
        Tipo de usuario:
        <input type="text" name="txtTipo" class="form-control" value="<%= rs.getString("tipoUsuario")%>"/>
        <br>
        <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>

        <a href="index.jsp">Regresar</a>
    </form>
    <%}%>
</div>
</body>
<%
    String nom, tipo;
    tipo=request.getParameter("txtTipo");
    nom=request.getParameter("txtNom");
    if(nom!=null && tipo!=null){
        ps=con.prepareStatement("update usuario set nombre='"+nom+"', tipoUsuario='"+tipo+"'where id="+id);
        ps.executeUpdate();
        response.sendRedirect("MantenimientoUsuario.jsp");
    } else if(nom != null ){
        ps=con.prepareStatement("update usuario set nombre='"+nom +"'where id="+id);
        ps.executeUpdate();
        response.sendRedirect("MantenimientoUsuario.jsp");
    }else if(tipo != null){
        ps=con.prepareStatement("update usuario set tipoUsuario='"+tipo +"'where id="+id);
        ps.executeUpdate();
        response.sendRedirect("MantenimientoUsuario.jsp");
    }
%>
</html>