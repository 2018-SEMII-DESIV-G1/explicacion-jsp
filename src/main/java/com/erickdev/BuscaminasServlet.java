package com.erickdev;

import java.io.IOException;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.io.PrintWriter;

import com.google.gson.*;


@WebServlet(name="buscaminasServlet", urlPatterns={"/buscaminas"}, loadOnStartup=1)
public class BuscaminasServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static Logger log = LoggerFactory.getLogger(BuscaminasServlet.class);
    private Gson gson = new Gson();

    public BuscaminasServlet() {}
    
    @Override
    public void init() {
        log.debug("BuscaminasServlet init...");
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Loging endpoint
        log.debug("BuscaminasServlet service...");
        String name = "Buscaminas", version="V0.1";
        request.setAttribute("name", name); // Esto estará disponible como ${name}   
        request.setAttribute("version", version); // Esto estará disponible como ${version}   
        request.getRequestDispatcher("/buscaminas.jsp").forward(request, response);
    }
}
