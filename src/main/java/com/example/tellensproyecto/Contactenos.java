package com.example.tellensproyecto;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Contactenos", value = "/Contactenos")
public class Contactenos extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("contactenos.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre, correo, telefono, mensaje, tarjeta;

        nombre = request.getParameter("name");
        correo = request.getParameter("email");
        telefono = request.getParameter("telephone");
        mensaje = request.getParameter("message");
        tarjeta = request.getParameter("tarjeta");


        request.setAttribute("name_input", nombre);
        request.setAttribute("email_input", correo);
        request.setAttribute("telephone_input", telefono);
        request.setAttribute("message_input", mensaje);
        request.setAttribute("tarjeta_input", tarjeta);

        request.getRequestDispatcher("resultadoContactenos.jsp").forward(request, response);

    }
}
