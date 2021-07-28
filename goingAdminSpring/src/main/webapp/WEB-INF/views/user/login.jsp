<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();

String cssPath = request.getContextPath() + "/adminResource/css/";
String jsPath = request.getContextPath() + "/adminResource/js/";
String imgPath = request.getContextPath() + "/adminResource/img/";
String vendorPath = request.getContextPath() + "/adminResource/vendor/";
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
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" type="text/css" />
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->

<link href="/adminResource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="/adminResource/css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body>
	<div class="row justify-content-center">
		<div class="col-4 text-center">

			<img
				src="<%=imgPath%>logo.png" />
		</div>
	</div>
	
	<div class="form-group">
		<form action="<%=path%>/user/login" method="post">
			<div class="row justify-content-center my-3" >
				<div class="col-10 col-sm-3 text-center login-input" style="min-width:24.5rem">
					<input type="text" name="customerId" class="w-100 form-control" placeholder="아이디" value='${rememberId eq null ? "" : rememberId}'>
				</div>
			</div>
			<div class="row justify-content-center my-3">
				<div class="col-10 col-sm-3 text-center login-input" style="min-width:24.5rem">
					<input type="password" name="customerPass" class="w-100 form-control" placeholder="비밀번호">
				</div>
			</div>
			<div class="row justify-content-center my-3" >
				<div class="col-6 col-sm-2 d-flex justify-content-center align-items-center login-input" style="min-width:16.5rem">
					<input type="checkbox" name="rememberId" /> 아이디 저장
				</div>
				<div class="col-4 col-sm-1 text-center" style="min-width:8.5rem">
					<input type="submit" value="로그인" class="w-100 btn btn-primary">
				</div>
			</div>
			
		</form>
	</div>
<script type="text/javascript">
	let login = ${login eq null}
	if(login == false){
		alert("일치하는 정보가 없습니다.");
	}
</script>
</body>

</html>