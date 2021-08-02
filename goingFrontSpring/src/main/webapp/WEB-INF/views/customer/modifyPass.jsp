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
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>비밀번호 변경</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<%=cssPath %>styles.css" rel="stylesheet" />
        <link href="<%=cssPath %>styles.custom.css" rel="stylesheet" />
    </head>
       <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-light text-uppercase fixed-top" id="mainNav">
            <div class="container justify-content-center">
                <a class="navbar-brand" href="#page-top"><img src="<%=imgPath%>goingLogo.png"/></a>
            </div>
        </nav>
		<div class="container justify-content-center" style="padding-top:100px">
			<div class="text-center"><p class="h2">비밀번호 변경</p></div> 
			<form action="#">
				<div class="form-group my-4">
					<label for="currentPassword" class="h5 font-weight-bold">현재 비밀번호</label> <input
						class="form-control form-control-sm mt-2 mb-4" id="currentPassword"
						placeholder="현재 비밀번호">
				</div>
				<div class="form-group my-4">
					<label for="currentPassword" class="h5 font-weight-bold">비밀번호 변경</label> <input
						class="form-control form-control-sm mt-2" id="currentPassword"
						placeholder="비밀번호 변경">
				</div>
				<div class="form-group my-4">
					<label for="modifiedPasswordCHeck" class="h5 font-weight-bold">비밀번호 확인</label> <input
						class="form-control form-control-sm mt-2" id="modifiedPasswordCHeck"
						placeholder="비밀번호 확인">
				</div>
				<div class="text-right"><button class="btn btn-primary btn-hxs-wxl mx-2" type="submit">확인</button>
				<button class="btn btn-danger btn-hxs-wxl mx-2" type="submit">취소</button></div>
					
			</form>
		</div>

<%@ include file="/frontResource/dist/include/footer.jspf"%>
<!-- #TODO footer 완성되는거 보고 새로작업 여부 재확인 -->