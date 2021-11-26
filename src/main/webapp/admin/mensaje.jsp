<%--
  Created by IntelliJ IDEA.
  User: teres
  Date: 24/11/2021
  Time: 05:34 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 align="center">
<%
    if(request.getParameter("men")!= null){
        System.out.println(request.getParameter("men"));
    }
%>
</h1><br>
<h2>
    <a href="../index.jsp"> Volver a principal</a>
</h2>
</body>
</html>
