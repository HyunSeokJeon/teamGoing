<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	if(${loginFail eq null ? false : loginFail}){
		alert("회원정보가 없습니다.");
		self.location = "/customer/login";
	}
</script>
<!-- <script type="text/javascript">
		alert("로그인 되었습니다.");
		self.location = "/";
	</script> -->
</body>
</html>