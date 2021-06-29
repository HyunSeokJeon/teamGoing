<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/view/common/header.jspf" %>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">관리자 페이지</h1>
			
 <FORM>
  <INPUT type='BUTTON' value='상품 등록 관리' onclick='test()'>
  
  

  <button type="button" onclick="location.href='discountCouponManagement.jsp' ">할인쿠폰관리</button>
  	
    
    
    
  <INPUT type='BUTTON' value='회원 등록 관리' onclick='test()'>
  <INPUT type='BUTTON' value='자주하는 질문 관리' onclick='test()'>	
  <INPUT type='BUTTON' value='결제 관리' onclick='test()'>
  <INPUT type='BUTTON' value='통계' onclick='test()'>
  <INPUT type='BUTTON' value='1:1 고객 지원' onclick='test()'>
  <INPUT type='BUTTON' value='회원 등급 관리' onclick='test()'>
  <INPUT type='BUTTON' value='회원 등급별 혜택' onclick='test()'>
</FORM>
 

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->
<%@ include file="/view/common/footer.jspf" %>