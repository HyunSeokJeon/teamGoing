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
<script defer type="text/javascript"
	src="<%=request.getContextPath()%>/frontResource/dist/js/joinCheck.js"></script>
	
<script defer type="text/javascript"
	src="<%=request.getContextPath()%>/frontResource/dist/js/juso.js"></script>

</head>
<body>
	<div class="row justify-content-center">
		<div class="col-4 text-center">

			<a class="my-4" href="<%=path%>/main.go"><img
				src="<%=imgPath%>logo.png" /></a>
		</div>
	</div>
	<div class="form-group">
		<form name="joinForm" action="<%=path%>/customer/join"
			method="post" id="joinForm">
			<div class="row justify-content-center my-3">
				<div class="col-7 col-sm-2 text-center" style="min-width: 16.5rem">
					<input type="text" name="customerId" value="${param.id}" id="inputId" class=" form-control form-control-sm" placeholder="아이디 (5 ~ 12자 영문, 숫자, !@#만 가능)">
					<span id="idConfirm"></span>
					<br>
					<c:if test="${errors.id}">ID를 입력하세요.</c:if>
					<c:if test="${errors.duplicateId}">이미 사용중인 아이디입니다.</c:if>
				</div>
				<div class="col-3 col-sm-1 text-center" style="min-width: 8.25rem">
					
					<button id="idCheck" type="button" class="btn btn-sm btn-primary">중복확인</button>
				</div>
			</div>
			<div class="row justify-content-center my-3">
				<div class="col-10 col-sm-3 text-center login-input">
					<input type="password" name="customerPass" id="password" class=" form-control form-control-sm" placeholder="비밀번호 (10자이상)">
					<span id="passConfirm"></span>
					<c:if test="${errors.password}">비밀번호를 입력하세요.</c:if>
				</div>
			</div>
			<div class="row justify-content-center my-3">
				<div class="col-10 col-sm-3 text-center login-input">
					<input type="password" name="customerRePass" id="repassword" class=" form-control form-control-sm" placeholder="비밀번호 확인"> <br>
					<span id="repassConfirm"></span>
					<c:if test="${errors.repassword}">확인을 입력하세요.</c:if>
					<c:if test="${errors.notMatch}">암호와 확인이 일치하지 않습니다.</c:if>
				</div>
			</div>
			<div class="row justify-content-center my-3">
				<div class="col-10 col-sm-3 text-center login-input border">
					
				</div>
			</div>
			<div class="row justify-content-center my-3">
				<div class="col-10 col-sm-3 text-center login-input">
					<input type="text" id="name" name="customerName" class=" form-control form-control-sm" placeholder="이름"> <br>
					<c:if test="${errors.name}">이름을 입력하세요.</c:if>
				</div>
			</div>
			<div class="row justify-content-center my-3">
				<div class="col-10 col-sm-3 text-center login-input">
					<select id="birthday1" name="birthday1" class="form-select form-select-sm inline-block" style="width:48% !important" onclick="dateChange(this)">
						
					</select>
					<select id="birthday2" name="birthday2" class="form-select form-select-sm inline-block w-25" onclick="dateChange(this)">
						
					</select>
					<select id="birthday3" name="birthday3" class="form-select form-select-sm inline-block w-25">
	
					</select>
				</div>
			</div>
			<div class="row justify-content-center my-3">
				<div class="col-10 col-sm-3 text-left login-input ">
					<span class="mx-5">성별:</span>
					<input type="radio" name="customerGender" value="M" checked="checked"> 남자 <span class="mx-5"></span>
					<input type="radio" name="customerGender" value="W"> 여자
				</div>
			</div>
			<div class="row justify-content-center my-3">
				<div class="col-10 col-sm-3 text-center login-input">
					<input type="text" id="email1" name="email1" class="form-control form-control-sm inline-block" style="width:40%" placeholder="이메일">
					<span class="mx-2">@</span> 
					<select name = "email2" class="form-select form-select-sm inline-block w-50">
						<option value = "naver.com">naver.com</option>
						<option value = "gmail.com">gmail.com</option>
						<option value = "daum.net">daum.net</option> 
					</select>
				</div>
			</div>
			<div class="row justify-content-center my-3">
				<div class="col-10 col-sm-3 text-center login-input">
					 <input type = "text" id="phonenum" name="customerPhonenum" placeholder="전화번호" class=" form-control form-control-sm">
				</div>
			</div>
			<div class="row justify-content-center mt-3">
						
				<div class="col-7 col-sm-2 text-center" style="min-width: 16.5rem">
					<input type="text"	name="customerAddresscode1" id="addresscod1" class=" form-control form-control-sm" placeholder="우편번호" value="" >
				</div>
				<div class="col-3 col-sm-1 text-center" style="min-width: 8.25rem">
					<button onClick="goPopup();" type="button" class="btn btn-sm btn-primary">주소찾기</button>
				</div>
			</div>
			<div class="row justify-content-center my-1">
				<div class="col-10 col-sm-3 text-center login-input">
					<input type = "text" name="customerAddress1" id="address1" class=" form-control form-control-sm my-1" placeholder="시, 군, 구 주소" value="" >

					<input type = "text" name="customerAddress2" id="address2" class=" form-control form-control-sm" placeholder="상세주소" value=""> <br>
				</div>
			</div>
			<div class="row justify-content-center my-3">
				<div class="col-10 col-sm-3 text-center login-input">
					<input type = "text" name="customerRecommender" class=" form-control form-control-sm" placeholder="추천인"> <br>
				</div>
			</div>
			
			<div class="row justify-content-center my-3">
				<div class="col-6 col-sm-2 text-center" style="min-width: 16.5rem">
					<input type="submit" value="회원가입" class="w-100 btn btn-primary">
				</div>
				<div class="col-4 col-sm-1 text-center" style="min-width: 8.25rem">
					<a href="<%=path%>/" class="w-100 btn btn-danger">취소</a>
				</div>
			</div>
		</form>
	</div>
<script type="text/javascript">
	if(${passError eq null ? false : passError}){
		alert("비밀번호가 일치하지 않습니다.");
	}
	if(${success eq null ? false : success}){
		alert("회원가입이 완료되었습니다.");
		window.location.href = `${path}/`;
	}
</script>
</body>
</html>