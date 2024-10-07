package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/rectangle")
public class RectangleServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // Set the response content type
        resp.setContentType("text/html");

        String heightstr = req.getParameter("height");
        String widthstr = req.getParameter("width");

        int area;
        area = Integer.parseInt(heightstr) * Integer.parseInt(widthstr);

        PrintWriter out = resp.getWriter();
        out.println("<h2>Area is "+ area+ "</h2>");

        if(area > 50){
            out.println("<h3>Big Rectangle</h3>");

        } else if(area >30 ){
            out.println("<h3>Normal Rectangle</h3>");
        }else{
            out.println("<h3>Small Rectangle</h3>");
        }

    }

}
