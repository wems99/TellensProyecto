package com.example.tellensproyecto.ui;

import com.example.tellensproyecto.entities.Pelicula;
import com.example.tellensproyecto.services.PeliculaService;
import com.example.tellensproyecto.services.PeliculaServiceImpl;



import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet(name = "PeliculaServlet", value = "/PeliculaServlet")
public class PeliculaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre, precio, tipo;
        try {
            nombre = request.getParameter("nombre");
            if (nombre == null && nombre.equals("")) {
                throw new Exception("Nombre no definido");
            }
            tipo = request.getParameter("tipo");
            if (tipo == null && tipo.equals("")) {
                throw new Exception("Descripcion no definida");
            }
            precio = request.getParameter("precio");
            if (precio == null && precio.equals("")) {
                throw new Exception("Precio no definido");
            }

            Pelicula pelicula = new Pelicula();

            pelicula.setNombre(nombre);
            pelicula.setPrecio(Double.parseDouble(precio));
            pelicula.setTipo(tipo);

            PeliculaService peliculaService = new PeliculaServiceImpl();
            Boolean resultado = peliculaService.insertarProducto(pelicula);

            request.setAttribute("insertado", resultado);

            request.getRequestDispatcher("ProductListServlet").forward(request, response);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}
