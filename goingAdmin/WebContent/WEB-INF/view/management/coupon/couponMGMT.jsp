<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/common/header.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- #TODO 왼쪽 사이드바에서 상품관리 페이지로 이동할 수 있도록
 -->
<div class="container-fluid">
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800">쿠폰 관리</h1>
		<a href="<%=path %>/manage/createCoupon.go"
			class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
			<i class="fas fa-plus fa-sm text-white-50"></i> &nbsp;쿠폰 추가 <!-- #TODO 상품추가를 클릭 한다면 상품추가 페이지로 이동할 수 있도록 -->
		</a>
	</div>


	<div class="col" style="min-width:1400px;">
		<div class="card shadow mb-4">
			<!-- Card Header - Dropdown -->
			<div
				class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
				<h6 class="m-0 font-weight-bold text-primary">쿠폰목록</h6>
				<div class="dropdown no-arrow">
					<a class="dropdown-toggle" href="#" role="button"
						id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i
						class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
					</a>
					<div
						class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
						aria-labelledby="dropdownMenuLink">
						<div class="dropdown-header">Dropdown Header:</div>
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div>
				</div>
			</div>
			<!-- Card Body -->
			<div class="card-body">
				<table class="table">
					<thead>
						<tr>
			
							<th scope="col">쿠폰명</th>
							<th scope="col">쿠폰설명</th>
							<th scope="col">할인율</th>
							<th scope="col">유효기간</th>
						
						</tr>
					</thead>
					<tbody>
						<c:forEach var="coupon" items="${couponList}">
							<tr>
								<td>${coupon.couponName}</td>
								<td>${coupon.couponDesc}</td>						
								<td>${coupon.couponDiscount}</td>
								<td>${coupon.couponVaild }</td>
					
							
								<!-- <td><a href="<%=path %>/manage/modifyCoupon.go?couponId=${coupon.couponID}" class="btn btn-sm btn-primary shadow-sm">수정</a></td>
								 --!>
								 <!-- #TODO 수정 삭제가 가능하도록 button이외에 a태그를 사용하던 매개변수를 넘겨줄 수 있도록 하자 -->
								<!-- #TODO 수정시 수정 페이지로 이동할 수 있도록 삭제시 확인버튼을 출력해서 확인시 넘어갈 수 있도록 -->
							</tr>
						</c:forEach>


					</tbody>
					<!-- #TODO 상품을 받아올 경우에 페이지 넘버링을 할 수 있도록 -->
				</table>
			</div>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/view/common/footer.jspf"%>