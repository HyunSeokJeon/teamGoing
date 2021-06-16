<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>로그아웃</title>
</head>
<body>
<% session.invalidate(); %>
<script>
alert("로그아웃되었습니다.")
location.href="login.jsp"
</script>
</body>
</html>