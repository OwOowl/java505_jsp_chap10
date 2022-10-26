<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 2:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>세션사용하기 - setAttribute</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</head>
<body>
<%
    String userId = request.getParameter("userId");
    String userPw = request.getParameter("userPw");

    if (userId.equals("admin") && userPw.equals("1234")) {
        session.setAttribute("userId", userId);
        session.setAttribute("userPw", userPw);
        out.println("세션 설정이 성공했습니다.");
        out.println(userId + "님 환영합니다.");
    }
    else {
        out.println("세션 설정이 실패했습니다.");
    }
%>
</body>
</html>
