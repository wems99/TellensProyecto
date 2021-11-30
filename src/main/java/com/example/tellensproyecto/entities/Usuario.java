package com.example.tellensproyecto.entities;

import java.sql.Date;

public class Usuario {
    private int id;
    private String nombreUsuario;
    private Date fechaCreacion;
    private Integer tipoUsuario;
    private String password;
    private String nombre;
    private Date ultimoLogueo;


    public Usuario() {
    }

    public Usuario(int id, String nombreUsuario, Date fechaCreacion, Integer tipoUsuario, String password, String nombre, Date ultimoLogueo) {
        this.id = id;
        this.nombreUsuario = nombreUsuario;
        this.fechaCreacion = fechaCreacion;
        this.tipoUsuario = tipoUsuario;
        this.password = password;
        this.nombre = nombre;
        this.ultimoLogueo = ultimoLogueo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(Integer tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }


    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Date getFechaCreacion() {
        return fechaCreacion;
    }
    public void setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public Date getUltimoLogueo() {
        return ultimoLogueo;
    }

    public void setUltimoLogueo(Date ultimoLogueo) {
        this.ultimoLogueo = ultimoLogueo;
    }
}
