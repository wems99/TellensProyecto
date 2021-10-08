<%--
  Created by IntelliJ IDEA.
  User: teres
  Date: 7/10/2021
  Time: 08:11 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP - Resultados del formulario</title>

</head>
<body>
<h1>Datos del formulario</h1>
<div><%= request.getAttribute("name") %></div>
<div><%= request.getAttribute("mail") %></div>
<div><%= request.getAttribute("tel") %></div>
<div><%= request.getAttribute("cantidad") %></div>
<div><%= request.getAttribute("tarjeta") %></div>
<div><%= request.getAttribute("message") %></div>
<div><%= request.getAttribute("flexCheckDefault") %></div>
<div><%= request.getAttribute("flexCheckDefault1") %></div>
<div><%= request.getAttribute("flexCheckDefault2") %></div>
</body>
</html>
