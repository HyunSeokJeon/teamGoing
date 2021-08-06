<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ include file = "/WEB-INF/views/include/header.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	self.location = "${kakao}";
	console.log("${kakao}");
</script>
<!-- <script type="text/javascript">
		alert("로그인 되었습니다.");
		self.location = "/";
	</script> -->
성공

	${kakao};
	
	
</body>
</html>