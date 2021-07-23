<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="/WEB-INF/views/common/header.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	let productSellStart = "${selectedProduct.productSellStart}";
	let productSellEnd = "${selectedProduct.productSellEnd}";
	let productPeriods = "${selectedProduct.productPeriods}";
	let productPeriode = "${selectedProduct.productPeriode}";
	let productSellYN = "${selectedProduct.productSellYN}";
</script>
<script defer type="text/javascript" src="<%=path%>/adminResource/js/productcommon.js"></script>
<script defer type="text/javascript" src="<%=path%>/adminResource/js/modifyproduct.js"></script>

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
			<c:set var="prod" value="${product}"></c:set>
			<div class="card-body">
				<form class="form-group" role="form" method="post" enctype="multipart/form-data" id="createform">
					<input type="hidden" name="productID" value="${prod.productID }">
					<div class="col-md-4 mb-3">
						<label for="productType">상품 분류</label>
						<select class="custom-select mr-sm-2" id="productTypeID" name="productTypeID">
							<option selected value="X">상품 종류</option>
							<c:forEach var="productType" items="${productTypeList}">
								<c:if test="${productType.productTypeId==prod.productTypeVO.productTypeId }" >
									<option value="${productType.productTypeId}" selected="selected">${productType.productType }</option>
								</c:if>
								<c:if test="${productType.productTypeId!=prod.productTypeVO.productTypeId }">
									<option value="${productType.productTypeId}">${productType.productType }</option>
								</c:if>
								
							</c:forEach>
							
						</select>
					</div>
					<div class="col-md-4 mb-3">
						<label for="productName">상품명</label>
						<input type="text" class="form-control" id="productName" name="productName" value="${prod.productName }" required>
					</div>
					<div class="col-md-4 mb-3">
						<label for="productPrice">상품가격</label>
						<input type="text" class="form-control" id="productPrice" name="productPrice" value="${prod.productPrice }" required>
					</div>
					<div class="col-md-8 mb-3">
						<label for="productImage">상품썸네일 </label>
						<input type="file" class="form-control" id="productImage" name="productImage"></input>
					</div>
					<div class="col-md-8 mb-3">
						<label for="productDesc">상품정보</label>
						<input type="file" class="form-control" id="productDesc" name="productDesc"></input>
					</div>
					<div class="col-md-4 mb-3">
						<label for="productPrproductPlaytimeice">상품 상영 시간(분)</label>
						<input type="text" class="form-control" id="productPlaytime" name="productPlaytime" value="${prod.productPlaytime }" required></input>
					</div>
					<div class="col-md-4 mb-3">
						<label for="productAgeLimit">상품(공연)연령제한</label>
						<input type="text" class="form-control" id="productAgeLimit" name="productAgeLimit" value="${prod.productAgeLimit }" required></input>
					</div>
					<p>판매시작일자</p>
					<div class="row">
						<input type="hidden" id="productSellStart" name="productSellStart"/>
						<div class="col-md-3 mb-3">
							<select class="custom-select mr-sm-2" id="productSellStart1" name="productSellStart1" onchange="dateChange(this)">
							</select>
						</div>
						
						<div class="col-md-2 mb-3">
							<select class="custom-select mr-sm-2" id="productSellStart2" name="productSellStart2" onchange="dateChange(this)">
							</select>
						</div>
						
						<div class="col-md-2 mb-3">
							<select class="custom-select mr-sm-2" id="productSellStart3" name="productSellStart3">
							</select>
						</div>
					</div>
					
					<p>판매종료일자</p>
					<div class="row">
					<input type="hidden" id="productSellEnd" name="productSellEnd"/>
						<div class="col-md-3 mb-3">
							<select class="custom-select mr-sm-2" id="productSellEnd1" name="productSellEnd1" onchange="dateChange(this)">
							</select>
						</div>
						
						<div class="col-md-2 mb-3">
							<select class="custom-select mr-sm-2" id="productSellEnd2" name="productSellEnd2" onchange="dateChange(this)">
							</select>
						</div>
						
						<div class="col-md-2 mb-3">
							<select class="custom-select mr-sm-2" id="productSellEnd3" name="productSellEnd3">
							</select>
						</div>
					</div>
					
					<p>상품기간시작 - 공연기간</p>
					<div class="row">
						<input type="hidden" id="productPeriods" name="productPeriods"/>
						<div class="col-md-3 mb-3">
							<select class="custom-select mr-sm-2" id="productPeriods1" name="productPeriods1" onchange="dateChange(this)">
							</select>
						</div>
						
						<div class="col-md-2 mb-3">
							<select class="custom-select mr-sm-2" id="productPeriods2" name="productPeriods2" onchange="dateChange(this)">
							</select>
						</div>
						
						<div class="col-md-2 mb-3">
							<select class="custom-select mr-sm-2" id="productPeriods3" name="productPeriods3">
							</select>
						</div>
					</div>
					
					<p>상품기간종료 - 공연기간</p>
					<div class="row">
						<input type="hidden" id="productPeriode" name="productPeriode"/>
						<div class="col-md-3 mb-3">
							<select class="custom-select mr-sm-2" id="productPeriode1" name="productPeriode1" onchange="dateChange(this)">
							</select>
						</div>
						
						<div class="col-md-2 mb-3">
							<select class="custom-select mr-sm-2" id="productPeriode2" name="productPeriode2" onchange="dateChange(this)">
							</select>
						</div>
						
						<div class="col-md-2 mb-3">
							<select class="custom-select mr-sm-2" id="productPeriode3" name="productPeriode3">
							</select>
						</div>
					</div>
					<p>상품노출여부</p>
					<div class="row">
						<div class="col-md-4 mb-3" id="productSellYN">
							<c:if test='${prod.productSellYN.equals("1") }'>
								<input type="radio" name="productSellYN" value="1" class="mx-2" checked="checked">노출	
								<input type="radio" name="productSellYN" value="0" class="mx-2">비노출	
							</c:if>		
							<c:if test='${prod.productSellYN.equals("0") }'>
								<input type="radio" name="productSellYN" value="1" class="mx-2">노출	
								<input type="radio" name="productSellYN" value="0" class="mx-2" checked="checked">비노출	
							</c:if>	
						</div>
					</div>
					<label class="form-label" for="files">제품설명 사진(여러파일 가능)</label>
					<div class="col border rounded py-4" id="files">
						
						<!-- 상품사진은 img저장방법 구현, db구조 img테이블 생성 후, 처리 -->
						<input type="file" class="form-control-file" id="productImg" name="productImg" multiple="multiple"/><br/>
					
					</div>
					<br/>
					<div class="col">
						<button type="submit" id="create_product_submit"
							class="p-2 d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
							<i class="fas fa-check fa-sm text-white-50"></i> &nbsp;상품 추가
						</button>
						<a href="<%=path %>/manage/product"
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

<%@ include file="/WEB-INF/views/common/footer.jspf"%>