<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
  <%@ include file = "../../frontResource/dist/include/header.jspf" %>
  
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
        	
            <!-- Sidebar-->
            <!--  <div class="border-end bg-white" id="sidebar-wrapper">
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">카테고리1</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">카테고리2</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">카테고리3</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">카테고리4</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">카테고리5</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">카테고리6</a>
                </div>
            </div>-->
            <!-- Page content wrapper-->
            <div class="container-fluid" id="page-content-wrapper">
                <!--헤더부분 삽입 해야 됨-->
                
                <!-- Page content-->
                
               		<!-- 상품 정보 -->
               		<div class="text-center my-3"><h3>Product Info 상품정보
               			</h3></div>
               		
 		<div class=" border-top border-bottom border-dark bg-light container">
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
 				<div class=" col-2 text-center">
 					<img src=""  class="rounded float-left">
 				</div >
 			<div class="col-3 text-center">
 				<span>[단독특가]올시즌 스탠다드 핏 슬랙스 (시그니쳐 합섬) - 블랙[레가시]</span>
 			</div>
 			<div class= "col-2 text-center">
 				<span>52,900</span>
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
  		 <div class="border-top border-bottom border-dark bg-light container">            
  	<div class="form-row">
    	<div class="form-group col-md-6">
		      <label for="buyername">구매자</label>
		      <input type="text" class="form-control" id="buyername" placeholder="">
    	</div>
    <div class="form-group col-md-6">
			      <label for="phoneNumber">전화번호</label>
			      <input type="text" class="form-control" id="phoneNumber" placeholder="하이픈(-)없이 작성해주세요">
    </div>
  </div>
  <div class="form-group col-md-6">
		    <label for="inputAddress">배송지 주소</label>
		    <input type="text" class="form-control" id="inputAddress" placeholder="">
  </div>
  <div class="form-group col-md-6">
		    <label for="reqMemo">요청 메모</label>
		    <input type="text" class="form-control" id="reqMemo" placeholder="">
  </div>
  	<div class="form-group col-md-6">
		    <label for="email">이메일</label>
		    <input type="email" class="form-control" id="email" placeholder="">
  </div>
 </div>
 
 		<div class="my-4 text-center">
 			<h3>
 			 배송 정보
 			</h3>
 		</div>
 	
 	
     <!--  수령자 정보 -->
 <div class="border-top border-bottom border-dark bg-light fs-6 container">    
 <div class="form-row">
    <div class="form-group col-md-6">
	      <label for="inputname">수령인</label>
	      <input type="text" class="form-control" id="inputname" placeholder="">
    </div>
    <div class="form-group col-md-6">
	      <label for="phoneNumber">전화번호</label>
	      <input type="text" class="form-control" id="phoneNumber" placeholder="하이픈(-)없이 작성해주세요">
    			</div>
 		 </div>
  		<div class="form-group col-md-6">
	    	<label for="inputAddress">배송지 주소</label>
	    	<input type="text" class="form-control" id="inputAddress" placeholder="">
  		</div>
  	<div class="form-group col-md-6">
	    <label for="reqMemo">요청 메모</label>
	    <input type="text" class="form-control" id="reqMemo" placeholder="">
  		</div>
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
				<input type="button"  value="쿠폰조회">
			</dd>
		</dl>
			<dl class="row ">
			<dt class="col-sm-2 text-left">적립금</dt>
			<dd class= "col-sm-10">
				<input type="text" >
				<input type="button"  value="적립금 조회">
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
				<dd class="col-sm-6 text-right">52,900</dd>
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
