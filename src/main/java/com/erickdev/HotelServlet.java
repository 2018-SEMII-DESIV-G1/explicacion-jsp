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


@WebServlet(name="hotelServlet", urlPatterns={"/hotel"}, loadOnStartup=1)
public class HotelServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static Logger log = LoggerFactory.getLogger(HotelServlet.class);
    private Gson gson = new Gson();

    public HotelServlet() {
        // TODO: Determine what is this for...
    }
    
    @Override
    public void init() {
        log.debug("Servlet init...");
    }

    @Override
    protected void service(HttpServletRequest request,
                           HttpServletResponse response) throws ServletException, IOException {
        // Loging endpoint
        log.debug("Servlet service...");
        String[] hotels = {"RIU","Riande","Trump"};
        request.setAttribute("hotels", hotels); // Esto estará disponible como ${hotels}   
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
