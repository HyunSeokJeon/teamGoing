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
<script type="text/javascript">
function goPopup(){ 
	var pop = window.open("/goingFront/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, 
		rnMgtSn, bdMgtSn , detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, 
		mtYn, lnbrMnnm, lnbrSlno, emdNo){ 
	// 2017년 2월 제공항목이 추가되었습니다. 원하시는 항목을 추가하여 사용하시면 됩니다. 
	// document.getElementById("address1").value = roadFullAddr; 
	// document.getElementById("address2").value = addrDetail; 
	// document.getElementById("addresscod1").value = zipNo;
	document.getElementById("address1").setAttribute("value", roadFullAddr); 
	document.getElementById("address2").setAttribute("value", addrDetail);
	document.getElementById("addresscod1").setAttribute("value",zipNo);
	}
</script>
</head>
<body>
	<div class="row justify-content-center">
		<div class="col-4 text-center">

			<a class="my-4" href="<%=path%>/main.go"><img
				src="<%=imgPath%>logo.png" /></a>
		</div>
	</div>
	<div class="form-group">
		<form name="joinForm" action="<%=request.getContextPath()%>/join.go"
			method="post" id="joinForm">
			<div class="row justify-content-center my-3">
				<div class="col-7 col-sm-2 text-center" style="min-width: 16.5rem">
					<input type="text" name="id" value="${param.id}" id="inputId" class=" form-control form-control-sm" placeholder="아이디 (5 ~ 12자 영문, 숫자, !@#만 가능)">
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
					<input type="password" name="password" id="password" class=" form-control form-control-sm" placeholder="비밀번호 (10자이상)">
					<span id="passConfirm"></span>
					<c:if test="${errors.password}">비밀번호를 입력하세요.</c:if>
				</div>
			</div>
			<div class="row justify-content-center my-3">
				<div class="col-10 col-sm-3 text-center login-input">
					<input type="password" name="repassword" id="repassword" class=" form-control form-control-sm" placeholder="비밀번호 확인"> <br>
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
					<input type="text" id="name" name="name" class=" form-control form-control-sm" placeholder="이름"> <br>
					<c:if test="${errors.name}">이름을 입력하세요.</c:if>
				</div>
			</div>
			<div class="row justify-content-center my-3">
				<div class="col-10 col-sm-3 text-center login-input">
					<select name="birthday1" class="form-select form-select-sm inline-block" style="width:48% !important">
						<option value="1980">1980</option>
						<option value="1981">1981</option>
						<option value="1982">1982</option>
						<option value="1983">1983</option>
						<option value="1984">1984</option>
						<option value="1985">1985</option>
						<option value="1986">1986</option>
						<option value="1987">1987</option>
						<option value="1988">1988</option>
						<option value="1989">1989</option>
						<option value="1990">1990</option>
						<option value="1991">1991</option>
						<option value="1992">1992</option>
						<option value="1993">1993</option>
						<option value="1994">1994</option>
						<option value="1995">1995</option>
						<option value="1996">1996</option>
						<option value="1997">1997</option>
						<option value="1998">1998</option>
						<option value="1999">1999</option>
						<option value="2000">2000</option>
						<option value="2001">2001</option>
						<option value="2002">2002</option>
						<option value="2003">2003</option>
					</select>
					<select name="birthday2" class="form-select form-select-sm inline-block w-25">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>
					<select name="birthday3" class="form-select form-select-sm inline-block w-25">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<option value="21">21</option>
						<option value="22">22</option>
						<option value="23">23</option>
						<option value="24">24</option>
						<option value="25">25</option>
						<option value="26">26</option>
						<option value="27">27</option>
						<option value="28">28</option>
						<option value="29">29</option>
						<option value="30">30</option>
						<option value="31">31</option>

					</select>
				</div>
			</div>
			<div class="row justify-content-center my-3">
				<div class="col-10 col-sm-3 text-left login-input ">
					<span class="mx-5">성별:</span>
					<input type="radio" name="gender" value="M" checked="checked"> 남자 <span class="mx-5"></span>
					<input type="radio" name="gender" value="W"> 여자
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
					 <input type = "text" id="phonenum" name="phonenum" placeholder="전화번호" class=" form-control form-control-sm">
				</div>
			</div>
			<div class="row justify-content-center mt-3">
						
				<div class="col-7 col-sm-2 text-center" style="min-width: 16.5rem">
					<input type="text"	name="addresscod1" id="addresscod1" class=" form-control form-control-sm" placeholder="우편번호" value="" >
				</div>
				<div class="col-3 col-sm-1 text-center" style="min-width: 8.25rem">
					<button onClick="goPopup();" type="button" class="btn btn-sm btn-primary">주소찾기</button>
				</div>
			</div>
			<div class="row justify-content-center my-1">
				<div class="col-10 col-sm-3 text-center login-input">
					<input type = "text" name="address1" id="address1" class=" form-control form-control-sm my-1" placeholder="시, 군, 구 주소" value="" >

					<input type = "text" name="address2" id="address2" class=" form-control form-control-sm" placeholder="상세주소" value=""> <br>
				</div>
			</div>
			<div class="row justify-content-center my-3">
				<div class="col-10 col-sm-3 text-center login-input">
					<input type = "text" name="recommender" class=" form-control form-control-sm" placeholder="추천인"> <br>
				</div>
			</div>
			
			<div class="row justify-content-center my-3">
				<div class="col-6 col-sm-2 text-center" style="min-width: 16.5rem">
					<input type="submit" value="회원가입" class="w-100 btn btn-primary">
				</div>
				<div class="col-4 col-sm-1 text-center" style="min-width: 8.25rem">
					<a href="<%=path%>/main.go" class="w-100 btn btn-danger">취소</a>
				</div>
			</div>
		</form>
	</div>

</body>
</html>