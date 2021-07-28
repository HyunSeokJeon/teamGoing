<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ include file = "/WEB-INF/views/include/header.jspf" %>
  <%
  	
/*   	User user = null;
  	String name = null;
  	String id = null;
	  if(session.getAttribute("authUser") instanceof User){
		  	user = (User)session.getAttribute("authUser");
		  	name = user.getName();
		  	id = user.getId();
	  }else {
		  
	  }  */
    %>

<!DOCTYPE html>
<html lang="en">
    <head>
    
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Simple Sidebar - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../dist/css/stylessidebar.css" rel="stylesheet" />
    </head>
    <body>
    	
    	
        <div class="d-flex" id="wrapper">
            <!-- Page content wrapper-->
            
<div class="container-fluid" id="page-content-wrapper">
                <!--헤더부분 삽입 해야 됨-->
               
        		<!-- <nav class="navbar navbar-expand-lg navbar-light  " style="margin-top:4rem">
        			<div class="collapse navbar-collapse d-flex justify-content-around " id="navbarSupportedContent">
	        				<button class="border-0 btn btn-dark list-inline-item   mx-10" >콘서트</button>
	        				<button class="border-0 btn btn-dark list-inline-item  mx-10">영화</button>
	        				<button class="border-0 btn btn-dark list-inline-item  mx-10">전시회</button>
	        				<button class="border-0 btn btn-dark list-inline-item  mx-10">연극</button>
	        				<button class="border-0 btn btn-dark list-inline-item  mx-10">뮤지컬</button>
        			</div> 
        		</nav> -->
     <div class="container-fluid position-relative" id="page-content-wrapper">
	<!--헤더부분 삽입 해야 됨-->

	<nav class="navbar navbar-expand-lg navbar-light  "
		style="margin-top: 5rem ">
		<div class="collapse navbar-collapse d-flex justify-content-center "
			id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto ">
				<li class="nav-item dropdown"><a class="nav-link fs-4" href="#"
					id="navbarDropdown1" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Home <i
						class="bi bi-pause-fill"></i>
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div></li>

			</ul>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown"><a class="nav-link fs-4 "
					href="#" id="navbarDropdown2" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> 인기 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div></li>
			</ul>

			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown"><a class="nav-link fs-4" href="#"
					id="navbarDropdown3" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> 브랜드 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div></li>
			</ul>

			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown"><a class="nav-link fs-4" href="#"
					id="navbarDropdown4" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> 콘텐츠 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div></li>
			</ul>

			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown"><a class="nav-link fs-4" href="#"
					id="navbarDropdown5" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> 이벤트 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div></li>
			</ul>

			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown"><a class="nav-link fs-4" href="#"
					id="navbarDropdown6" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> 마이페이지 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div></li>
			</ul>


		</div>
	</nav>
</div>
        		
                <!-- Page content-->
                
               		<!-- 상품 정보 -->
               		<div class="text-center my-5"><h3>상품정보
               			</h3></div>
               		
 		<div class=" border-top border-bottom border-dark  container">
 			<div class="row">
 				<div class="border-top border-bottom my-3 col-2 text-center">
 					이미지
 				</div>
 				<div class="border-top border-bottom my-3 col-3 text-center">
 					상품정보
 				</div>
 				<div class= "border-top border-bottom my-3 col-2 text-center">
 					판매가
 				</div>
 				<div class= "border-top border-bottom  my-3 col-1 text-center">
 					수량
 				</div>
 				<div class= "border-top border-bottom  my-3 col-1 text-center">
 					배송구분
 				</div>
 				<div class= "border-top border-bottom  my-3 col-1 text-center">
 					배송비
 				</div>
 				<div class= "border-top border-bottom  my-3 col-2 text-center">
 					합계	
 				</div>
 			</div>
 				
 		<div class = "container">
 			<div class= "row">
 				<div class=" col-2 text-center" >
 					<img src="<%=path %>/viewimg?fileName=<%=request.getParameter("productImage") %>"  class="rounded float-left">
 				</div >
 			<div class="col-3 text-center">
 				<span><%=request.getParameter("productName") %></span>
 			</div>
 			<div class= "col-2 text-center">
 				<span><%=request.getParameter("productPrice") %></span>
 			</div >
 			<div class= "col-1 text-center">
 				<span>1</span>
 			</div>
 			<div class= "col-1 text-center">
 				<span>%</span>
 			</div>
 			<div class= "col-1 text-center">
 				<span>3,000</span>
 			</div>
 			<div class= "col-2 text-center">
 				<span>55,900</span>
 			</div>
 			</div>		
 		</div>		
 	
 </div>	
                <div class="my-4 text-center">
                	<h3>
                		구매자 정보
                	</h3>
                </div>
		 <!--  구매자 정보 --> 
  		 <div class="border-top border-bottom border-dark  container"> 
  		 <form>           
  	<div class="form-row"  id="chekform">
  		<div class="form-check">
			  <input class="form-check-input" type="checkbox"  value="12"    id="checkmain"  checked>
			  <label class="form-check-label" for="checkmain" >
			    동일
			  </label>
		</div>
		</div>
    	<dl class="row">
		      <dt class="col-sm-6 text-left">구매자 성명</dt>
		      <input type="text" class="col-sm-3 "  disabled id="CUSTOMERNAME" name = "checkInfo" value ="${ec.CUSTOMERNAME}"placeholder="">
		      <input type="text" class="form-control-plaintext " disabled id="CUSTOMERNAME"  name = "checkInfo" value ="${ec.CUSTOMERNAME}" placeholder="">
 		</dl>
 		   <dl class="row">
		      <dt class="col-sm-6 text-left">전화번호</dt>
		     <input type="text" class="col-sm-3 "  disabled id="phoneNumber" name = "checkInfo" value = "${ec.CUSTOMERPHONENUM }"placeholder="하이픈(-)없이 작성해주세요">
		 </dl>
 		   <dl class="row">
		      <dt class="col-sm-6 text-left">배송지 주소</dt>
		      <input type="text" class="col-sm-3 "  disabled id="inputAddress" name = "checkInfo" value ="${ec.CUSTOMERADDRESS1 }"placeholder="">
		 </dl>
		  <dl class="row">
		      <dt class="col-sm-6 text-left">요청 메모</dt>
		      <input type = "text" class= "col-sm-6 "  >
		 </dl>
		  <dl class="row">
		      <dt class="col-sm-6 text-left">이메일</dt>
		      <input type="text" class="col-sm-3 "  disabled id="email" name = "checkInfo" value ="${ec.CUSTOMEREMAIL }"placeholder="">
		 </dl>
 	</form>
</div>
 		<div class="my-4 text-center">
 			<h3>
 			 배송 정보
 			</h3>
 		</div>
 	
 	
     <!--  수령자 정보 -->
 <div class="border-top border-bottom border-dark bg-light fs-6 container">    
			
			
			<dl class="row my-1 ">
				<dt class="col-sm-6 text-left">수령인</dt>
				 <input type = "text" class= "col-sm-3 "  >
			</dl>
			<dl class="row">
				<dt class="col-sm-6 text-left">전화번호</dt>
				 <input type = "text" class= "col-sm-3 "  >
			</dl>
			<dl class="row">
				<dt class="col-sm-6 text-left">우편번호</dt>
				<dt class="col-sm-6">
				 <input type = "text" class= "col-sm-3 " name = "addresscod1" id="addresscod1" >
				 <input type="button" class="col-sm-3   btn-primary " value ="주소 찾기" onclick="goPopup();"> 
				 </dt>
			</dl>
			<dl class="row">
				<dt class="col-sm-6 text-left">배송지 주소</dt>
				 <input type = "text" class= "col-sm-6 " name = "address1" id="address1" >
			</dl>
			<dl class="row">
				<dt class="col-sm-6 text-left">상세 주소</dt>
				 <input type = "text" class= "col-sm-6 "  name = "address2" id="address2">
			</dl>
			<dl class="row">
				<dt class="col-sm-6 text-left ">요청 메모</dt>
				 <input type = "text" class= "col-sm-6 "  >
			</dl>
			
 	</div>

<!-- 쿠폰 사용 -->
<div class="my-4 text-center" >
	<h3>쿠폰/적립금</h3>
</div>
	<div class="border-top border-bottom border-dark bg-light container">
		<dl class="row ">
			<dt class="col-sm-2 text-left">쿠폰</dt>
			<dd class= "col-sm-10 ">
				<input type="text" >
				<input type="button" class="btn-primary" value="쿠폰조회" onclick="showPopup();"/>
			</dd>
		</dl>
			<dl class="row ">
			<dt class="col-sm-2 text-left">적립금</dt>
			<dd class= "col-sm-10">
				<input type="text" >
				<input type="button"  class= "btn-primary" value="적립금 조회">
			</dd>
		</dl>
		<dl class= "row">
			<dt class= "col-sm-2 text-left">적용</dt>
			<dd class= "col-sm-10">생일자 쿠폰 10%</dd>
		</dl>
		</div>

 
 <!--  최종 결제 -->
 	<div class="my-4 text-center">
 		<h3>최종 결제</h3>
 	</div>
		<div class="border-top border-bottom border-dark bg-light container">
			<dl class="row">
				<dt class="col-sm-6 text-left">총 상품 금액</dt>
				<dd class="col-sm-6 text-right"><%=request.getParameter("productPrice") %></dd>
			</dl>
			<dl class="row">
				<dt class="col-sm-6 text-left">배송비</dt>
				<dd class="col-sm-6 text-right">3,000</dd>
			</dl>
			<dl class="row">
				<dt class="col-sm-6 text-left">보유 쿠폰 할인</dt>
				<dd class="col-sm-6 text-right">2,000</dd>
			</dl>
			<dl class="row">
				<dt class="col-sm-6 text-left">보유 적립금 할인</dt>
				<dd class="col-sm-6 text-right">2,000</dd>
			</dl>
			<dl class="row">
				<dt class="col-sm-6 text-left">할인 합계</dt>
				<dd class="col-sm-6 text-right">3,000</dd>
			</dl>
			<dl class="row">
				<dt class="col-sm-6 text-left fs-2">총 결제 금액</dt>
				<dd class="col-sm-6 text-right fs-2">20,000</dd>
			</dl>
		</div>
<!-- 결제 수단 -->		
<div>
	<h3 class="my-4 text-center">결제 수단</h3>
</div>
	<div class="border-top border-bottom border-dark bg-light container">
			<div class= "form-check form-check-inline">
		<input type="radio" name="paymethod"  value="PAY_NAVER" id="pay1">
		<label class="form-check-label"  for="pay1">네이버 페이</label>
			</div>
			<div class= "form-check form-check-inline">
		<input type="radio" name="paymethod"  value="PAY_NAVER" id="pay1">
		<label class="form-check-label"  for="pay1">카카오 페이</label>
			</div>
			<div class= "form-check form-check-inline">
		<input type="radio" name="paymethod"  value="PAY_NAVER" id="pay1">
		<label class="form-check-label"  for="pay1">신용/체크카드</label>
			</div>
			<div class= "form-check form-check-inline">
		<input type="radio" name="paymethod"  value="PAY_NAVER" id="pay1">
		<label class="form-check-label"  for="pay1">무통장 입금</label>
			</div>
			<div class= "form-check form-check-inline">
		<input type="radio" name="paymethod"  value="PAY_NAVER" id="pay1">
		<label class="form-check-label"  for="pay1">휴대폰 결제</label>
			</div>
			<div class= "form-check form-check-inline">
		<input type="radio" name="paymethod"  value="PAY_NAVER" id="pay1">
		<label class="form-check-label"  for="pay1">toss</label>
			</div>
		</div>
	<div></div>
	<div></div>	
<!-- 결제하기 버튼 -->
<div class="nav-item mx-0 mx-lg-1 text-center my-5">
	<a class=" px-5 px-lg-5 rounded btn btn-primary btn-lg" href="#portfolio">결제하기</a>
</div>
 	</div> 
 </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../dist/js/scriptssidebar.js"></script>
    </body>
</html>
	<script language = "javascript">
function showPopup(){
	window.open("/goingFront/coupon.go?couponID=?","쿠폰 조회", "width=500, height=300, left=100, top=50");
}


var chek = document.getElementById("checkmain");

var chekN	= document.getElementsByName('checkInfo');


let che = ["${ec.CUSTOMERNAME}", "${ec.CUSTOMERPHONENUM }", "${ec.CUSTOMERADDRESS1 }", "${ec.CUSTOMEREMAIL }"];

chek.addEventListener('change', function(){
	if(chek.checked == false){
		for(var i=0;  i<chekN.length; i++){
			chekN[i].value="";
			chekN[i].disabled = false;
		}
		
	}else {
		for(var i=0; i<chekN.length; i++){
				chekN[i].value = che[i];	
				chekN[i].disabled = true;
		}
		
	}
});	 

function goPopup(){ 
	var pop = window.open("/frontResource/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, 
		rnMgtSn, bdMgtSn , detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, 
		mtYn, lnbrMnnm, lnbrSlno, emdNo){ 
	// 2017년 2월 제공항목이 추가되었습니다. 원하시는 항목을 추가하여 사용하시면 됩니다. 
	document.getElementById("address1").value = roadFullAddr; 
	document.getElementById("address2").value = addrDetail; 
	document.getElementById("addresscod1").value = zipNo; }


</script>