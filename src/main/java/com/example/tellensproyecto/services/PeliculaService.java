package com.example.tellensproyecto.services;

import com.example.tellensproyecto.entities.Pelicula;

import java.util.ArrayList;

public interface PeliculaService {

    public Boolean insertarProducto(Pelicula producto);

    public ArrayList<Pelicula> listarProductos();
}
