<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입 완료</title>
<script type="text/javascript">
	alert(`${param.name}님, 회원 가입에 성공했습니다.`);
	location.href = "/goingFront/main.go";
</script>
</head>
<body>
${param.name}님, 회원 가입에 성공했습니다.
</body>
</html>