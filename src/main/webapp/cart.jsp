<%--
  Created by IntelliJ IDEA.
  User: teres
  Date: 26/11/2021
  Time: 04:31 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.tellensproyecto.entities.Articulo" %>
<%@ page import="com.example.tellensproyecto.controllers.ControladorPelicula" %>
<%@ page import="com.example.tellensproyecto.entities.Pelicula" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    HttpSession sessions= request.getSession(true);
    ArrayList<Articulo> articulos = sessions.getAttribute("carrito") == null ? null : (ArrayList) sessions.getAttribute("carrito");

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Carrito de compras</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/estiloFooter.css" rel="stylesheet">
    <link href="css/estiloNav.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head><!--/head-->

<body>
<nav>
    <div id="nav-placeholder">
    </div>
    <script>
        $(function(){
            $("#nav-placeholder").load("Nav.jsp");
        });
    </script>
</nav>
<section id="cart_items">
    <div class="container">
        <div class="breadcrumbs">

        </div>
        <div class="table-responsive cart_info">
            <table class="table table-condensed">
                <thead>
                <tr class="cart_menu">
                    <td class="image">Pelicula</td>
                    <td class="description"></td>
                    <td class="price">Precio</td>
                    <td class="quantity">Cantidad</td>
                    <td class="total">Total</td>
                    <td></td>
                </tr>
                </thead>
                <tbody>




                <%
                    ControladorPelicula controladorPelicula= new ControladorPelicula();
                    for (Articulo a: articulos){
                        Pelicula pelicula = controladorPelicula.getProducto(a.getIdPelicula());

                %>
                <tr>
                    <td class="cart_product">
                        <a href=""><img src="https://image.tmdb.org/t/p/original/<%=pelicula.getImagen()%>" width="140" height="177.5" alt="" /></a>
                    </td>
                    <td class="cart_description">
                        <h4><a href=""><%=pelicula.getTitulo()%></a></h4>
                        <p>Web ID: <%=pelicula.getIdPelicula()%></p>
                    </td>
                    <td class="cart_price">
                        <p><%=pelicula.getPrecio()%></p>
                    </td>
                    <td class="cart_quantity">
                        <div class="cart_quantity_button">
                            <input class="cart_quantity_input" type="text" name="quantity" value="<%=a.getCantidad()%>" autocomplete="off" size="2">
                        </div>
                    </td>
                    <td class="cart_total">
                        <p class="cart_total_price">₡<%=Math.round(pelicula.getPrecio()* a.getCantidad()*100.0)/100.0%></p>
                    </td>
                    <td class="comprar">
                        <span id="idArticulo" style="display: none"><%=pelicula.getIdPelicula()%></span>
                        <a class="cart_quantity_delete" href="" id="comprar" >Comprar</a>
                    </td>
                </tr>

                <%
                    }
                %>

                </tbody>
            </table>
        </div>
        <a href="javascript:window.history.go(-2)">Seguir comprando</a>
    </div>
</section> <!--/#cart_items-->
<footer id="footer">
    <div id="cuadrosFooter">
        <p id="primerCuadro" class="fuente"><a href="">Preguntas frecuentes</a></p>
        <p class="fuente"><a href="">Contacto</a></p>
        <p class="fuente"> <a href="">Canjear código</a></p>
        <p class="fuente"> <a href="">Aviso legal</a></p>
        <p class="fuente"><a href="">Prensa</a></p>
    </div>
    <div id="iconos">
        <i class="fab fa-facebook-square icono"></i>
        <i class="fab fa-instagram icono"></i>
        <i class="fab fa-twitter icono"></i>
        <i class="fab fa-pinterest-square icono"></i>
        <i class="fab fa-invision icono"></i>
    </div>
</footer>





<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>
<script src="js/carrito.js"></script>
</body>
</html>