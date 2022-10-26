<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>세션사용하기 - getAttribute</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</head>
<body>
<%
//    웹 : 각각의 웹 페이지는 각각의 어플리케이션. 기본적으로 각 웹페이지는 데이터를 공유하지 않음
//    세션은 웹 서버 내에 저장공간을 마련하여 웹 서버와 접속이 끊어지기 전까지 계속 유지.
//    동일한 세션ID를 가지고 있을 때 다른 페이지로 이동해도 세션에 저장된 데이터는 공유가 됨
    String userId = (String)session.getAttribute("userId");
    String userPw = (String)session.getAttribute("userPw");

    out.println("설정된 세션의 속성 값 : " + userId + "<br>");
    out.println("설정된 세션의 속성 값 : " + userPw);
%>
</body>
</html>
