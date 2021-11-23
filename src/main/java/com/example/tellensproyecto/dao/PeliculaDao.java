package com.example.tellensproyecto.dao;

import com.example.tellensproyecto.entities.Pelicula;
import com.example.tellensproyecto.utils.Conexion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class PeliculaDao {
    public final static Connection connection = Conexion.getConnection();

    //metodo para insertar
    public boolean insertarPelicula(Pelicula pelicula){
        try {
            String consulta = "insert into pelicula(nombre,precio, tipo) values (?, ?, ?)";
            PreparedStatement stm1 = connection.prepareStatement(consulta);
            stm1.setString(1, pelicula.getTitulo());
            stm1.setString(2, pelicula.getGenero());  //Para evitar sql inyection
            stm1.setDouble(3, pelicula.getPrecio());
            stm1.execute();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(PeliculaDao.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Error:" + ex.fillInStackTrace());
            return false;
        }

    }

    //metodo para buscar

    //metodo para traer todos los registros
    public ArrayList<Pelicula> mostrarTodos(){
        try {
            String consulta = "select * from producto";
            PreparedStatement stm1 = connection.prepareStatement(consulta);
            ResultSet rs = stm1.executeQuery();
            ArrayList<Pelicula> listaPeliculas = new ArrayList();
            while(rs.next()){
                Pelicula pelicula = new Pelicula();
                pelicula.setTitulo(rs.getString("nombre")); //REVISAR SI SE LLAMA NOMBRE O NAME
                pelicula.setPrecio(rs.getInt("precio"));
                pelicula.setGenero(rs.getString("tipo"));
                listaPeliculas.add(pelicula);
            }
            return listaPeliculas;
        } catch (SQLException ex) {
            Logger.getLogger(PeliculaDao.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Error:" + ex.fillInStackTrace());
            return null;
        }

    }

    //metodo para actualizar

    //metodo para borrar (fisico o logico)


}