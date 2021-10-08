package com.example.tellensproyecto;

import com.example.tellensproyecto.en.peliculas.Pelicula;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Solicitudes", value = "/Solicitudes")
public class Solicitudes extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("solicitudes.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre, correo, telefono, mensaje,cantidad, tarjeta, generos, tipos,tipo;

        nombre = request.getParameter("name");
        correo = request.getParameter("mail");
        telefono = request.getParameter("tel");
        mensaje = request.getParameter("message");
        cantidad = request.getParameter("cantidad");
        tarjeta = request.getParameter("tarjeta");
        generos = request.getParameter("flexCheckDefault");
        tipo = request.getParameter("flexCheckDefault1");
        tipos = request.getParameter("flexCheckDefault2");

        request.setAttribute("name", nombre);
        request.setAttribute("mail", correo);
        request.setAttribute("tel", telefono);
        request.setAttribute("message", mensaje);
        request.setAttribute("cantidad", cantidad);
        request.setAttribute("tarjeta", tarjeta);
        request.setAttribute("flexCheckDefault", generos);
        request.setAttribute("flexCheckDefault1", tipo);
        request.setAttribute("flexCheckDefault2", tipos);

        request.getRequestDispatcher("resultadoSolicitud.jsp").forward(request, response);
    }
}
