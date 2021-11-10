package com.example.tellensproyecto.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    public static Connection getConnection(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.
                    getConnection("jdbc:mysql://localhost:3306/productos", "root", "root");
            return con;
        }catch(Exception ex){
            System.out.println(ex);
            return null;
        }
    }
}