package com.example.tellensproyecto.entities;

public class Usuario {
    private int id;
    private String nombreUsuario;
    private String password;
    private Integer tipoUsuario;
    private String fechaCreacion;
    private String nombre;
    private String ultimoLogueo;
    private int activo;



    public Usuario() {
    }

    public Usuario(int id, String nombreUsuario, String password, Integer tipoUsuario, String fechaCreacion, String nombre, String ultimoLogueo) {
        this.id = id;
        this.nombreUsuario = nombreUsuario;
        this.password = password;
        this.tipoUsuario = tipoUsuario;
        this.fechaCreacion = fechaCreacion;
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

    public String getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(String fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUltimoLogueo() {
        return ultimoLogueo;
    }

    public void setUltimoLogueo(String ultimoLogueo) {
        this.ultimoLogueo = ultimoLogueo;
    }
    public int getActivo() {
        return activo;
    }

    public void setActivo(int activo) {
        this.activo = activo;
    }
}
