<%@page import="org.going.customer.domain.CustomerVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jspf"%>

<!-- Page content wrapper-->
<link rel="stylesheet" href="<%=cssPath%>calender.style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script defer type="text/javascript"
	src="<%=path%>/frontResource/dist/js/likeHeart.js"></script>
 	<%
		CustomerVo user = null;
		if(!notLogin){
			user = (CustomerVo)httpSession.getAttribute("authUser");
		}
	%>
<script type="text/javascript">
	let path = "<%=path%>";
	let userId;
	let productId = ${product.productID};
	<% if(user!=null){ %>
	userId = "<%=user.getCustomerId()%>";
	<% } else {%>
	userId = null;
	<%}%>
</script>
<div class="container-fluid position-relative" id="page-content-wrapper">
	<!--헤더부분 삽입 해야 됨-->

	<nav class="navbar navbar-expand-lg navbar-light bg-light "
		style="margin-top: 5rem">
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
<!-- 상품 제목-->
<div class=" container border-top border-bottom border-dark ">
	<div class="row">
		<div class="col-8">
			<div class="row text-dark">
				<div class="col-5">
					<div class="fs-5 fw-bold">${product.productName }</div>
					<c:if test="${notLogin }">
						<a href="#" id="likeitem">
							<div id="heartBox">
								<i class="bi bi-suit-heart h5 like-heart-pink " style=""></i>
							</div>
						</a>
					</c:if>
					<c:if test="${!notLogin}">
						<a href="#" id="likeitem">
							<div id="heartBox">
						<c:if test="${!likeYN}">
								<i class="bi bi-suit-heart h5 like-heart-pink " style=""></i>
								<i class="bi bi-suit-heart-fill h5 like-heart-pink d-none " style=""></i>
						</c:if>
						<c:if test="${likeYN}">
								<i class="bi bi-suit-heart h5 like-heart-pink d-none " style=""></i>
								<i class="bi bi-suit-heart-fill h5 like-heart-pink " style=""></i>
						</c:if>
							</div>
						</a>
					</c:if>
					<img src="<%=path %>/viewimg?fileName=${product.productImage}" class="w-100"
						align="left">
					
				</div>

				<div class="col">
					<ul class="list-group  ps-5 fs-6">
						<li class="list-inline-item"><strong>장소</strong> <span
							class="ps-5">잠실종합운동장</span></li>

						<li class="list-inline-item mt-5"><strong>공연시간</strong> <span
							class="ps-3"> ${product.productPlaytime }분</span></li>
						<li class="list-inline-item mt-5"><strong>공연기간</strong> <span
							class="ps-3"> ${product.productPeriods }~${product.productPeriode }</span></li>
						<li class="list-inline-item mt-5"><strong>관람연령</strong> 
							<span class="ps-3"> 
								<c:if test="${product.productAgeLimit > 0}">${product.productAgeLimit }세 이상</c:if>
								<c:if test="${product.productAgeLimit <= 0}">전 연령</c:if>
							</span></li>
						<li class="list-inline-item mt-5"><strong>가격</strong> <span
							class="ps-5"> ${product.productPrice }</span></li>

						<li class="list-inline-item mt-5"><strong>혜택</strong> <span
							class="ps-5"> 무이자할부</span></li>
						<li class="list-inline-item"><span> [AD] 티켓 3천원 할인쿠폰 +
								편의점 3천원 증정<i class="bi bi-arrow-right"></i>

						</span></li>
						<li class="list-inline-item"><span>가입하고 중복할인 쿠폰받기<i
								class="bi bi-arrow-right"></i>
						</span></li>
					</ul>
				</div>
			</div>

			<!-- 사진 윗 부분 -->

			<div class="justify-context-around  border-bottom mt-5 row">
				<ul class="list-group list-group-horizontal">
					<li class="list-group-item ">공연정보</li>
					<li class="list-group-item ps-3">부가정보</li>
					<li class="list-group-item ps-3">관람후기</li>
				</ul>
			</div>
			<!-- 캐스팅 Start -->
			<div class="container mt-5">
				
				<!-- 캐스팅 정보 End -->

				<div class="container mt-5">
					<div class="row">
						<h3>공연시간 정보</h3>
					</div>
					<div class="mt-2">예매가능시간 : 관림 2시간전</div>

				</div>

				<div class="container mt-5">
					<h3>공지사항</h3>
					<p>※ 매수제한 : 회원별 1인 4매</p>
					<p>※ 본 공연은 티켓 불법 양도 및 재판매 근절을 위해 무통장 입금을 제외한 신용카드 / 체크카드 /
						카카오페이 등을 이용해 1인 4매까지만 구매 가능합니다.</p>
					<p>※ 스탠딩석 번호는 입장 순서입니다. 예매 시 빠른 번호를 선택할수록 입장 순서가 빨라집니다. 입장이 시작된
						이후에는 예매하신 번호가 무효 되며, 별도로 마련된 스탠딩 입장 지연관객 대기구역에 대기 후 입장하시게 되고 이로 인한
						티켓 환불은 불가합니다.
					<p>※ 연출안에 따라 무대가 변경될 수 있습니다.</p>
					<p>※ 공연 당일 혼잡함을 방지하기 위해 초기 예매분은 일괄 배송 방식으로만 운영합니다.</p>
					<p>※ 일괄 배송 시작일 : ${product.productSellStart }~${product.productSellEnd }</p>
					<p>※ 티켓 분실/파손/도난 등 어떠한 경우에도 재발권이 불가하며, 티켓 미소지시에는 입장이 불가하오니 티켓
						보관에 유의해 주시기 바랍니다.</p>
				</div>
			</div>
			<c:forEach var="imglist" items="${ imgList}">
			<div class="container mt-5">
				<div class="row">
					<img src="<%=path %>/upload/${imglist.pImg }">
				</div>
			</div>
			</c:forEach>
		</div>


		<!-- Main End -->
		<div class=" col-4 mt-3 ">
			<div class="sticky-top-sangwon">
				<section class="" style="min-width:25rem !important;">
					<div class="container">
						
						<div class="row" id="calenderBoard">
							<div class="col-md-12">
								<div class="content w-100">
									<div class="calendar-container">
										<div class="calendar">
											<div class="year-header">
												<span class="left-button fa fa-chevron-left" id="prev">
												</span> <span class="year" id="yearlabel"></span> <span
													class="right-button fa fa-chevron-right" id="next">
												</span>
											</div>
											<table class="months-table w-100">
												<tbody>
													<tr class="months-row">
														<td class="month">Jan</td>
														<td class="month">Feb</td>
														<td class="month">Mar</td>
														<td class="month">Apr</td>
														<td class="month">May</td>
														<td class="month">Jun</td>
														<td class="month">Jul</td>
														<td class="month">Aug</td>
														<td class="month">Sep</td>
														<td class="month">Oct</td>
														<td class="month">Nov</td>
														<td class="month">Dec</td>
													</tr>
												</tbody>
											</table>

											<table class="days-table w-100">
												<td class="day">Sun</td>
												<td class="day">Mon</td>
												<td class="day">Tue</td>
												<td class="day">Wed</td>
												<td class="day">Thu</td>
												<td class="day">Fri</td>
												<td class="day">Sat</td>
											</table>
											<div class="frame">
												<table class="dates-table w-100">
													<tbody class="tbody">
													</tbody>
												</table>
											</div>
										</div>
									</div>
									
								</div>
							</div>
						</div>
					</div>
					<form action="<%=path %>/payment" method="post">
						<input type="hidden" name="productName" id="productName" value="${product.productName }">
						<input type="hidden" name="productPrice" id="productPrice" value="${product.productPrice }">
						<input type="hidden" name="productId" id="productid1" value="<%=request.getParameter("pId") %>">
						<input type="hidden" name="productImage" id="productImage" value="${product.productImage}">
						<input type="hidden" name="orderYear" id="orderYear">
						<input type="hidden" name="orderMonth" id="orderMonth">
						<input type="hidden" name="orderDay" id="orderDay">
					
					<button class="d-flex text-center btn btn-primary  mt-2 mx-4" type="submit">예매하기</button>
					</form>
				</section>
				
			</div>
		</div>
	</div>

</div>
<script defer src="<%=jsPath%>popper.js"></script>
<script defer src="<%=jsPath%>calender.js"></script>
<script defer type="text/javascript" src="<%=jsPath%>productDes.js"></script>
	<%@ include file="/WEB-INF/views/include/footer.jspf"%>