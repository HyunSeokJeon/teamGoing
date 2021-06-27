<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="/WEB-INF/view/common/header.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script defer type="text/javascript" src="<%=path%>/adminResource/js/productcommon.js"></script>
<script defer type="text/javascript" src="<%=path%>/adminResource/js/product.js"></script>
<!-- 상품 추가 버튼을 누르면 나오는 화면 -->
<div class="container-fluid">
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800 mr-auto p-2">쿠폰 관리</h1>
		
	</div>


	<div class="col">
		<div class="card shadow mb-4">
			<!-- Card Header - Dropdown -->
			<div
				class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
				<h6 class="m-0 font-weight-bold text-primary">쿠폰 추가</h6>
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
				<form class="form-group" action="#" method="post" enctype="multipart/form-data" id="createform">
				
					<div class="col-md-4 mb-3">
						<label for="couponName">쿠폰명</label>
						<input type="text" class="form-control" id="couponName" name="couponName"  required>
					</div>
					<div class="col-md-4 mb-3">
						<label for="couponDesc">쿠폰설명</label>
						<input type="text" class="form-control" id="couponDesc" name="couponDesc" required>
					</div>
					<div class="col-md-4 mb-3">
						<label for="couponDiscount">할인율</label>
						<input type="number" step="0.001" class="form-control" id="couponDiscount" name="couponDiscount" 
						placeholder="할인율(소수로 입력 소수점이하 3째자리까지)" required>
					</div>
					<div class="col-md-4 mb-3">
						<label for="couponVaild">유효기간</label>
						<input type="date" class="form-control" id="couponVaild" name="couponVaild" required>
					</div>
					
					<br/>
					<div class="col">
						<button type="submit" id="create_coupon_submit"
							class="p-2 d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
							<i class="fas fa-check fa-sm text-white-50"></i> &nbsp;쿠폰 추가
						</button>
						<a href="<%=path %>/manage/readCoupon.go"
							class="p-2 d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm ml-2">
							<i class="fas fa-times fa-sm text-white-50"></i>&nbsp;취소
						</a>
						<!-- 상품 추가버튼을 눌렀을때 상품DB에 추가되도록 취소는 상품목록으로 되돌아가도록 -->
					</div>
					
					
					
				</form>
			</div>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/view/common/footer.jspf"%>