package com.example;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/area")
public class Rectangle2 extends HttpServlet{

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        
       String height =  req.getParameter("height");
       String width = req.getParameter("width");

       int area = Integer.parseInt(height) * Integer.parseInt(width);

       String size = "";
       if(area>30){
        size = "Big Rectangle";
       }else if(area >20){
        size = "Normal Rectangle";
       }else{
        size = "Small Rectangle";
       }


       req.setAttribute("area",area);
       req.setAttribute("size",size);

       req.getRequestDispatcher("result.jsp").forward(req, res);
    }



}
