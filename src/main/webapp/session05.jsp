<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2022-10-26
  Time: 오후 3:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>세션사용하기 - invalidate</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
</head>
<body>
<h3>----- 세션을 삭제하기 전-----</h3>
<%
    String userId = (String)session.getAttribute("userId");
    String userPw = (String)session.getAttribute("userPw");
    out.println("설정된 세션 이름 userId : " + userId + "<br>");
    out.println("설정된 세션 값 userPw : " + userPw + "<br>");

    if (request.isRequestedSessionIdValid() == true) {
        out.println("세션이 유효합니다.");
    }
    else {
        out.println("세션이 유효하지 않습니다.");
    }

    out.print("세션 ID : " + session.getId());

    session.invalidate();
%>
<br>
<h3>----- 세션을 삭제한 후 -----</h3>
<%
    if (request.isRequestedSessionIdValid() == true) {
        out.println("세션이 유효합니다.");
    }
    else {
        out.println("세션이 유효하지 않습니다.");
    }

    out.print("세션 ID : " + session.getId());
%>
</body>
</html>
