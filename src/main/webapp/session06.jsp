<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 3:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>세션사용하기 - 유효시간설정</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</head>
<body>
<h3>----- 세션 유효 시간 변경 전 -----</h3>
<%
    int time = session.getMaxInactiveInterval() / 60;
    out.println("세션 유효 시간 : " + time + "분<br>");
%>
<br>
<h3>----- 세션 유효 시간 변경 후 -----
<%
    session.setMaxInactiveInterval(60 * 60);
    time = session.getMaxInactiveInterval() / 60;
    out.println("세션 유효 시간 : " + time + "분<br>");
%></h3>
</body>
</html>
