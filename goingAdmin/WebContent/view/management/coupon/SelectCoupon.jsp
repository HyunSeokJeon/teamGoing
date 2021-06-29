<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/view/common/header.jspf"%>

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
	    <h6 class="m-0 font-weight-bold text-primary">쿠폰 목록</h6>
	    <div class="dropdown no-arrow">
	        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
	            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
	        </a>
	        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
	            aria-labelledby="dropdownMenuLink">
	            <div class="dropdown-header">Dropdown Header:</div>
	            <a class="dropdown-item" href="#">Action</a>
	            <a class="dropdown-item" href="#">Another action</a>
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
				      <th scope="col">#쿠폰ID</th>
				      <th scope="col">상품명</th>
				      <th scope="col">가격</th>
				      <th scope="col">상품 이미지</th>
				      <th scope="col">상품 정보</th>
				      <!-- 상품 정보 이미지는 팝업으로? -->
				      <th scope="col">등록날짜</th>
				      <th scope="col"></th>
				      <th scope="col"></th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row">1</th>
				      <td></td>
				      <td></td>
				      <td></td>
				      <td>null</td>
				      <td>null</td>
				      <td><button class="btn btn-sm btn-primary shadow-sm">수정</button></td>
				      <td><button class="btn btn-sm btn-primary shadow-sm">삭제</button></td>
				      <!-- #TODO 수정 삭제가 가능하도록 button이외에 a태그를 사용하던 매개변수를 넘겨줄 수 있도록 하자 -->
				      <!-- #TODO 수정시 수정 페이지로 이동할 수 있도록 삭제시 확인버튼을 출력해서 확인시 넘어갈 수 있도록 -->
				    </tr>
				    <tr>
				      <th scope="row">1</th>
				      <td></td>
				      <td></td>
				      <td></td>
				      <td>null</td>
				      <td>null</td>
				      <td><button class="btn btn-sm btn-primary shadow-sm">수정</button></td>
				      <td><button class="btn btn-sm btn-primary shadow-sm">삭제</button></td>
				    </tr>
				    <tr>
				      <th scope="row">1</th>
				      <td></td>
				      <td></td>
				      <td></td>
				      <td>null</td>
				      <td>null</td>
				      <td><button class="btn btn-sm btn-primary shadow-sm">수정</button></td>
				      <td><button class="btn btn-sm btn-primary shadow-sm">삭제</button></td>
				    </tr>
				    
				  </tbody>
				  <!-- #TODO 상품을 받아올 경우에 페이지 넘버링을 할 수 있도록 -->
				</table>
	        </div>
	    </div>
	</div>
</div>
<%@ include file="/view/common/footer.jspf"%>