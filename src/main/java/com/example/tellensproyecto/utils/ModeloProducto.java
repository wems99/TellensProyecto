package utils;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import com.example.tellensproyecto.entities.Pelicula;
import com.example.tellensproyecto.utils.Conexion;

import java.sql.*;
import java.util.ArrayList;


public class ModeloProducto extends Conexion {

    public ArrayList<Pelicula> getAllProductos(){
        ArrayList<Pelicula> peliculas = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        Connection con = null;
        CallableStatement stmt = null;
        try {
            pst = getConnection().prepareCall("{call selectPeliculas()}");
            rs = pst.executeQuery();
            while(rs.next()){
                peliculas.add
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
        return peliculas;
    }

    public Pelicula obtenerPelicula(int codigo){
        Pelicula pelicula = null;
        try{
            CallableStatement cl = getConnection().prepareCall("{call selectPelicula(?)}");
            cl.setInt(1, codigo);
            ResultSet rs = cl.executeQuery();
            while(rs.next()){
                pelicula = (new Pelicula
                        (rs.getInt(1),rs.getString(2),rs.getString(3),
                                rs.getString(4),rs.getString(5),rs.getString(6),
                                rs.getInt(7),rs.getString(8)));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return pelicula;
    }
    public Pelicula getProducto(int id){
        Pelicula pelicula = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String sql = "call selectPelicula(?)";
            pst = getConnection().prepareCall(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            while(rs.next()){
                pelicula = (new Pelicula
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
        return pelicula;

    }

    public static boolean insertarPelicula(Pelicula pelicula){
        boolean respuesta = false;
        try {
            CallableStatement cl = getConnection().prepareCall("{call insertarPelicula(?,?,?,?,?,?,?,?)}");
            cl.registerOutParameter(1, Types.INTEGER );
            cl.setString(2,pelicula.getTitulo());
            cl.setString(3,pelicula.getDescripcion());
            cl.setString(4,pelicula.getGenero());
            cl.setString(5,pelicula.getDirector());
            cl.setString(6,pelicula.getAnno());
            cl.setInt(7,pelicula.getPrecio());
            cl.setString(8,pelicula.getImagen());
            int i = cl.executeUpdate();
            if(i==1){
                respuesta = true;
            }else{
                respuesta=false;
            }
        }catch (Exception e){
            System.out.println(e);
        };
        return respuesta;
    }


}
