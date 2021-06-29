<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();

String assetsPath = request.getContextPath() + "/frontResource/dist/assets/";
String cssPath = request.getContextPath() + "/frontResource/dist/css/";
String jsPath = request.getContextPath() + "/frontResource/dist/js/";
String imgPath = request.getContextPath() + "/frontResource/dist/assets/img/";
String vendorPath = request.getContextPath() + "/frontResource/vendor/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>로그인</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="<%=assetsPath%>assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" type="text/css" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="<%=cssPath%>styles.css" rel="stylesheet" />
<link href="<%=cssPath%>styles.custom.css" rel="stylesheet" />
</head>
<body>
	<div class="row justify-content-center">
		<div class="col-4 text-center">

			<a class="my-4" href="<%=path%>/main.go"><img
				src="<%=imgPath%>logo.png" /></a>
		</div>
	</div>
	<div class="form-group">
		<form action="<%=request.getContextPath()%>/login.go" method="post">
			<div class="row justify-content-center my-3" >
				<div class="col-10 col-sm-3 text-center login-input">
					<input type="text" name="id" value="${param.id}" class="w-100 form-control" placeholder="아이디">
					<c:if test="${errors.id}">ID를 입력하세요.</c:if>
				</div>
			</div>
			<div class="row justify-content-center my-3">
				<div class="col-10 col-sm-3 text-center login-input">
					<input type="password" name="password" class="w-100 form-control" placeholder="비밀번호">
					<c:if test="${errors.password}">암호를 입력하세요.</c:if>
				</div>
			</div>
			<div class="row justify-content-center my-3">
				<div class="col-6 col-sm-2 text-center" style="min-width:16.5rem">
					<input type="submit" value="로그인" class="w-100 btn btn-primary">
				</div>
				<div class="col-4 col-sm-1 text-center" style="min-width:8.25rem">
					<a href="<%=path %>/join.go"  class="w-100 btn">회원가입</a>
				</div>
			</div>
		</form>
	</div>

</body>
</html>