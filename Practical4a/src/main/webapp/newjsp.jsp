<%-- 
    Document   : newjsp
    Created on : 4 Mar 2025, 2:52:00 am
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        Query String: <%=request.getQueryString()%> <br>
        Context Path: <%=request.getContextPath()%> <br>
        Get Cookie: <%=request.getCookies()%>
    </body>
</html>
