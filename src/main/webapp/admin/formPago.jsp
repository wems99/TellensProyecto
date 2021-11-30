<%--
  Created by IntelliJ IDEA.
  User: teres
  Date: 21/11/2021
  Time: 06:09 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/estiloFormPago.css">
    <link rel="stylesheet" href="../css/estiloNav.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Unna:ital@1&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <title>Pago</title>
</head>

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
<div class="row">
    <div class="col-75">
        <div class="container">

                <div class="col-50">
                    <h3>Datos de pago</h3>
                    <label>Seleccione el tipo de tarjeta</label>
                    <div class="icon-container">
                        <a class="fab fa-cc-visa" style="color: navy;"></a>
                        <a class="fab fa-cc-amex" style="color: blue;"></a>
                        <a class="fab fa-cc-mastercard" style="color: red;"></a>
                        <a class="fab fa-cc-discover" style="color: orange;" onclick=""></a>

                    </div>
                    <label for="ccnum">Numero de la Tarjeta </label>
                    <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
                    <label for="expmonth">Fecha de vencimiento de la tarjeta</label>
                    <input type="text" id="expmonth" name="expmonth" placeholder="September">

                    <div class="row">
                        <div class="col-50">
                            <label for="expyear">Año de vencimiento</label>
                            <input type="text" id="expyear" name="expyear" placeholder="2018">
                        </div>
                        <div class="col-50">
                            <label for="cvv">CVV</label>
                            <input type="text" id="cvv" name="cvv" placeholder="352">
                        </div>
                    </div>
                    <label for="expmonth">Dirección de envío</label>
                    <input type="text" id="direccion" name="direccion" placeholder="Avenidad 10">
                </div>
                <label>
                    <input type="checkbox" checked="checked" name="sameadr">Dirección de envío igual a la de facturación
                </label>
                <input type="submit" value="Continuar" class="btn">
        </div>
    </div>
</div>

</div>
</body>

</html>