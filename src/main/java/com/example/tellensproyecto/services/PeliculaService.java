package com.example.tellensproyecto.services;

import java.util.ArrayList;
import com.example.tellensproyecto.entities.Pelicula;
public interface PeliculaService {

    public Boolean insertarProducto(Pelicula producto);
    public ArrayList<Pelicula> listarProductos();
}
