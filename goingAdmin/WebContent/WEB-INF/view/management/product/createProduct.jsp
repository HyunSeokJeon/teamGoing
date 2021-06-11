<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="/view/common/header.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 상품 추가 버튼을 누르면 나오는 화면 -->
<div class="container-fluid">
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800 mr-auto p-2">상품 관리</h1>
		
	</div>


	<div class="col">
		<div class="card shadow mb-4">
			<!-- Card Header - Dropdown -->
			<div
				class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
				<h6 class="m-0 font-weight-bold text-primary">상품 추가</h6>
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
				<form class="form-group" action="<%=path %>/manage/createProduct.go" method="post">
					<input type="hidden" name="productId" value=""/>
					<!-- sql문을 위한 제품id값 -->
					<div class="col-md-4 mb-3">
						<label for="productType">상품 분류</label>
						<select class="custom-select mr-sm-2" id="productType" name="productType">
							<option selected value="X">상품 종류</option>
							<c:forEach var="productType" items="${productTypeList}">
								<option value="${productType.productTypeId}">${productType.productType }</option>
							</c:forEach>
							
						</select>
						<!-- DB에서 상품종류테이블에 있는 값 반복문으로 -->
					</div>
					<div class="col-md-4 mb-3">
						<label for="productName">상품명</label>
						<input type="text" class="form-control" id="productName" name="productName" placeholder="상품명">
					</div>
					<div class="col-md-4 mb-3">
						<label for="productPrice">상품명</label>
						<input type="text" class="form-control" id="productPrice" name="productPrice" placeholder="상품가격(숫자만 입력)">
					</div>
					<label class="form-label" for="files">제품설명 사진</label>
					<div class="col border rounded py-4" id="files">
						
						
						<input type="file" class="form-control-file" id="customFile" /><br/>
						<input type="file" class="form-control-file" id="customFile" /><br/>
						
						<button class="p-2 d-none d-sm-inline-block btn btn-sm btn-success shadow-sm ml-2">
							<i class="fas fa-plus fa-sm text-white-50"></i> &nbsp;사진항목 추가
						</button>
						<button class="p-2 d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm ml-2">
							<i class="fas fa-minus fa-sm text-white-50"></i> &nbsp;사진항목 삭제</button>
						
						<!-- 제품사진 추가를 누를때 file input이 늘어날 수 있도록 -->
					</div>
					<br/>
					<div class="col">
						<button type="submit"
							class="p-2 d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
							<i class="fas fa-check fa-sm text-white-50"></i> &nbsp;상품 추가
						</button>
						<button 
							class="p-2 d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm ml-2">
							<i class="fas fa-times fa-sm text-white-50"></i>&nbsp;취소
						</button>
						<!-- 상품 추가버튼을 눌렀을때 상품DB에 추가되도록 취소는 상품목록으로 되돌아가도록 -->
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@ include file="/view/common/footer.jspf"%>