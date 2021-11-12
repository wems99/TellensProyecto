package com.example.tellensproyecto.dao;

import com.example.tellensproyecto.entities.Usuario;
import com.example.tellensproyecto.utils.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
    public final static Connection connection = Conexion.getConnection();

    public Usuario login(Usuario usuario)throws Exception {
        ResultSet rs;
        try{
            String sql = "select usuario, tipoUsuario, estado from usuario where nombreUsuario=? and password=?";
            PreparedStatement ps =connection.prepareStatement(sql);
            ps.setString(1, usuario.getNombreUsuario());
            ps.setString(2, usuario.getPassword());
            rs= ps.executeQuery();
            if (rs.next()) {
                usuario.setNombreUsuario(rs.getString("nombreUsuario"));
                usuario.setTipoUsuario(rs.getInt("tipoUsuario"));
                usuario.setEstado(rs.getInt("estado"));
            }

        } catch (Exception e) {
            throw new Exception("Ha ocurrido un error");
        }
        return usuario;
    }
}