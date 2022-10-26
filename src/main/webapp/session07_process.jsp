<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 4:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>세션사용하기</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String userName = (String)request.getParameter("userName");
    String userEmail = (String)request.getParameter("userEmail");
    String userPhone = (String)request.getParameter("userPhone");

    session.setAttribute("userName", userName);
    session.setAttribute("userEmail", userEmail);
    session.setAttribute("userPhone", userPhone);

    session.setMaxInactiveInterval(30);
    response.sendRedirect("session07_result.jsp");
%>
</body>
</html>
