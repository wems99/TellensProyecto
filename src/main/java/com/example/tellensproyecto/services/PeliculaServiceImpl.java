package com.example.tellensproyecto.services;

import com.example.tellensproyecto.dao.PeliculaDao;
import com.example.tellensproyecto.entities.Pelicula;

import java.util.ArrayList;

public class PeliculaServiceImpl {

    private PeliculaDao peliculaDao;

    public PeliculaServiceImpl() {
        peliculaDao = new PeliculaDao();
    }

    public Boolean insertarProducto(Pelicula pelicula){

        //validacion a nivel de regla de negocio

        return peliculaDao.insertarPelicula(pelicula);
    }

    public ArrayList<Pelicula> listarProductos(){
        return peliculaDao.mostrarTodos();
    }
}

