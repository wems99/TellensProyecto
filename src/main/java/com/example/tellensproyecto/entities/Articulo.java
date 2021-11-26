package com.example.tellensproyecto.entities;

public class Articulo {
    private int idPelicula;
    private int cantidad;

    public Articulo(int idPelicula, int cantidad) {
        this.idPelicula = idPelicula;
        this.cantidad = cantidad;
    }

    public int getIdPelicula() {
        return idPelicula;
    }

    public void setIdPelicula(int idPelicula) {
        this.idPelicula = idPelicula;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

}
