package com.example.tellensproyecto.ui;

import com.example.tellensproyecto.entities.Articulo;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "AgregaCarritoServlet", value = "/AgregaCarritoServlet")
public class AgregaCarritoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int cant = Integer.parseInt(request.getParameter("txtCantidad"));
        int id= Integer.parseInt(request.getParameter("idPelicula"));

        HttpSession session= request.getSession(true);
        ArrayList<Articulo> articulos = session.getAttribute("carrito") == null ? new ArrayList<>() : (ArrayList) session.getAttribute("carrito");

        boolean flag= false;
        if(articulos.size()>0){
            for(Articulo a :articulos){
                if(id == a.getIdPelicula()){
                    a.setCantidad(a.getCantidad() + cant);
                    flag= true;
                    break;
                }
            }
        }
        if(!flag){
            articulos.add(new Articulo(id,cant));
        }
        session.setAttribute("carrito", articulos);
        response.sendRedirect("cart.jsp");
    }
}
