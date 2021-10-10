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
       String precio;
        precio = request.getParameter("precio");
        request.setAttribute("precio",precio);
        request.getRequestDispatcher("solicitudes.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre, correo, telefono, mensaje,cantidad, tarjeta, precio, total, precioFinal;
        int numeroEntero1, numeroEntero2, suma;
        nombre = request.getParameter("name");
        correo = request.getParameter("mail");
        telefono = request.getParameter("tel");
        mensaje = request.getParameter("message");
        cantidad = request.getParameter("cantidad");
        tarjeta = request.getParameter("tarjeta");
        precio = request.getParameter("precio");
        total = request.getParameter("total");

        numeroEntero1 = Integer.parseInt(precio);
        numeroEntero2 = Integer.parseInt(cantidad);

        suma = numeroEntero1 * numeroEntero2;

        precioFinal = String.valueOf(suma);

        request.setAttribute("name", nombre);
        request.setAttribute("mail", correo);
        request.setAttribute("tel", telefono);
        request.setAttribute("message", mensaje);
        request.setAttribute("cantidad", cantidad);
        request.setAttribute("tarjeta", tarjeta);
        request.setAttribute("total", precioFinal);




        request.getRequestDispatcher("resultadoSolicitud.jsp").forward(request, response);
    }
}

