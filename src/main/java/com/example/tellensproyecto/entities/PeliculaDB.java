package com.example.tellensproyecto.entities;


import com.example.tellensproyecto.utils.Conexion;

import java.sql.*;
import java.util.ArrayList;


public class PeliculaDB extends Conexion {

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

    public void agregar(int cod,String nom,String descr,String gen, String dir, String an,int preci,String img){
        try {
           Connection con = getConnection();
           Statement st = con.createStatement();
           String query= String.format("INSERT INTO `tellens`.`pelicula` (`codigoPelicula`, `titulo`, `descripcion`, `genero`, `director`, `anno`, `precio`, `imagen`) VALUES ('%d', '%s', '%s', '%s', '%s', '%s', '%d', '%s');",cod,nom,descr,gen,dir,an,preci,img);
           st.executeUpdate(query);

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
