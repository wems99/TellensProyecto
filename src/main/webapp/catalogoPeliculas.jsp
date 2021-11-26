<%--
  Created by IntelliJ IDEA.
  User: teres
  Date: 26/11/2021
  Time: 01:46 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/estiloCat.css">
    <link rel="stylesheet" href="style.css">
    <title>Tellens Catálogo</title>
</head>
<body>

<div id="tags"></div>
<div id="myNav" class="overlay">

    <!-- Button to close the overlay navigation -->
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>

    <!-- Overlay content -->
    <div class="overlay-content" id="overlay-content"></div>

    <a href="javascript:void(0)" class="arrow left-arrow" id="left-arrow">&#8656;</a>

    <a href="javascript:void(0)" class="arrow right-arrow" id="right-arrow" >&#8658;</a>

</div>
<main id="main"></main>
<div class="pagination">
    <div class="page" id="prev">Previous Page</div>
    <div class="current" id="current">1</div>
    <div class="page" id="next">Next Page</div>

</div>

<script src="js/API.js"></script>
</body>
</html>
