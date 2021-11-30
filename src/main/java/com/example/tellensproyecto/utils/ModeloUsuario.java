package com.example.tellensproyecto.utils;

import com.example.tellensproyecto.entities.Usuario;

import java.sql.*;
import java.util.ArrayList;

public class ModeloUsuario extends Conexion{
    public ArrayList<Usuario> getAllUsuarios(){

        ArrayList<Usuario> usuarios = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        Connection con = null;
        CallableStatement stmt = null;
        try {
            pst = getConnection().prepareCall("{call selectUsuarios()}");
            rs = pst.executeQuery();
            while(rs.next()){
                usuarios.add
                        (new Usuario(rs.getInt(1),rs.getString(2),
                                rs.getDate(3),rs.getInt(4),rs.getString(5)
                                ,rs.getString(6),rs.getDate(7)));

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
        return usuarios;
    }

    public Usuario obtenerUsuario(int codigo){
        Usuario usuario = null;
        try{
            CallableStatement cl = getConnection().prepareCall("{call selectUsuario(?)}");
            cl.setInt(1, codigo);
            ResultSet rs = cl.executeQuery();
            while(rs.next()){
                usuario = (new Usuario(rs.getInt(1),rs.getString(2),
                        rs.getDate(3),rs.getInt(4),rs.getString(5)
                        ,rs.getString(6),rs.getDate(7)));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return usuario;
    }
    public boolean insertarUsuario(Usuario usuario){
        boolean respuesta = false;
        try {
            CallableStatement cl = getConnection().prepareCall("{call insertarPelicula(?,?,?,?,?,?,?)}");
            cl.registerOutParameter(1, Types.INTEGER );
            cl.setString(2,usuario.getNombreUsuario());
            cl.setDate(3,usuario.getFechaCreacion());
            cl.setInt(4,usuario.getTipoUsuario());
            cl.setString(5,usuario.getPassword());
            cl.setString(6,usuario.getNombre());
            cl.setDate(7,usuario.getUltimoLogueo());
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
