package com.example.tellensproyecto.services;

import com.example.tellensproyecto.dao.PeliculaDao;
import com.example.tellensproyecto.entities.Pelicula;

import java.util.ArrayList;

public class PeliculaServiceImpl implements PeliculaService{

    private PeliculaDao peliculaDao;
    public PeliculaServiceImpl() {
        peliculaDao = new PeliculaDao();
    }
    public Boolean insertarProducto(Pelicula pelicula){

        return peliculaDao.insertarPelicula(pelicula);
    }

    public ArrayList<Pelicula> listarProductos(){
        return peliculaDao.mostrarTodos();
    }
}

