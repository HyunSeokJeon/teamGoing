<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/frontResource/dist/include/searchbarHeader.jspf"%>


<div class="container position-relative">
	<div class="row justify-content-center">
		<div class="col-md-8">
			<div class="text-left">
				<!-- Page heading-->
				<h1 class="mb-5">&nbsp;</h1>
				<!-- Signup form-->
				<p class="h2 ">
					등급 <i class="bi bi-dot"></i> 쿠폰 관리
				</p>
				<div class="row my-5">
					<div class="col-8 h4 mt-2">
					고객님의 등급은 : 입니다.
					</div>
					<div class="col pt-2 h5" style="text-align: right;">
						<a href ="#" style="text-decoration: none" class="badge badge-light">
							자세히 보기
							<i class="bi bi-arrow-right-circle-fill"></i>
						</a>
					</div>
				</div>
				<p class="h4">사용할 수 있는 쿠폰 : 장</p>
				<!-- 쿠폰 사용여부 == 'N' -->
				<table class="table text-center">
					<caption style="font-size:.75rem">쿠폰마다 사용방법 및 기간이 상이함.</caption>
					<thead class="thead-light">
						<tr>
							<th scope="col">No</th>
							<th scope="col">할인율</th>
							<th scope="col">쿠폰명</th>
							<th scope="col">유효기간</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>2%</td>
							<td>브론즈 특별전용 쿠폰</td>
							<td style="font-size:.8rem">2021년 06월 30일</td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Jacob</td>
							<td>Thornton</td>
							<td>@fat</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Larry</td>
							<td>the Bird</td>
							<td>@twitter</td>
						</tr>
					</tbody>
				</table>


			</div>
		</div>
	</div>
</div>

<%@ include file="/frontResource/dist/include/footer.jspf"%>