package com.example.tellensproyecto.controllers;


import com.example.tellensproyecto.entities.Pelicula;
import utils.ModeloProducto;

public class ControladorPelicula {

    public String getPeliculas(){
        ModeloProducto mp = new ModeloProducto();
        String html="";

        for(Pelicula pelicula : mp.getAllProductos()){
            html +="  <div>               \n" +
                    "             <table class=\"table table-bordered\"  id=\"tablaDatos\">\n" +
                    "                    <thead>\n" +
                    "                        <tr>\n" +
                    "                            <th>ID</th>\n" +
                    "                           <th class=\"text-center\">Título</th>\n" +
                    "                            <th class=\"text-center\">Descipción</th>\n" +
                    "                           <th class=\"text-center\">Género</th>\n" +
                    "                           <th class=\"text-center\">Director</th>\n" +
                    "                           <th class=\"text-center\">Año</th>\n" +
                    "                           <th class=\"text-center\">Precio</th>\n" +
                    "                        </tr>\n" +
                    "                    </thead>\n" +
                    "                    <tbody id=\"tbodys\">\n" +
                    "                        <tr>\n" +
                    "                               <td class=\"text-center\">"+pelicula.getIdPelicula()+"</td>\n" +
                    "                            <td>"+pelicula.getTitulo()+"</td>\n" +
                    "                            <td class=\"text-center\">"+pelicula.getDescripcion() +
                    "                             <td class=\"text-center\">"+pelicula.getGenero() +
                    "                            <td class=\"text-center\">\n" +pelicula.getDirector()+
                    "                                \n" +
                    "                               <td class=\"text-center\">\n" +pelicula.getAnno()+
                    "                                <td class=\"text-center\">\n" +pelicula.getPrecio()+
                    "                                 <td class=\"text-center\">\n" +
                    "                                \n" +
                    "                                <!-- <input type=\"hidden\" value=\"<//%= rs.getInt(\"Id_Usuario\")%>\" id=\"Editar\"/>\n" +
                    "                                <input type=\"submit\" class=\"btn btn-warning\" data-toggle=\"modal\" data-target=\"#myModal1\" value=\"Editar\"/>  -->\n" +
                    "                                <a href=\"formModPelicula.jsp?id="+pelicula.getIdPelicula()+ "\" class=\"btn btn-primary\">Editar</a>\n" +
                    "                                <a href=\"eliminaPelicula.jsp?id="+pelicula.getIdPelicula()+ "\" class=\"btn btn-danger\">Eliminar</a>\n" +
                    "                            </td> </td>\n" +
                    "                        </tr>\n" +
                    "                </table>\n" +
                    "            </div>       ";

        }
        return html;
    }


    public Pelicula getProducto(int id){
        return new ModeloProducto().getProducto(id);
    }
}
