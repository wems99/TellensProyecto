package com.example.tellensproyecto.ui;
import com.example.tellensproyecto.entities.Articulo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "BorrarCarrito", value = "/BorrarCarrito")
public class BorrarCarrito extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().print("OK");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      int id = Integer.parseInt(request.getParameter("id"));

        HttpSession sessions= request.getSession(true);
        ArrayList<Articulo> articulos = sessions.getAttribute("carrito") == null ? null : (ArrayList) sessions.getAttribute("carrito");
        if(articulos!= null) {
            for (Articulo a : articulos) {
                if (a.getIdPelicula() == id) {
                    articulos.remove(a);
                    break;
                }
            }
        }

    }
}
