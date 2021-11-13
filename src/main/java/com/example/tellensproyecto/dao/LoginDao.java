package com.example.tellensproyecto.dao;

import com.example.tellensproyecto.entities.Usuario;
import com.example.tellensproyecto.utils.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
    public final static Connection connection = Conexion.getConnection();

    public Usuario login(Usuario usu)throws Exception {
        ResultSet rs;
        try {

            String sql = "select nombreUsuario,fechaCreacion,tipoUsuario,password,nombre,ultimoLogueo from usuario where nombreUsuario=? and password=?";
            PreparedStatement ps =connection.prepareStatement(sql);
            ps.setString(1, usu.getNombreUsuario());
            ps.setString(2, usu.getPassword());
            rs= ps.executeQuery();
            if (rs.next()) {
                usu.setNombreUsuario(rs.getString("nombreUsuario"));
                usu.setTipoUsuario(rs.getInt("tipoUsuario"));
                usu.setNombre(rs.getString("nombre"));
                usu.setFechaCreacion(rs.getString("fechaCreacion"));
                usu.setUltimoLogueo(rs.getString("ultimoLogueo"));

            }

        } catch (Exception e)
        {
            //throw e;
            throw new Exception("Ha ocurrido un error");
        }
        return usu;
    }

}