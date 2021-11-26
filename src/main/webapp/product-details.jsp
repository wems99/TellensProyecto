<%@ page import="com.example.tellensproyecto.entities.Pelicula" %>
<%@ page import="com.example.tellensproyecto.controllers.ControladorPelicula" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
	int id= Integer.parseInt(request.getParameter("id"));
	Pelicula pelicula = new ControladorPelicula().getProducto(id);

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Product Details | E-Shopper</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/estiloFooter.css" rel="stylesheet">
	<link href="css/estiloNav.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
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

<div  class="contLogOut" style="display:none;" >
	<span>Bienvenido ${sessionScope.usuario.nombreUsuario}</span>
	<a class="logOut" href="../LogOutServlet">Cerrar sesión</a>
</div>
<nav>
	<div id="nav-placeholder">
	</div>
	<script>
		$(function(){
			$("#nav-placeholder").load("Nav.jsp");
		});
	</script>
</nav>
	<section>
		<div class="container">
			<div class="row">

				<div class="col-sm-9 padding-right">
					<div class="product-details"><!--product-details-->
						<div class="col-sm-5">
							<div class="view-product">
								<img src="img/<%=pelicula.getImagen()%>" alt="" />
							</div>


						</div>
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
								<h2><%=pelicula.getTitulo()%></h2>
								<p>Web ID:<%=pelicula.getIdPelicula()%></p>
								<img src="images/product-details/rating.png" alt="" />
								<form action="AgregaCarritoServlet" method="POST">
								<span>
									<span>₡<%=pelicula.getPrecio()%></span>
									<label>Cantidad:</label>
									<input type="text" value="1" id="txtCantidad" name="txtCantidad"/>
									<input type="hidden" value="<%=pelicula.getIdPelicula()%>" name="idPelicula">
									<button type="submit" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Add to cart
									</button>
								</span>
								</form>
								<p><b>Director:</b> <%=pelicula.getDirector()%></p>
								<p><b>Género:</b><%=pelicula.getGenero()%> </p>
								<p><b>Descripcion:</b> <%=pelicula.getDescripcion()%></p>
								<a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
							</div><!--/product-information-->
						</div>
					</div><!--/product-details-->
					
				</div>
			</div>
		</div>
	</section>
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
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>