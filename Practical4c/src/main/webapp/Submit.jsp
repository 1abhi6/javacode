<%-- 
    Document   : Submit
    Created on : 4 Mar 2025, 10:45:36 am
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                Class.forName("com.sql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bscit", "root", "root");
                PreparedStatement ps = conn.prepareStatement("SELECT * FROM practical1c WHERE username = ? AND password = ?");
                ps.setString(1, request.getParameter("username").trim());
                ps.setString(2, request.getParameter("password").trim());
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    out.println("Login Success!");
                } else {
                    out.println("Login Fail");
                }
                conn.close();
            } catch (Exception ex) {
                out.println(ex.getMessage());
            }

        %>
    </body>
</html>
