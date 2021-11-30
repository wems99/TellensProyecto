package com.example.tellensproyecto.services;

import com.example.tellensproyecto.entities.Usuario;

public interface LoginService {
    public Usuario login(Usuario usuario) throws Exception;

}