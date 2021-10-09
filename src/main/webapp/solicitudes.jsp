<!doctype html>
<html lang="en">

<head>
    <title>Solicitudes</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estiloHistoria.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Unna:ital@1&display=swap" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/estiloSolicitudes.css">
    <link rel="stylesheet" href="css/estiloFooter.css">
    <link rel="stylesheet" href="css/estiloNav.css">
    <script src="https://www.google.com/recaptcha/api.js"></script>
    <script>
        grecaptcha.ready(() => {
            grecaptcha.render('html_element', {
                'sitekey' : '6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI'
            });
        });
    </script>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light fuente fondo">
    <img id="logo" src="img/logo.png" alt="">
    <a class="navbar-brand fuente" href="#">Tellen's Cinema</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ">
            <li class="nav-item active">
                <a href="Inicio" method="POST" action="Inicio" class="nav-link" href="#">Inicio<span class="sr-only"></span></a>
            </li>
            <li class="nav-item">
                <a href="Catalogo" method="POST" action="Catalogo" class="nav-link" href="#">Catálogo</a>
            </li>
            <li class="nav-item">
                <a href="Historia" method="POST" action="Historia" class="nav-link" href="#">Nuestra historia</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Misión y visión
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a href="Mision" method="POST" action="Mision" class="dropdown-item" href="#">Mision</a>
                    <a href="Vision" method="POST" action="Vision" class="dropdown-item" href="#">Vision</a>
                    <div class="dropdown-divider"></div>
                </div>
            </li>
            <li class="nav-item">
                <a href="Visitenos" method="POST" action="Visitenos" class="nav-link" href="#">Visitenos</a>
            </li>
            <li class="nav-item">
                <a href="Contactenos" method="POST" action="Contactenos" class="nav-link" href="#">Contáctenos</a>
            </li>


        </ul>
        <form id="busca" class="form-inline my-2 ">
            <input id="buscar" class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
            <a href="" class="fas fa-search"></a>
            <button class="btn btn-outline-success my-2 my-sm-0" type="button">Registrarse</button>
            <button class="btn btn-outline-success my-2 my-sm-0" type="button">Ingresar</button>

        </form>
    </div>
</nav>

<h1 class="fuente">Solicitudes </h1>
<br />
<div class="inner contact">

    <div class="contact-form">

        <form id="contact-us" method="post" action="#">
            <div class="col-xs-6 wow animated slideInLeft" data-wow-delay=".5s">
                <input type="text" name="name" id="name" required="required" class="form" placeholder="Nombre" />
                <input type="email" name="mail" id="mail" required="required" class="form" placeholder="Correo" onchange="compruebaCorreo(this.value);" />
                <input type="tel" pattern="[0-9]{8}" name="tel" id="tel" required="required" class="form" placeholder="########" />
                <input type="number" min="1" name="cantidad" id="cantidad" required="required" class="form" placeholder="Cantidad" />
                <input type="text" pattern="[0-9]{2}[-][0-9]{2}[-][0-9]{2}[-][0-9]{2}" name="tarjeta" id="tarjeta" class="form" placeholder="Tarjeta de asociado" />


            </div>

            <div class="col-xs-6 wow animated slideInRight" data-wow-delay=".5s">
                <div class="flex">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="Terror/Suspenso" id="flexCheck" checked>
                        <label class="form-check-label fuenteNegra">
                            Terror/Suspenso
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="Comedia" id="flexCheckDefault1">
                        <label class="form-check-label fuenteNegra">
                            Comedia
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="Accion" id="flexCheckDefault">
                        <label class="form-check-label fuenteNegra">
                            Acción
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="Fantasía" id="flexCheckDefault">
                        <label class="form-check-label fuenteNegra">
                            Fantasía
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="Romanticas" id="flexCheckDefault4">
                        <label class="form-check-label fuenteNegra" for="flexCheckDefault">
                            Románticas
                        </label>
                    </div>
                </div>
                <div class="flex">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="Comprea" name="flexRadioDefault" id="flexRadioDefault1" checked>
                        <label class="form-check-label fuenteNegra" for="flexRadioDefault1"> Compra </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" value="Alquiler" name="flexRadioDefault" id="flexRadioDefault2">
                        <label class="form-check-label fuenteNegra" for="flexRadioDefault2">
                            Alquiler
                        </label>
                    </div>
                </div>
                <textarea name="message" id="message" class="form textarea" placeholder="Información adicional"></textarea>
                <!--reCatpcha-->
                <div class="g-recaptcha" data-sitekey="6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI"></div>
                <!--termina reCatpcha-->
            </div>
            
            <div class="relative fullwidth col-xs-12">
                <button type="submit" id="submit" name="submit" class="form-btn semibold" method="POST" action="Solicitudes">Enviar informacion</button>
            </div>
            
            <div class="clear"></div>
        </form>

        <div class="mail-message-area">

            <div class="alert gray-bg mail-message not-visible-message">
                <strong>Thank You !</strong> Your email has been delivered.
            </div>
        </div>

    </div>
</div>

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
</body>
<script src="js/funcionSolicitudes.js "></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</html>