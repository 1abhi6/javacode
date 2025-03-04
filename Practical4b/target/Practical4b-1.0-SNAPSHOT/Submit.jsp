<%-- 
    Document   : Submit
    Created on : 4 Mar 2025, 8:57:38 am
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

        <%
            String username = request.getParameter("name");
            String age = request.getParameter("age");
            String[] hobbies = request.getParameterValues("hobby");
            String email = request.getParameter("email");
            String gender = request.getParameter("gender");

            String errorMsg = "";
            if (username.trim().equals("")) {
                errorMsg += "Please Input a name value<br>";
            }
            if (age.trim().equals("")) {
                errorMsg += "Please Input age value<br>";
            } else {
                try {
                    int ageInt = Integer.parseInt(age);
                } catch (Exception ex) {
                    errorMsg += "Invalid character<br>";
                }
            }
            if (errorMsg.trim().equals("")) {
                out.println("<br>");
                out.println("Username: " + username);
                out.println("<br>");
                out.println("Age " + age);
                out.println("<br>");
                if (hobbies != null) {
                    for (String hobby : hobbies) {
                        out.println("Hobby " + hobby);
                    }
                } else {
                    out.println("No Hobby Value");
                }
                out.println("<br>");
                out.println("Email " + email);
                out.println("<br>");
                out.println("Gender" + gender);

            } else {
        %>
        <jsp:include page="index.html"></jsp:include>
        <%
                out.println("Error submiting form: " + errorMsg);
            }
        %>
    </body>
</html>
