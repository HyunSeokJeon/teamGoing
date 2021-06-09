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
            
<div class="container-fluid position-relative" id="page-content-wrapper">
                <!--헤더부분 삽입 해야 됨-->
               
        		<nav class="navbar navbar-expand-lg navbar-light bg-light " style="margin-top:4rem">
        			<div class="collapse navbar-collapse d-flex justify-content-center " id="navbarSupportedContent">
        				<ul class="navbar-nav mr-auto ">
	        				  <li class="nav-item dropdown">
							        <a class="nav-link fs-4" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							          Home
							        </a>
							        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
							          <a class="dropdown-item" href="#">Action</a>
							          <a class="dropdown-item" href="#">Another action</a>
							          <div class="dropdown-divider"></div>
							          <a class="dropdown-item" href="#">Something else here</a>
							        </div>
						      </li>
	        						<ul class="navbar-nav mr-auto">
	        							<li class="nav-item dropdown">
	        								<a class="nav-link fs-4 " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										          인기
										    </a>
										        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
										          <a class="dropdown-item" href="#">Action</a>
										          <a class="dropdown-item" href="#">Another action</a>
										          <div class="dropdown-divider"></div>
										          <a class="dropdown-item" href="#">Something else here</a>
										        </div>
	        							</li>
	        						</ul>
	        						
	        						<ul class="navbar-nav mr-auto">
	        							<li class="nav-item dropdown">
	        								<a class="nav-link fs-4" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										          브랜드
										    </a>
										        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
										          <a class="dropdown-item" href="#">Action</a>
										          <a class="dropdown-item" href="#">Another action</a>
										          <div class="dropdown-divider"></div>
										          <a class="dropdown-item" href="#">Something else here</a>
										        </div>
	        							</li>
	        						</ul>
	        						
	        						<ul class="navbar-nav mr-auto">
	        							<li class="nav-item dropdown">
	        								<a class="nav-link fs-4" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										          콘텐츠
										    </a>
										        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
										          <a class="dropdown-item" href="#">Action</a>
										          <a class="dropdown-item" href="#">Another action</a>
										          <div class="dropdown-divider"></div>
										          <a class="dropdown-item" href="#">Something else here</a>
										        </div>
	        							</li>
	        						</ul>
	        						
	        						<ul class="navbar-nav mr-auto">
	        							<li class="nav-item dropdown">
	        								<a class="nav-link fs-4" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										          이벤트
										    </a>
										        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
										          <a class="dropdown-item" href="#">Action</a>
										          <a class="dropdown-item" href="#">Another action</a>
										          <div class="dropdown-divider"></div>
										          <a class="dropdown-item" href="#">Something else here</a>
										        </div>
	        							</li>
	        						</ul>
	        						
	        						<ul class="navbar-nav mr-auto">
	        							<li class="nav-item dropdown">
	        								<a class="nav-link fs-4" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										          마이페이지
										    </a>
										        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
										          <a class="dropdown-item" href="#">Action</a>
										          <a class="dropdown-item" href="#">Another action</a>
										          <div class="dropdown-divider"></div>
										          <a class="dropdown-item" href="#">Something else here</a>
										        </div>
	        							</li>
	        						</ul>
        				</ul>
        			</div>
        		</nav>
                <!-- Page content--> 
               		<!-- 상품 제목-->
               	<div class="container border border-dark  d-grid">
               			<div class="fs-4">
               				&lt2021&gt싸이 흠뻑 쇼
               			</div>
               				<!-- 상품 상세 -->
               				<div class="container border border-dark inline-block" >
               					<div class="d-inline-block">
               					<img src="../../frontResource/dist/img/psy.jpg" align="left" >
               					</div>
               						
               					<ul class="list-unstyled list-group-item fs-4 d-inline-block">
               						<li>
               						장소
               								<span>잠실종합운동장</span>
               						</li>
               							
               						<li>공연시간
               							<span>18:30 ~ 23:30</span>
               						</li>
               						<li>관람연령
               								<span>전 연령 관람</span>
               						</li>
               						<li>가격
               								<div>96,000 ~ 156,000</div>
               								<ul class="list-unstyled">
               									<li>R석</li>
               									<li>S석</li>
               								</ul>

               						</li>
               						<li>혜택
               								<ul>무이자 할부
               											<li>가입하고 중복할인 쿠폰받기</li>
														<li>[AD] SKT 고객전용 특별할인! 12,000원 쿠폰받기</li>
														<li>[AD] 티켓할인쿠폰 마감임박! 11,000원 쿠폰받기</li>
														<li>[AD] 6,000원! 할인쿠폰 받고 티켓 예매하기 </li>
														<li>[AD] 티켓 3천원 할인쿠폰 + 편의점 3천원 증정		</li>
               								</ul>
               						</li>
               					</ul>
               					</div>
               					
               				<div class="d-flex justify-context-around border border-dark">
				<ul class="list-group list-group-horizontal">
					<li class="list-group-item">공연정보</li>
					<li class="list-group-item">부가정보</li>
					<li class="list-group-item">관람후기</li>
				</ul>          
          </div>  
               				
               				
           </div>		
 </div>
         
 
 	<%@ include file = "/frontResource/dist/include/footer.jspf" %>    


