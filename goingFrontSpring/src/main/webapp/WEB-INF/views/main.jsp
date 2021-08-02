<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/include/header.jspf"%>


<div class="container">
	<div class="row justify-content-center bg-white border-top main-size1">

		<div
			class="col-md-5 d-flex align-items-center justify-content-center main-header">
			<div class="row w-100">
				<ul class="nav nav-tabs mb-2" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active text-dark"
						id="home-tab" data-toggle="tab" href="#home" role="tab"
						aria-controls="home" aria-selected="true">서비스 찾기</a></li>
					<li class="nav-item"><a class="nav-link text-dark"
						id="profile-tab" data-toggle="tab" href="#profile" role="tab"
						aria-controls="profile" aria-selected="false">About Us</a></li>

				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<p class="h2 my-4">
							어떤 서비스가 <br>필요하세요?
						</p>
						<!-- 검색 창 -->
						<form action="/search" method="POST">
							<div class="input-group">
								<input type="text" class="form-control"
									placeholder="검색어를 입력하세요." aria-label="Recipient's username"
									name="keyword" value="" aria-describedby="button-addon2"
									id="mainsearch">
								<div class="input-group-append">
									<button class="btn btn-outline-primary" type="submit"
										id="button-addon2">Button</button>
								</div>
							</div>
						</form>
						<div class="my-4 h1 row row-cols-4 justify-content-start">
							<a href="<%-- <%=path%>/list.go?productTypeId=20 --%> "
								class="d-flex align-items-center justify-content-center">
								<div class="main-icons">
									<img class="mainicon mt-4"
										src="https://img.icons8.com/ios-filled/50/000000/concert.png" />
									<p class="h7 text-center my-1">콘서트</p>
								</div>
							</a> <a href="<%-- <%=path%>/list.go?productTypeId=30 --%> "
								class="d-flex align-items-center justify-content-center">
								<div class="main-icons">
									<img class="mainicon mt-4"
										src="https://img.icons8.com/ios-filled/50/000000/guitarist.png" />
									<p class="h7 text-center my-1">공연</p>
								</div>
							</a> <a href="<%-- <%=path%>/list.go?productTypeId=30 --%> "
								class="d-flex align-items-center justify-content-center">
								<div class="main-icons">
									<img class="mainicon mt-4"
										src="https://img.icons8.com/pastel-glyph/64/000000/curtains--v1.png" />
									<p class="h7 text-center my-1">연극</p>
								</div>
							</a> <a href="<%-- <%=path%>/list.go?productTypeId=40  --%>"
								class="d-flex align-items-center justify-content-center">
								<div class="main-icons">
									<img class="mainicon mt-4"
										src="https://img.icons8.com/ios/50/000000/ballerina-full-body.png" />
									<p class="h7 text-center my-1">무용</p>
								</div>
							</a> <a href="<%-- <%=path%>/list.go --%> "
								class="d-flex align-items-center justify-content-center">
								<div class="main-icons">
									<img class="mainicon mt-4"
										src="https://cdn4.iconfinder.com/data/icons/modern-ui-set-3-of-3/128/Apps-512.png" />
									<p class="h7 text-center my-1">전체보기</p>
								</div>
							</a> <a href="<%-- <%=path%>/faq.go --%>"
								class="d-flex align-items-center justify-content-center">
								<div class="main-icons">
									<img class="mainicon mt-4"
										src="https://img.icons8.com/ios/50/000000/headset.png" />
									<p class="h7 text-center my-1">고객센터</p>
								</div>
							</a>


						</div>


					</div>
					<div class="tab-pane fade" id="profile" role="tabpanel"
						aria-labelledby="profile-tab">
						<div class="my-4">Going Front 페이지입니다.</div>
					</div>

				</div>
			</div>

		</div>
		
		<div class="col-md-5 d-flex align-items-end main-header">
			<div id="carouselExampleIndicators" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<div
					class="carousel-inner col-md-5">
					<div class="carousel-item active">
						<img class="d-block  " src="<%=imgPath%>mainAssist.jpg"
							alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="d-block " src="<%=imgPath%>psy.jpg"
							alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block " src="<%=imgPath%>favorP2.jpg"
							alt="Third slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</div>
	<!-- <div class="container my-4">
		<div class="row"><span class="h2 px-10">인기많은 상품</span></div>
		<div class="row">
			<div class="col py-2">
				<div id="carouselExampleControls" class="carousel slide main-showcase-box" data-ride="carousel" data-interval="false">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="row justify-content-start">
								<div class="card col mx-4 border-0 main-card">
									<div class="overflow-hidden main-showcase-productImg"><img class="card-img-top " src="assets/img/mainp1.png" alt="First slide" ></div>
									<div class="card-body main-showcase-product">
										<h5 class="card-title">Card title</h5>
										<p class="card-text">Some quick example</p>
									</div>
								</div>
								<div class="card col mx-4 border-0 main-card">
									<div class="overflow-hidden main-showcase-productImg"><img class="card-img-top " src="assets/img/mainp1.png" alt="First slide"></div>
									<div class="card-body main-showcase-product">
										<h5 class="card-title">Card title</h5>
										<p class="card-text">Some quick example</p>
									</div>
								</div>
								<div class="card col mx-4 border-0 main-card">
									<div class="overflow-hidden main-showcase-productImg"><img class="card-img-top " src="assets/img/mainp1.png" alt="First slide"></div>
									<div class="card-body main-showcase-product">
										<h5 class="card-title">Card title</h5>
										<p class="card-text">Some quick example</p>
									</div>
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="row justify-content-start">
								<div class="card col mx-4 border-0 main-card">
									<div class="overflow-hidden main-showcase-productImg"><img class="card-img-top " src="assets/img/mainp2.png" alt="First slide" ></div>
									<div class="card-body main-showcase-product">
										<h5 class="card-title">Card title</h5>
										<p class="card-text">Some quick example</p>
									</div>
								</div>
								<div class="card col mx-4 border-0 main-card">
									<div class="overflow-hidden main-showcase-productImg"><img class="card-img-top " src="assets/img/mainp2.png" alt="First slide"></div>
									<div class="card-body main-showcase-product">
										<h5 class="card-title">Card title</h5>
										<p class="card-text">Some quick example</p>
									</div>
								</div>
								<div class="card col mx-4 border-0 main-card">
									<div class="overflow-hidden main-showcase-productImg"><img class="card-img-top " src="assets/img/mainp2.png" alt="First slide"></div>
									<div class="card-body main-showcase-product">
										<h5 class="card-title">Card title</h5>
										<p class="card-text">Some quick example</p>
									</div>
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="row justify-content-start">
								<div class="card col mx-4 border-0 main-card">
									<div class="overflow-hidden main-showcase-productImg"><img class="card-img-top " src="assets/img/mainp3.png" alt="First slide" ></div>
									<div class="card-body main-showcase-product">
										<h5 class="card-title">Card title</h5>
										<p class="card-text">Some quick example</p>
									</div>
								</div>
								<div class="card col mx-4 border-0 main-card">
									<div class="overflow-hidden main-showcase-productImg"><img class="card-img-top " src="assets/img/mainp3.png" alt="First slide"></div>
									<div class="card-body main-showcase-product">
										<h5 class="card-title">Card title</h5>
										<p class="card-text">Some quick example</p>
									</div>
								</div>
								<div class="card col mx-4 border-0 main-card">
									<div class="overflow-hidden main-showcase-productImg"><img class="card-img-top " src="assets/img/mainp3.png" alt="First slide"></div>
									<div class="card-body main-showcase-product">
										<h5 class="card-title">Card title</h5>
										<p class="card-text">Some quick example</p>
									</div>
								</div>
							</div>
						</div>
						
					</div>
					<a class="carousel-control-prev carousel-control-next-cu" href="#carouselExampleControls" role="button" data-slide="prev"> 
						<span class="carousel-control-prev-icon text-dark" aria-hidden="true"><i class="bi bi-caret-left-fill h1"></i></span>
						
					</a> 
					<a class="carousel-control-next carousel-control-next-cu" href="#carouselExampleControls" role="button" data-slide="next"> 
						<span class="carousel-control-next-icon text-dark" aria-hidden="true"><i class="bi bi-caret-right-fill h1"></i></span> 
					</a>
				</div>
			</div>
		</div>

		
	</div> -->
	<div class="row my-4">
		<span class="h2 px-10">인기상품 TOP3!</span>
	</div>
	<div class="row justify-content-between px-10  main-size1">
		<c:forEach var="top3Product" items="${top3itmes}">

			<div class="col-md-4">
				<div class="main-showcase-favor-imgbox">
					<img src="<%=path %>/viewimg?fileName=${top3Product.productImage}"
						alt="" class="main-showcase-favor-img">
				</div>
				<div class="row m-3 p-1 align-items-center justify-content-center">
					<div class="col">
						<i class="bi bi-suit-heart-fill like-heart-pink h5"></i> <span
							class="h5">${top3Product.productLove}</span>
						<p>
							<c:if test="${top3Product.productName.length() < 13}">
								${top3Product.productName}
								</c:if>
							<c:if test="${top3Product.productName.length() >= 14}">
								${top3Product.productName.substring(0,14)}..
								</c:if>
						</p>
					</div>
					<div class="col-2 d-flex justify-content-end">
						<a
							href="<%-- <%=path %>/productInfo.go?pId=${top3Product.productID} --%>"
							class="btn btn-sm btn-outline-primary px-1">GO!</a>
					</div>
				</div>
			</div>

		</c:forEach>
	</div>

</div>

<%@ include file="/WEB-INF/views/include/footer.jspf"%>
