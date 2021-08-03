<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/include/searchbarHeader.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light "
	style="margin-top: 4rem">
	<div class="collapse navbar-collapse d-flex justify-content-center "
		id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto ">
			<li class="nav-item dropdown"><a class="nav-link fs-4" href="#"
				id="navbarDropdown" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Home </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Something else here</a>
				</div></li>
		</ul>
		<ul class="navbar-nav mr-auto">
			<li class="nav-item dropdown"><a class="nav-link fs-4 " href="#"
				id="navbarDropdown" role="button" data-toggle="dropdown"
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
				id="navbarDropdown" role="button" data-toggle="dropdown"
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
				id="navbarDropdown" role="button" data-toggle="dropdown"
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
				id="navbarDropdown" role="button" data-toggle="dropdown"
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
				id="navbarDropdown" role="button" data-toggle="dropdown"
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
<div class="container position-relative">
      <p class="h1 my-3 mt-5 pt-5 text-center">마이페이지</p>
      <div class="row">
        <div class="col">
          <div class="row justify-content-center align-items-center" style="min-height: 10rem">
            <div
              style="
                overflow: hidden;
                width: 72px;
                height: 72px;
                background: url(https://ssl.pstatic.net/static.checkout/layout/202106021438/images/customer/common_img/profile_noimg.png) no-repeat
                  50% 50%;
              "
            ></div>
          </div>
          <div class="row">
            <p class="text-center">~~~님</p>
          </div>
          <div class="row justify-content-center">
            <div class="col-6 mb-5">
              <div class="btn-group">
                <a href="<%=path %>/customer/modifyPi" class="btn btn-secondary">정보수정</a>
                <a href="<%=path %>/logout.go" class="btn btn-secondary">로그아웃</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-8 py-4 px-3 align-item-center">
          <div class="row align-items-center border rounded mt-5 px-3 py-4">
            <div class="col">
              <p class="h4">고객님의 등급은 <br />${mypageInfo.grade } 입니다.</p>
              <div class="text-end w-100 my-2">
                <a href="#" style="text-decoration: none" class="badge badge-light"> 자세히 보기 <i class="bi bi-arrow-right-circle-fill"></i> </a>
              </div>
            </div>
            <div class="col" style="border-left: 1px solid #dee2e6 !important; border-right: 1px solid #dee2e6 !important">
              <p class="h4">
                사용할 수 있는 쿠폰 <br />
                ${mypageInfo.couponCount }장
              </p>
              <div class="text-end w-100 my-2">
                <a href="#" style="text-decoration: none" class="badge badge-light"> 자세히 보기 <i class="bi bi-arrow-right-circle-fill"></i> </a>
              </div>
            </div>
            <div class="col">
              <p class="h4">나의 문의내역 바로가기</p>
              <div class="text-end w-100 my-2">
                <a href="#" style="text-decoration: none" class="badge badge-light"> 자세히 보기 <i class="bi bi-arrow-right-circle-fill"></i> </a>
              </div>
            </div>

            <!--  -->
          </div>
        </div>
        <div class="row justify-content-center">
          <p class="my-3 px-2">
            <span class="h2">나의 결제내역 
            <c:if test="${mypageInfo.orderCount > 0 }">
            	${mypageInfo.orderCount }건
            </c:if>
            </span>
            <a href="#" style="text-decoration: none" class="badge badge-light text-dark">
              자세히 보기
              <i class="bi bi-arrow-right-circle-fill"></i>
            </a>
          </p>

          <div class="col">
            <div class="border-top border-bottom border-dark bg-light container">
              <div class="row">
                <div class="border-top border-bottom my-3 col-2 text-center">이미지</div>
                <div class="border-top border-bottom my-3 col-3 text-center">상품정보</div>
                <div class="border-top border-bottom my-3 col-2 text-center">판매가</div>
                <div class="border-top border-bottom my-3 col-1 text-center">수량</div>
                <div class="border-top border-bottom my-3 col-1 text-center">배송구분</div>
                <div class="border-top border-bottom my-3 col-1 text-center">배송비</div>
                <div class="border-top border-bottom my-3 col-2 text-center">합계</div>
              </div>
			<c:forEach var="myOrder" items="${mypageInfo.orderList }">
			  <div class="container py-2 border-bottom">
                <div class="row">
                  <div class="col-2 text-center">
                    <img src="" class="rounded float-left" />
                  </div>
                  <div class="col-3 text-center">
                    <span>${myOrder.productID }</span>
                  </div>
                  <div class="col-2 text-center">
                    <span>${myOrder.orderPrice }</span>
                  </div>
                  <div class="col-1 text-center">
                    <span>${myOrder.orderCnt }</span>
                  </div>
                  <div class="col-1 text-center">
                    <span>%</span>
                  </div>
                  <div class="col-1 text-center">
                    <span>3,000</span>
                  </div>
                  <div class="col-2 text-center">
                    <span>${myOrder.orderPrice + 3000}</span>
                  </div>
                </div>
              </div>
			</c:forEach>
              
            </div>
          </div>
        </div>
      </div>
    </div>
<%@ include file="/WEB-INF/views/include/footer.jspf"%>