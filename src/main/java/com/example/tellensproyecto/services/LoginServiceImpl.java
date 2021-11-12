package com.example.tellensproyecto.services;

import com.example.tellensproyecto.dao.LoginDao;
import com.example.tellensproyecto.entities.Usuario;

public class LoginServiceImpl implements LoginService {

    private LoginDao loginDao;

    public LoginServiceImpl() {
        loginDao = new LoginDao();
    }

    @Override
    public Usuario login(Usuario usuario) throws Exception {
        return loginDao.login(usuario);
    }
}
