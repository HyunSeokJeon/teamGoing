<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/frontResource/dist/include/header.jspf"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
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

	<div class="container-fluid position-relative"
		id="page-content-wrapper">
		<!--헤더부분 삽입 해야 됨-->

		<nav class="navbar navbar-expand-lg navbar-light bg-light "
			style="margin-top: 10rem">
			<div class="collapse navbar-collapse d-flex justify-content-center "
				id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto ">
					<li class="nav-item dropdown"><a class="nav-link fs-4"
						href="#" id="navbarDropdown1" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Home </a> <!-- 
							        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
							          <a class="dropdown-item" href="#">Action</a>
							          <a class="dropdown-item" href="#">Another action</a>
							          <div class="dropdown-divider"></div>
							          <a class="dropdown-item" href="#">Something else here</a>
							        </div> --></li>
					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown"><a class="nav-link fs-4 "
							href="#" id="navbarDropdown2" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								인기 </a> <!--  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
										          <a class="dropdown-item" href="#">Action</a>
										          <a class="dropdown-item" href="#">Another action</a>
										          <div class="dropdown-divider"></div>
										          <a class="dropdown-item" href="#">Something else here</a>
										        </div>--></li>
					</ul>

					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown"><a class="nav-link fs-4"
							href="#" id="navbarDropdown3" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								브랜드 </a> <!-- 
										        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
										          <a class="dropdown-item" href="#">Action</a>
										          <a class="dropdown-item" href="#">Another action</a>
										          <div class="dropdown-divider"></div>
										          <a class="dropdown-item" href="#">Something else here</a>
										        </div> --></li>
					</ul>

					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown"><a class="nav-link fs-4"
							href="#" id="navbarDropdown4" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								콘텐츠 </a> <!-- 
										        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
										          <a class="dropdown-item" href="#">Action</a>
										          <a class="dropdown-item" href="#">Another action</a>
										          <div class="dropdown-divider"></div>
										          <a class="dropdown-item" href="#">Something else here</a>
										        </div> --></li>
					</ul>

					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown"><a class="nav-link fs-4"
							href="#" id="navbarDropdown5" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								이벤트 </a> <!-- <div class="dropdown-menu" aria-labelledby="navbarDropdown">
										          <a class="dropdown-item" href="#">Action</a>
										          <a class="dropdown-item" href="#">Another action</a>
										          <div class="dropdown-divider"></div>
										          <a class="dropdown-item" href="#">Something else here</a>
										        </div> --></li>
					</ul>

					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown"><a class="nav-link fs-4"
							href="#" id="navbarDropdown6" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								마이페이지 </a> <!--  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
										          <a class="dropdown-item" href="#">Action</a>
										          <a class="dropdown-item" href="#">Another action</a>
										          <div class="dropdown-divider"></div>
										          <a class="dropdown-item" href="#">Something else here</a>
										        </div> --></li>
					</ul>
				</ul>
			</div>
		</nav>
	</div>
	<!-- Page content-->
	<!-- 상품 제목-->
	<div class=" container border-top border-bottom border-dark ">
		<div class="row">
			<div class="col-8">
				<div class="row">
					<div class="col-4">
						<div class="fs-4">&lt2021&gt싸이 흠뻑 쇼</div>

						<img src="../../frontResource/dist/img/psy.jpg" class="h-auto"
							align="left">
					</div>

					<div class="col">
						<ul class="list-group  ps-5 fs-5">
							<li class="list-inline-item"><strong>장소</strong> <span
								class="ps-5">잠실종합운동장</span></li>

							<li class="list-inline-item mt-5"><strong>공연시간</strong> <span
								class="ps-3"> 18:30 ~ 22:30</span></li>
							<li class="list-inline-item mt-5"><strong>관람연령</strong> <span
								class="ps-3"> 전 연령</span></li>
							<li class="list-inline-item mt-5"><strong>가격</strong> <span
								class="ps-5"> 96,000 ~ 156,000</span></li>
							<li class="list-inline-item "><strong>R 석</strong> <span
								class="ps-5"> 156,000</span></li>
							<li class="list-inline-item "><strong>S 석</strong> <span
								class="ps-5"> 96,000</span></li>

							<li class="list-inline-item mt-5"><strong>혜택</strong> <span
								class="ps-5"> 무이자할부</span></li>
							<li class="list-inline-item"><span> [AD] 티켓 3천원 할인쿠폰
									+ 편의점 3천원 증정<i class="bi bi-arrow-right"></i>

							</span></li>
							<li class="list-inline-item"><span>가입하고 중복할인 쿠폰받기<i
									class="bi bi-arrow-right"></i>
							</span></li>
						</ul>


					</div>
				</div>

				


				<!-- 사진 윗 부분 -->

				<div
					class="justify-context-around  border-bottom mt-5 row">
					<ul class="list-group list-group-horizontal">
						<li class="list-group-item ">공연정보</li>
						<li class="list-group-item ps-3">부가정보</li>
						<li class="list-group-item ps-3">관람후기</li>
					</ul>
				</div>
				<!-- 캐스팅 Start -->
				<div class="container mt-5">
					<div class="row">
						<h3>캐스팅</h3>


						<div class="mt-5">
							<img src="../../frontResource/dist/img/psys.gif">
							<p>싸이</p>
						</div>
					</div>
					<!-- 캐스팅 정보 End -->

					<div class="container mt-5">
						<div class="row">
							<h3>공연시간 정보</h3>
						</div>
						<div class="mt-2">예매가능시간 : 관림 2시간전</div>
						<div class="mt-2">2019년 8월 24일 토요일 오후 6시 42분</div>

					</div>

					<div class="container mt-5">
						<h3>공지사항</h3>
						<p>※ 매수제한 : 회원별 1인 4매</p>
						<p>※ 본 공연은 티켓 불법 양도 및 재판매 근절을 위해 무통장 입금을 제외한 신용카드 / 체크카드 /
							카카오페이 등을 이용해 1인 4매까지만 구매 가능합니다.</p>
						<p>※ 스탠딩석 번호는 입장 순서입니다. 예매 시 빠른 번호를 선택할수록 입장 순서가 빨라집니다. 입장이
							시작된 이후에는 예매하신 번호가 무효 되며, 별도로 마련된 스탠딩 입장 지연관객 대기구역에 대기 후 입장하시게 되고
							이로 인한 티켓 환불은 불가합니다.
						<p>※ 연출안에 따라 무대가 변경될 수 있습니다.</p>
						<p>※ 공연 당일 혼잡함을 방지하기 위해 초기 예매분은 일괄 배송 방식으로만 운영합니다.</p>
						<p>※ 일괄 배송 시작일 : 2019년 07월 30일(화) ~ 2019년 08월 02일(금)</p>
						<p>※ 티켓 분실/파손/도난 등 어떠한 경우에도 재발권이 불가하며, 티켓 미소지시에는 입장이 불가하오니 티켓
							보관에 유의해 주시기 바랍니다.</p>
					</div>
				</div>
				<div class="container mt-5">
					<h3>공연상세/출연진 정보</h3>
					<div class="row">
						<img src="../../frontResource/dist/img/psyd.jpg">
					</div>

				</div>

				
				
			</div>
			<!-- Main End -->
			<div class="col-4 " >
					<div class="dxbs-calendar card" id="Content_CalendarDefault"
						tabindex="0" aria-label="Calendar. Use arrow keys to navigate."
						data-observed="true">
						<div class="calendar-row">
							<div class="calendar-view card">
								<div class="card-header btn-group">
									<span id="Content_CalendarDefault_PYC" class="btn"> <span
										aria-hidden="true" class="dxbs-icon dxbs-icon-backward">
									</span>
									</span> <span id="Content_CalendarDefault_PYC" class="d-none btn">
										<span aria-hidden="true"
										class="dxbs-icon dxbs-icon-angle-left"></span>
									</span>
								</div>
								<div class="card-body">
									<table class="dxbs-month-table table table-sm table-bordered">
										<tbody>
											<tr class="text-center">
												<td></td>
												<th class="dxbs-calendar-dow">Sun</th>
												<th class="dxbs-calendar-dow">Mon</th>
												<th class="dxbs-calendar-dow">Tue</th>
												<th class="dxbs-calendar-dow">Wed</th>
												<th class="dxbs-calendar-dow">Thu</th>
												<th class="dxbs-calendar-dow">Fri</th>
												<th class="dxbs-calendar-dow">Sat</th>

											</tr>
											<tr class="text-center">
												<td class="text-right"><small></small></td>
												<td class="dxbs-day dxbs-weekend text-danger table-active">
													<small></small>
												</td>
												<td class="dxbs-day"><small></small></td>
												<td class="dxbs-day"><a>1</a></td>
												<td class="dxbs-day"><a>2</a></td>
												<td class="dxbs-day"><a>3</a></td>
												<td class="dxbs-day"><a>4</a></td>
												<td class="dxbs-day dxbs-weekend text-danger"><a>5</a></td>
											</tr>
											<tr class="text-center">
												<td class="text-right "><a></a></td>
												<td class="dxbs-day  dxbs-weekend  table-active"><a>6</a>
												</td>
												<td class="dxbs-day"><a>7</a></td>
												<td class="dxbs-day"><a>8</a></td>
												<td class="dxbs-day"><a>9</a></td>
												<td class="dxbs-day"><a>10</a></td>
												<td class="dxbs-day"><a>11</a></td>
												<td class="dxbs-day dxbs-weekend text-danger"><a>12</a></td>
											</tr>
											<tr class="text-center"></tr>
											<tr class="text-center"></tr>
											<tr class="text-center"></tr>

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				
			</div>
		</div>

	</div>





	<!--  
               			 <div class="col-8">
               			<div class="fs-4">
               				&lt2021&gt싸이 흠뻑 쇼
               			</div>
               				
               		<div class="summary mt-3 " >
               			<div class="row">
               				<div class=" col-2">
               					<img src="../../frontResource/dist/img/psy.jpg"  class="h-auto ow-cols-xxl-4 " align="left">
               					</div>  				
               				<div class="col-6">
               					<ul class="list-group  ps-5 fs-5">
               						<li class="list-inline-item">
               							<strong>장소</strong>
               								<span class= "ps-5">잠실종합운동장</span>
               						</li>	
               						<li class="list-inline-item mt-5">
               							<strong>공연시간</strong>
            								<span class= "ps-3"> 18:30 ~ 22:30</span>
               						</li>
               						<li class="list-inline-item mt-5">
               							<strong>관람연령</strong>
               								<span class= "ps-3"> 전 연령</span>
               						</li>
               						<li class="list-inline-item mt-5">
               							<strong>가격</strong>
               								<span class= "ps-5"> 96,000 ~ 156,000</span>
               						</li>
               							<li class="list-inline-item ">
               							<strong>R 석</strong>
               								<span class= "ps-5"> 156,000</span>
               						</li>
               						<li class="list-inline-item ">
               							<strong>S 석</strong>
               								<span class= "ps-5">  96,000</span>
               						</li>
               						<li class="list-inline-item mt-5">
               							<strong>혜택</strong>
               								<span class= "ps-5">  무이자할부</span>
               						</li>
               						<li class="list-inline-item">
               								<span> [AD] 티켓 3천원 할인쿠폰 + 편의점 3천원 증정<i class="bi bi-arrow-right"></i>				
               									</span>		
               						</li>
               						<li class="list-inline-item"><span>가입하고 중복할인 쿠폰받기<i class="bi bi-arrow-right"></i>
               						</span></li>
               						</ul>
               						</div>
               					</div>
               				</div> -->

	<!-- <div class="container justify-context-around  border-bottom mt-5 row ">
				<ul class="list-group list-group-horizontal">
					<li class="list-group-item ">공연정보</li>
					<li class="list-group-item ps-3">부가정보</li>
					<li class="list-group-item ps-3">관람후기</li>
				</ul>          
          </div>  -->
	<!-- 상품 관련 내용 설명
         <div class="container mt-5">
         	<div class="row">
         		<h3>캐스팅</h3>
         	</div>
         	
         	<div class="mt-5">
         		<img src="../../frontResource/dist/img/psys.gif">
         			<p >싸이</p>
         	</div>
         	
         	<div class="container mt-5">
         		<div class="row">
         			<h3>공연시간 정보</h3>
         		</div>
         		<div class="mt-2">
         			예매가능시간 : 관림 2시간전
         		</div>
         		<div class="mt-2" >
         			2019년 8월 24일 토요일 오후 6시 42분
         		</div>
         	
         	</div>
         	
         	<div class="container mt-5">
         		<h3>공지사항</h3>
         		<p>※ 매수제한 : 회원별 1인 4매</p>
         		<p>※ 본 공연은 티켓 불법 양도 및 재판매 근절을 위해 무통장 입금을 제외한 신용카드 / 체크카드 / 카카오페이 등을 이용해 1인 4매까지만 구매 가능합니다.</p>
         		<p>※ 스탠딩석 번호는 입장 순서입니다. 예매 시 빠른 번호를 선택할수록 입장 순서가 빨라집니다.
					입장이 시작된 이후에는 예매하신 번호가 무효 되며, 별도로 마련된 스탠딩 입장 지연관객 대기구역에 대기 후 입장하시게 되고 이로 인한 티켓 환불은 불가합니다.
				<p>※ 연출안에 따라 무대가 변경될 수 있습니다.</p>
				<p>※ 공연 당일 혼잡함을 방지하기 위해 초기 예매분은 일괄 배송 방식으로만 운영합니다.</p>
				<p>※ 일괄 배송 시작일 : 2019년 07월 30일(화) ~ 2019년 08월 02일(금)</p>
				<p>※ 티켓 분실/파손/도난 등 어떠한 경우에도 재발권이 불가하며, 티켓 미소지시에는 입장이 불가하오니 티켓 보관에 유의해 주시기 바랍니다.</p>
         	</div>
         </div>  -->

	<!--  <div class="container mt-5">
         		<h3>공연상세/출연진 정보</h3>
         	<div class="row">
         		<img src="../../frontResource/dist/img/psyd.jpg">
         	</div>
         
         </div>
      </div>-->



	<%@ include file="/frontResource/dist/include/footer.jspf"%>