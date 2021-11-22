package com.example.tellensproyecto.ui.filters;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "AutenticacionFilter", urlPatterns="/admin/*")
public class AutenticacionFilter implements Filter {
    private FilterConfig filterConfig;

    public void init(FilterConfig config) throws ServletException {
        this.filterConfig = config;
    }

    public void destroy() {
        this.filterConfig = null;
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest httpR = (HttpServletRequest)request;
        HttpServletResponse httpResp = (HttpServletResponse) response;
        HttpSession session = httpR.getSession();
        System.out.println("session==="+session.getAttribute("usuario"));
        if(null==session.getAttribute("usuario")) {
            request.setAttribute ("tips", "Actualmente no estás conectado, ¡inicia sesión primero!");
            System.out.println("tips==============");
            httpResp.sendRedirect(httpR.getContextPath() + "/login.jsp");
        }else {
            chain.doFilter(request, response);
        }
    }
}
