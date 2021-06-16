<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/view/common/header.jspf"%>

<!-- 상품 추가 버튼을 누르면 나오는 화면 -->
<div class="container-fluid position-relative">
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800 mr-auto p-2">쿠폰 관리</h1>
		
	</div>


	<div class="col">
		<div class="card shadow mb-4">
			<!-- Card Header - Dropdown -->
			<div
				class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
				<h6 class="m-0 font-weight-bold text-primary">쿠폰 생성</h6>
				<div class="dropdown no-arrow">
					<a class="dropdown-toggle" href="#" role="button"
						id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i
						class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
					</a>
				</div>
			</div>
			<!-- Card Body -->
			<div class="card-body">
				<form class="form-group">
					<input type="hidden" name="" value=""/>
					<!-- sql문을 위한 제품id값 -->
					<div class="col-md-4 mb-3">
						<label for="">쿠폰 종류</label>
						<select class="custom-select mr-sm-2" id="">
							<option value="1">쿠폰1</option>
							<option value="2">쿠폰 2</option>
							<option value="3">쿠폰 3</option>
							<option value="4">쿠폰 4</option>
						</select>
						<!-- DB에서 상품종류테이블에 있는 값 반복문으로 -->
					</div>
					<div class="col-md-4 mb-3">
						<label for="productName">쿠폰명</label>
						<input type="text" class="form-control" id="productName" placeholder="">
					</div>
					<div class="col-md-4 mb-3">
						<label for="productPrice">쿠폰 할인율</label>
						<input type="text" class="form-control" id="productPrice" placeholder=" ">
					</div>
					
					<br/>
					<div class="col">
						<button type="submit"
							class="p-2 d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
							<i class="fas fa-check fa-sm text-white-50"></i> &nbsp;쿠폰 추가
						</button>
						<!-- 쿠폰 추가버튼을 눌렀을때 쿠폰DB에 추가되도록  -->
					</div>
				</form>
			</div>
		</div>
	</div>

<!-- 쿠폰 수정 -->

		
	
	
	

</div>


	
<%@ include file="/view/common/footer.jspf"%>