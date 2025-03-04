package com.test;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import java.io.*;
import jakarta.servlet.http.*;

@WebServlet(name = "Calculate", urlPatterns = {"/Calculate"})
public class Calculate extends HttpServlet{
    public void calulateNum(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
        PrintWriter out = res.getWriter();
        res.setContentType("text/html");
        
        int num1 = Integer.parseInt(req.getParameter("n1"));
        int num2 = Integer.parseInt(req.getParameter("n2"));
        String opr = req.getParameter("r1");
        
        float result = 0;
        
        if (opr.equalsIgnoreCase("Add"))
            result = num1+num2;
        else if(opr.equalsIgnoreCase("Sub"))
            result = num1-num2;
        else if (opr.equalsIgnoreCase("Mul"))
            result = num1*num2;
        else
            result = num1/num2;
        
        out.println("<h2>The Result is: </h2>" + result);
    }
    
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
        calulateNum(req, res);
    }
    
}