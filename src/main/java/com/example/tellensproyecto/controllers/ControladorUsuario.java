package com.example.tellensproyecto.controllers;

import com.example.tellensproyecto.entities.Usuario;
import com.example.tellensproyecto.utils.ModeloUsuario;
import utils.ModeloProducto;
import javax.swing.JOptionPane;
import javax.swing.*;

public class ControladorUsuario {

    public String getUsuarios(){
        ModeloUsuario mp = new ModeloUsuario();
        String html="";

        for(Usuario usuario : mp.getAllUsuarios()){
            html +="  <div>               \n" +
                    "             <table class=\"table table-bordered\"  id=\"tablaDatos\">\n" +
                    "                    <thead>\n" +
                    "                        <tr>\n" +
                    "                            <th>ID</th>\n" +
                    "                            <th class=\"text-center\">Nombre</th>\n" +
                    "                           <th class=\"text-center\">Correo</th>\n" +
                    "                        </tr>\n" +
                    "                    </thead>\n" +
                    "                    <tbody id=\"tbodys\">\n" +
                    "                        <tr>\n" +
                    "                               <td class=\"text-center\">"+usuario.getId()+"</td>\n" +
                    "                            <td>"+usuario.getNombre()+"</td>\n" +
                    "                            <td class=\"text-center\">"+usuario.getNombreUsuario() +
                    "                            <td class=\"text-center\">\n" +
                    "                                \n" +
                    "                               <td class=\"text-center\">\n" +
                    "                                \n" +
                    "                                <!-- <input type=\"hidden\" value=\"<//%= rs.getInt(\"Id_Usuario\")%>\" id=\"Editar\"/>\n" +
                    "                                <input type=\"submit\" class=\"btn btn-warning\" data-toggle=\"modal\" data-target=\"#myModal1\" value=\"Editar\"/>  -->\n" +
                    "                                <a href=\"formModUser.jsp?id="+usuario.getId()+ "\" class=\"btn btn-primary\">Editar</a>\n" +
                    "                                <a href=\"eliminaUsuario.jsp?id="+usuario.getId()+ "\" class=\"btn btn-danger\">Eliminar</a>\n" +
                    "                            </td> </td>\n" +
                    "                        </tr>\n" +
                    "                </table>\n" +
                    "            </div>       ";

        }
        return html;
    }
    public Usuario getUsuario(int id){
        return new ModeloUsuario().obtenerUsuario(id);
    }

}