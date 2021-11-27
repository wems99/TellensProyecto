package com.example.tellensproyecto.ui;

import com.example.tellensproyecto.entities.Pelicula;
import com.example.tellensproyecto.entities.PeliculaDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Datos", value = "/Datos")
public class Datos extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("admin/contactenos.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id= Integer.parseInt(request.getParameter("id"));
        String titulo = request.getParameter("titulo");
        String img = request.getParameter("imagen");

        PeliculaDB peliculaDB = new PeliculaDB();
        peliculaDB.agregar(id,titulo,"asd","asdas","sdf","asd",1222,img);


        request.getRequestDispatcher("product-details.jsp").forward(request, response);

    }
}
