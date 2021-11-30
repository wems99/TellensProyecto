package com.example.tellensproyecto.ui;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@WebServlet(name = "Solicitudes", value = "/Solicitudes")
public class Solicitudes extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String precio;
        precio = request.getParameter("precio");
        request.setAttribute("precio",precio);
        request.getRequestDispatcher("admin/solicitudes.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("admin/formPago.jsp").forward(request, response);
    }
}
