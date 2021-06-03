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
            <div class="border-end bg-white" id="sidebar-wrapper">
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">카테고리1</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">카테고리2</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">카테고리3</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">카테고리4</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">카테고리5</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">카테고리6</a>
                </div>
            </div>
            <!-- Page content wrapper-->
            <div class="container-fluid" id="page-content-wrapper">
                <!--헤더부분 삽입 해야 됨-->
                
                <!-- Page content-->
                
               		<!-- 상품 정보 -->
 		<div class=" row container-fluid">
 				<h3>Product Info 상품정보</h3>
 				<div class="border col-2 text-center">
 					이미지
 				</div>
 				<div class="border col-3 text-center">
 					상품정보
 				</div>
 				<div class= "border col-2 text-center">
 					판매가
 				</div>
 				<div class= "border col-1 text-center">
 					수량
 				</div>
 				<div class= "border col-1 text-center">
 					배송구분
 				</div>
 				<div class= "border col-1 text-center">
 					배송비
 				</div>
 				<div class= "border col-2 text-center">
 					합계
 				</div>
 		</div> 
               
                <div>
                	<h3>
                		구매자 정보
                	</h3>
                </div>
		 <!--  구매자 정보 --> 
  		 <div class="border-top border-bottom bg-light">            
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
 </div>
 
 		<div>
 			<h3>
 			 배송 정보
 			</h3>
 		</div>
 	
 	
     <!--  수령자 정보 -->
 <div class="border-top border-bottom bg-light">    
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
 		
 

 	</div>
 </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="../dist/js/scriptssidebar.js"></script>
    </body>
</html>
