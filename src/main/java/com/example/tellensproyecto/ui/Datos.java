package com.example.tellensproyecto.ui;

import com.example.tellensproyecto.entities.Pelicula;
import com.example.tellensproyecto.entities.PeliculaDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Random;

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
        String descr= request.getParameter("overview");
        Random r = new Random();
        int lowerBound = 1998;
        int upperBound = 2021;
        int anno = r.nextInt(upperBound-lowerBound) + lowerBound;
        String ann = String.valueOf(anno);
        Random r2 = new Random();
        int lower = 2000;
        int upper = 5000;
        int precio = r2.nextInt(upper-lower) + lower;
        PeliculaDB peliculaDB = new PeliculaDB();

        peliculaDB.agregar(id,titulo,"S/D","Populares",titulo,ann,precio,img);

        request.getRequestDispatcher("product-details.jsp").forward(request, response);

    }
}
