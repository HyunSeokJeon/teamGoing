<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/view/common/header.jspf" %>

                <!-- Begin Page Content -->
<div class= "container-fluid">
			<div class="d-sm-flex align-items-center justify-content-between mb-4">
 				<h1 class="h3 mb-0 text-gray-800">결제 관리</h1>
 			</div>
 				<!-- Card Header -->
<div class="col">
	<div class="card shadow mb-4">
	<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
	    <h6 class="m-0 font-weight-bold text-primary">결제 목록</h6>
	</div>
	<!-- Card Body -->
	        <div class="card-body">
	            <table class="table">
				  <thead class="bg-light">
				    <tr>
				      <th scope="col">결제 방식</th>
				      <th colspan="2">결제 상품명</th>
				      <th scope="col">아이디</th>
				      <th scope="col">이름</th>
				      <th scope="col">결제 일시</th>
				      <th scope="col">결제금액</th>
				      <th scope="col">결제 상황</th>
				      <th scope="col">확인/취소</th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <th scope="row">무통장입금</th>
				      <td colspan="2">싸이 흠뻑쇼</td>
				      <td>kiaofk</td>
				      <td>서상원</td>
				      <td>2021.06.08</td>
				      <td>89,000</td>
				      <td><button class="btn btn-sm btn-primary shadow-sm">취소 대기</button></td>
				      <td><button class="btn btn-sm btn-primary shadow-sm">결제 취소</button></td>
				    </tr>
				    <tr>
				      <th scope="row">카드결제</th>
				      <td colspan="2">뮤지컬 캣츠</td>
				      <td>kiaofk</td>
				      <td>서상원</td>
				      <td>2021.06.08</td>
				      <td>89,000</td>
				      <td><button class="btn btn-sm btn-primary shadow-sm">결제 완료</button></td>
				      <td><button class="btn btn-sm btn-primary shadow-sm">결제 완료</button></td>
				    </tr>
				    <tr>
				      <th scope="row">카카오페이</th>
				      <td colspan="2">슬랙스</td>
				      <td>kiaofk</td>
				      <td>서상원</td>
				      <td>2021.06.08</td>
				      <td>89,000</td>
				      <td><button class="btn btn-sm btn-primary shadow-sm">결제 대기</button></td>
				      <td><button class="btn btn-sm btn-primary shadow-sm">결제 처리</button></td>
				    </tr>    
				  </tbody>
				</table>
	        </div>
	    </div>
	</div>
 </div>
            <!-- End of Main Content -->
<%@ include file="/view/common/footer.jspf" %>
