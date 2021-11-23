package com.example.tellensproyecto.entities;

import com.example.tellensproyecto.entities.Pelicula;
import com.example.tellensproyecto.utils.Conexion;

import java.sql.*;
import java.util.ArrayList;


public class PeliculaDB extends Conexion{

    public ArrayList<Pelicula> getAllProductos(){
        ArrayList<Pelicula> productos = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        Connection con = null;
        CallableStatement stmt = null;
        try {
            pst = getConnection().prepareCall("{call selectPeliculas()}");
            rs = pst.executeQuery();
            while(rs.next()){
                productos.add
                        (new Pelicula
                                (rs.getInt(1),rs.getString(2),rs.getString(3),
                                        rs.getString(4),rs.getString(5),rs.getString(6),
                                        rs.getInt(7),rs.getString(8)));
            }
        } catch (Exception e) {

        } finally{
            try {
                if(rs != null) rs.close();
                if(pst != null) pst.close();
                if(getConnection() != null) getConnection().close();
            } catch (Exception e) {
            }
        }
        return productos;
    }

}
