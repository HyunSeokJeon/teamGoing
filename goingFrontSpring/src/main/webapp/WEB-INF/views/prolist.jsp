<%-- <%@page import="service.User"%>
<%@page import="model.Prolist"%> --%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jspf"%>
<!-- custom theme CSS -->
<link
	href="<%=request.getContextPath()%>/frontResource/dist/css/stylesproduct.css"
	rel="stylesheet" />

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	let Prolist = ${productJson}
	console.log(Prolist);
</script>
<script defer src="<%=path%>/frontResource/dist/js/product.js">
</script>

	<!-- Header-->
	<header class="py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="text-center text-dark">
				<h1 class="display-4 fw-bolder">Going</h1>
				<form action="/search" method="POST">
					<div class="input-group input-group-lg">
						<input class="form-control" type="text" placeholder="컨텐츠를 검색하세요"
							aria-describedby="buttom-submit" name="keyword" value="" />
						<button class="btn btn-primary" type="submit">
							<i class="bi bi-search"></i>
						</button>
					</div>
				</form>
			</div>
		</div>
	</header>
	<!-- 카테고리 -->
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light  ">
			<div class="collapse navbar-collapse d-flex justify-content-left "
				id="navbarSupportedContent">
				<c:forEach items="${productType}" var="typelist">

					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown">
								<button class="border-0 btn btn-dark" id="" name="tp"
									value="${typelist.productTypeID}">${typelist.productType}</button>
						
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="#">Action</a> <a
									class="dropdown-item" href="#">Another action</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Something else here</a>
							</div></li>
					</ul>

					<!-- <ul class="navbar-nav mr-auto">
					<li class="nav-item dropdown"><a class="nav-link fs-4"
						href="#" id="navbarDropdown3" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">
							<button class="border-0 btn btn-dark" name= id="num4" value="20">콘서트</button>
					</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Action</a> <a
								class="dropdown-item" href="#">Another action</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Something else here</a>
						</div></li>
				</ul>

				<ul class="navbar-nav mr-auto">
					<li class="nav-item dropdown"><a class="nav-link fs-4"
						href="#" id="navbarDropdown4" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">
							<button class="border-0 btn btn-dark" id="num3"
								>연극</button>
					</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Action</a> <a
								class="dropdown-item" href="#">Another action</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Something else here</a>
						</div></li>
				</ul>

				<ul class="navbar-nav mr-auto">
					<li class="nav-item dropdown"><a class="nav-link fs-4"
						href="#" id="navbarDropdown5" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">
							<button class="border-0 btn btn-dark" id="num2">콘서트</button>
					</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Action</a> <a
								class="dropdown-item" href="#">Another action</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Something else here</a>
						</div></li>
				</ul>

				<ul class="navbar-nav mr-auto">
					<li class="nav-item dropdown"><a class="nav-link fs-4"
						href="#" id="navbarDropdown6" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">
							<button class="border-0 btn btn-dark" id="num1"
								>클래식&무용</button>
					</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Action</a> <a
								class="dropdown-item" href="#">Another action</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Something else here</a>
						</div></li>
				</ul> -->
				</c:forEach>

			</div>
		</nav>

		<!-- 상품 정렬 순  -->
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="d-flex justify-content-left collapse navbar-collapse">
				<a class=" text-dark" role="button" onclick='seperate("")'> <Strong>최신
						순 </Strong></a> <a class="text-dark" role="button" style="margin-left: 10px"
					id="seperate"> <Strong>낮은 가격 순</Strong>
				</a> <a class="text-dark" role="button" style="margin-left: 10px"
					onclick='seperate("highPrice")'> <Strong>높은 가격 순 </Strong></a>
				<div class="nav-item dropdown">
					<a class="nav-link drpodown-toggle" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">판매순</a>
					<ul class="dropdown-menu" aria-labelledby="narbarDropdown">
						<li><a class="dropdown-item" href="#!">1주일</a></li>
						<li><hr class="dropdown-divider" /></li>
						<li><a class="dropdown-item" href="#!">1개월</a></li>
						<li><a class="dropdown-item" href="#!">3개월</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- Section-->
		<section class="py-5">

			<div class="container px-4 px-lg-5 mt-5">
				<div
					class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center"
					id="listbox">
					<c:forEach var="Prolist" items="${productListofType}" begin="0"
						end="9" step="1" varStatus="status">
						<form method="POST" action="/proDesc/${Prolist.productID}">
							<div class="col mb-5">
								<input type="hidden" name="productName"
									value="${Prolist.productName}" /> <input type="hidden"
									name="productPrice" value="${Prolist.productPrice}" />
									<input type="hidden" name="productImage" value="${Prolist.productImage}"/>
								
								<div class="card h-100">
									<!-- Product image-->
									<img class="card-img-top"
										src="<%=path %>/viewimg?fileName=${Prolist.productImage}"
										alt="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" />
									<!-- Product details-->
									<div class="card-body p-4">
										<div class="text-center" id="namebox">
											<!-- Product name-->
											<h5 class="fw-bolder">
												<a href="/proDesc/${Prolist.productID}"
													id="pnbox"> ${Prolist.productName}</a>
											</h5>
											<!-- Product price-->
											<c:out value="${Prolist.productPrice}" />
										</div>
									</div>
									<!-- Product actions-->
									<div
										class=" p-4 pt-0  d-flex justify-content-center bg-transparent ">
										<div class="text-inline">
											<button class="btn btn-outline-dark mt-auto" href="#">장바구니</button>
										</div>
										<div class="text-inline offset-1">
											<button class="btn btn-outline-dark mt-auto" type="submit">예매하기</button>
										</div>
									</div>
								</div>
							</div>
						</form>
					</c:forEach>
				</div>
			</div>
		</section>
	</div>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2021</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>

