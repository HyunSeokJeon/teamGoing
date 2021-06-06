<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../dist/include/header.jspf"%>

<div class="conatiner">
	<div class="row justify-content-center bg-white border-top"
		style="height: 60rem;">

		<div class="col-md-4 d-flex align-items-center justify-content-center">
			<div class="row w-100">
				<ul class="nav nav-tabs mb-2" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active text-dark"
						id="home-tab" data-toggle="tab" href="#home" role="tab"
						aria-controls="home" aria-selected="true">서비스 찾기</a></li>
					<li class="nav-item"><a class="nav-link text-dark"
						id="profile-tab" data-toggle="tab" href="#profile" role="tab"
						aria-controls="profile" aria-selected="false">About Us</a></li>
					<li class="nav-item"><a class="nav-link text-dark"
						id="contact-tab" data-toggle="tab" href="#contact" role="tab"
						aria-controls="contact" aria-selected="false">카테고리</a></li>
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<div class="input-group my-4">
							<input type="text" class="form-control" placeholder="검색어를 입력하세요."
								aria-label="Recipient's username"
								aria-describedby="button-addon2" id="mainsearch">
							<div class="input-group-append">
								<button class="btn btn-outline-primary" type="button"
									id="button-addon2">Button</button>


							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="profile" role="tabpanel"
						aria-labelledby="profile-tab">
						<div class="my-4">Lorem ipsum dolor sit amet consectetur
							adipisicing elit. Officia suscipit non consequatur iste
							cupiditate, nobis, odit reprehenderit architecto ea rem molestias
							inventore. Nostrum reprehenderit totam dolore adipisci dolorem
							velit quo?</div>
					</div>
					<div class="tab-pane fade" id="contact" role="tabpanel"
						aria-labelledby="contact-tab">
						<div class="my-4 h1 d-flex justify-content-around">
							<div>
								<i class="bi bi-align-bottom"></i>
							</div>
							<div>
								<i class="bi bi-app"></i>
							</div>
							<div>
								<i class="bi bi-app"></i>
							</div>
							<div>
								<i class="bi bi-app"></i>
							</div>

						</div>
						<div class="my-4 h1 d-flex justify-content-around">
							<div>
								<i class="bi bi-align-bottom"></i>
							</div>
							<div>
								<i class="bi bi-app"></i>
							</div>
							<div>
								<i class="bi bi-app"></i>
							</div>
							<div>
								<i class="bi bi-app"></i>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="col-md-4 d-flex align-items-end">
			<div>
				<img src="<%=imgPath%>mainAssist.jpg" class="img-fluid"
					style="width: 100em; height: auto;">
			</div>
		</div>
	</div>
</div>

<%@ include file="../dist/include/footer.jspf"%>