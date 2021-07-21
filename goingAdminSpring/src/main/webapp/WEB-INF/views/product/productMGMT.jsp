<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- #TODO 왼쪽 사이드바에서 상품관리 페이지로 이동할 수 있도록
 -->
<div class="container-fluid">
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800">상품 관리</h1>
		<a href="<%=path %>/manage/createProduct.go"
			class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
			<i class="fas fa-plus fa-sm text-white-50"></i> &nbsp;상품 추가 <!-- #TODO 상품추가를 클릭 한다면 상품추가 페이지로 이동할 수 있도록 -->
		</a>
	</div>


	<div class="col" style="min-width:1400px;">
		<div class="card shadow mb-4">
			<!-- Card Header - Dropdown -->
			<div
				class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
				<h6 class="m-0 font-weight-bold text-primary">상품목록</h6>
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
							<th scope="col">상품종류</th>
							<th scope="col" >상품명</th>
							<th scope="col">가격</th>
							<th scope="col">상품 이미지</th>
							<th scope="col">상품 정보</th>
							<th scope="col">상영시간</th>
							<th scope="col">연령제한</th>
							<th scope="col">좋아요</th>
							<th scope="col">판매기간</th>
							<th scope="col">상영기간</th>
							<th scope="col">등록날짜</th>
							<th scope="col">판매여부</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="product" items="${productList}">
							<tr>
								<td>${product.productTypeVO.productType}</td>
								<td style="max-width:10rem">${product.productName}</td>
								<td>${product.productPrice }</td>
								<td><a href="javascript:void(window.open('/manage/viewimg?fileName=${product.productImage }','win0','width=800,height=768,status=no,toolbar=no,scrollbars=no'))">상품확인</a></td>
								<td><a href="javascript:void(window.open('/manage/viewimg?fileName=${product.productDesc}','win0','width=800,height=768,status=no,toolbar=no,scrollbars=no'))">상품확인</a></td>
								<td>${product.productPlaytime }분</td>
								<td>${product.productAgeLimit }세</td>
								<td>${product.productLove }</td>
								<td>${product.productSellStart }<br>~${product.productSellEnd }</td>
								<td>${product.productPeriods }<br>~${product.productPeriode }</td>
								<td>${product.productRegdate }</td>
								<c:if test="${product.productSellYN eq '0'}"><td>비노출</td></c:if> 
								<c:if test="${product.productSellYN eq '1'}"><td>노출</td></c:if>
								<td><a href="<%=path %>/manage/modifyForm?productID=${product.productID}" class="btn btn-sm btn-primary shadow-sm">수정</a></td>
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

<%@ include file="/WEB-INF/views/common/footer.jspf"%>