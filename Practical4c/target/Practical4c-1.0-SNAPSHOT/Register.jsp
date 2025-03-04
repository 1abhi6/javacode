<%-- 
    Document   : Register
    Created on : 4 Mar 2025, 10:23:47 am
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bscit", "root", "root");
                PreparedStatement ps = conn.prepareStatement("INSERT INTO practical1c VALUES (?,?,?,?)");
                ps.setString(1, request.getParameter("username"));
                ps.setString(2, request.getParameter("password"));
                ps.setString(3, request.getParameter("email"));
                ps.setString(4, request.getParameter("country"));
                ps.executeUpdate();
                conn.close();
                
                out.println("Registration Successful!");
                response.sendRedirect("index.html");
            } catch (Exception ex) {
                out.println(ex.getMessage());
            }
        %>
    </body>
</html>
