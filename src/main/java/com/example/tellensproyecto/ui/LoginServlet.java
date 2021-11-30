package com.example.tellensproyecto.ui;

import com.example.tellensproyecto.entities.Usuario;
import com.example.tellensproyecto.services.LoginService;
import com.example.tellensproyecto.services.LoginServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Optional;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String html;
        System.out.println("Seteamos una variable de aplicación");
        ServletContext aplicacion = request.getServletContext();
        aplicacion.setAttribute("variableAplicacion", "aplicacionWeb");
        String user, password;
        try{
            user = request.getParameter("username");
            password = request.getParameter("password");

            if(!user.equals("") && !password.equals("")){
                Usuario usuario = new Usuario();
                usuario.setNombreUsuario(user);
                usuario.setPassword(password);
                LoginService loginService = new LoginServiceImpl();
                usuario = loginService.login(usuario);


                if(Optional.ofNullable(usuario.getTipoUsuario()).isPresent()){

                    HttpSession oldSession = request.getSession(false);
                    if (oldSession != null) {
                        oldSession.invalidate();
                    }

                    HttpSession session = request.getSession(true);

                    session.setMaxInactiveInterval(5*60);
                    Cookie message = new Cookie("mensaje", "Bienvenido");
                    response.addCookie(message);
                    session.setAttribute("usuario", usuario);
                    if(usuario.getTipoUsuario() == 0){
                    response.sendRedirect("index.jsp");
                    }else if(usuario.getTipoUsuario() ==1){
                        response.sendRedirect("admin/administrativo.jsp");
                    }
                }else{
                    throw new Exception("Login Incorrecto");
                }

            }else{
                throw new Exception("Login Incorrecto");
            }

        }catch(Exception e){
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("Error.jsp").forward(request, response);
        }
    }

}
