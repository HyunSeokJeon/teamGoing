<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file = "/frontResource/dist/include/header.jspf" %>
  
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
    	
    	
       <!--   <div class="d-flex" id="wrapper"> -->
        	
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
            
<div class="container-fluid position-relative  aa" id="page-content-wrapper">
                <!--헤더부분 삽입 해야 됨-->
               
        		<nav class="navbar navbar-expand-lg navbar-light bg-light " style="margin-top:4rem">
        			<div class="collapse navbar-collapse d-flex justify-content-around " id="navbarSupportedContent">
        				<ul class="navbar-nav mr-auto ">
	        				  <li class="nav-item dropdown">
							        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							          메뉴1
							        </a>
							        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
							          <a class="dropdown-item" href="#">Action</a>
							          <a class="dropdown-item" href="#">Another action</a>
							          <div class="dropdown-divider"></div>
							          <a class="dropdown-item" href="#">Something else here</a>
							        </div>
						      </li>
	        				<li class="list-inline-item list-group-item mx-10" >분류2</li>
	        				<li class="list-inline-item list-group-item mx-10">분류3</li>
	        				<li class="list-inline-item list-group-item mx-10">분류4</li>
	        				<li class="list-inline-item list-group-item mx-10">분류5</li>
	        				<li class="list-inline-item list-group-item mx-10">분류6</li>
	        				<li class="list-inline-item list-group-item mx-10">분류7</li>
        				</ul>
        			</div>
        		</nav>
                <!-- Page content--> 
               		<!-- 마이페이지 -->
               		<div class="text-center my-5"><h3>마이페이지
               			</h3></div>
               			
               			
               		<!-- 주문 관련 버튼? -->	
               	<div class="container border border-dark w-100 h-25 ">
               			<div class="d-flex justify-content-around p-5 mt-5" >
               				<div class="mx-6">
               					<i class="bi bi-truck fs-icon text-left"></i>
               					<p class="fs-4">배송조회</p>
               				</div>
               				<div class="mx-6 text-center">
               					<i class="bi bi-wallet fs-icon"></i>
               					<p class="fs-4">쿠폰</p>
               				</div>
               				<div class="mx-6 text-center">
               					<i class="bi bi-journals fs-icon"></i>
               					<p class="fs-4">Q&A</p>
               				</div>
               				<div class="mx-6 text-center">
               					<i class="bi bi-question-circle fs-icon"></i>
               					<p class="fs-4">FAQ</p>
               				</div>
               			</div>
               			
               			
               	</div>
               			
               			
               <div class="d-flex justify-content-left">
               		<div class="">
               			1주일
               		</div>
               		<div>
               			1개월
               		</div>
               		<div>
               			3개월
               		</div>
               </div>
               			
               		
 		<div class=" border-top border-bottom border-dark bg-light container my-xl-5">
 			<div class="row">
 				<div class="border-top border-bottom my-3 col-2 text-center">
 					이미지
 				</div>
 				<div class="border-top border-bottom my-3 col-3 text-center">
 					상품정보
 				</div>
 				<div class= "border-top border-bottom my-3 col-2 text-center">
 					주문일자
 				</div>
 				<div class= "border-top border-bottom my-3 col-2 text-center">
 					주문금액
 				</div>
 				<div class= "border-top border-bottom my-3 col-2 text-center">
 					주문번호
 				</div>
 				<div class= "border-top border-bottom  my-3 col-1 text-center">
 					진행사항
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
 				<span>21.06.07</span>
 				</div>
 			<div class= "col-2 text-center">
 				<span>2,900</span>
 			</div >
 			<div class= "col-2 text-center">
 				<span>12345</span>
 			</div>
 			<div class= "col-1 text-center">
 				<span>배송 중</span>
 			</div>
 		</div>		
 	</div>

                

		 	
 	</div> 
 	
 
 </div>
 
 	<%@ include file = "/frontResource/dist/include/footer.jspf" %>    


