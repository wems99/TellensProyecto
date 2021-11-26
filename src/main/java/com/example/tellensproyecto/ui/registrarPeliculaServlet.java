package com.example.tellensproyecto.ui;

import com.example.tellensproyecto.entities.Pelicula;
import com.example.tellensproyecto.entities.PeliculaDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "registrarPeliculaServlet", value = "/registrarPeliculaServlet")
public class registrarPeliculaServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if(accion.equals("insertar")){
            this.registrarProducto(request, response);
        }
    }

    private void registrarProducto(HttpServletRequest request, HttpServletResponse response) throws IOException {
            Pelicula pelicula = new Pelicula();
            pelicula.setTitulo(request.getParameter("txtTitulo"));
            pelicula.setDescripcion(request.getParameter("txtDescripcion"));
            pelicula.setGenero(request.getParameter("txtGenero"));
            pelicula.setDirector(request.getParameter("txtDirector"));
            pelicula.setAnno(request.getParameter("txtAnno"));
            pelicula.setPrecio(Integer.parseInt(request.getParameter("txtTitulo")));
            pelicula.setImagen(request.getParameter("txtImagen"));
         //   boolean respuesta = PeliculaDB.insertarPelicula(pelicula);
           // if(respuesta){
            //    response.sendRedirect("mensaje.jsp?men=Se registro con exito");
            //}else{
              //  response.sendRedirect("mensaje.jsp?men=Error al registrar ");
            //}
    }
}
