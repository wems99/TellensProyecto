
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="com.example.tellensproyecto.utils.Conexion" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
    ps=con.prepareStatement("select * from pelicula where codigoPelicula="+id);
    rs=ps.executeQuery();
    while(rs.next()){
%>
<div class="container">
    <h1>Modificar Registro</h1>
    <hr>
    <form action="" method="post" class="form-control" style="width: 500px; height: 400px">

        ID:
        <input type="text" name="txtID" readonly="" class="form-control" value="<%=rs.getInt("codigoPelicula")%>"/>
        Nombre:
        <input type="text" name="txtTit" class="form-control" value="<%=rs.getString("titulo")%>"/><br>
        Descripción:
        <input type="text" name="txtDes" class="form-control" value="<%=rs.getString("descripcion")%>"/>
        Género:
        <input type="text" name="txtGen" class="form-control" value="<%=rs.getString("genero")%>"/>
        Director:
        <input id="director" name="txtdirector" placeholder="Director" type="text" class="form-control" value="<%= rs.getString("director")%>">
        Año:
        <input id="anno" name="txtAnno" placeholder="Año" type="text" class="form-control" value="<%= rs.getString("anno")%>">
        Precio:
        <input id="precio" name="txtprecio" placeholder="Precio" class="form-control" type="number" value="<%= rs.getString("precio")%>">
        <br>
        <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>

        <a href="index.jsp">Regresar</a>
    </form>
    <%}%>
</div>
</body>
<%
    String ide,titu,descri,genero,director,precio,anno;
    ide=request.getParameter("txtID");
    titu=request.getParameter("txtTit");
    descri= request.getParameter("txtDes");
    genero= request.getParameter("txtGen");
    director= request.getParameter("txtdirector");
    anno= request.getParameter("txtAnno");
    precio= request.getParameter("txtprecio");
    if(titu!=null && descri!=null && genero!=null && director!=null && anno!=null && precio!=null) {
        ps = con.prepareStatement("update pelicula set titulo='" + titu + "', descripcion='" + descri + "',genero='" + genero + "',director='" + director + "',anno='" + anno + "',precio='" + precio + "'where codigoPelicula=" + id);
        ps.executeUpdate();
        response.sendRedirect("mantenimientoPel.jsp");
    }else if(titu != null ) {
        ps = con.prepareStatement("update pelicula set titulo='" + titu + "'where codigoPelicula=" + id);
        ps.executeUpdate();
        response.sendRedirect("mantenimientoPel.jsp");
    }else if(descri != null ) {
        ps = con.prepareStatement("update pelicula set descripcion='" + descri + "'where codigoPelicula=" + id);
        ps.executeUpdate();
        response.sendRedirect("mantenimientoPel.jsp");
    }

%>
</html>