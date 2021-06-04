<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/view/common/header.jspf" %>
<!DOCTYPE html>
<html lang="en">



                <!-- Begin Page Content -->

                    <!-- Page Heading -->
                    
   <h1 class="h2 mb -4 text-gray-800 ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;할인 쿠폰 관리</h1>
   <div class="container-fluid">
	

    <li>쿠폰 생성 : <input boolean createNewFile()>
  			<button class="p-2 d-none d-sm-inline-block btn btn-sm btn-success shadow-sm ml-2">
							<i class="fas fa-plus fa-sm text-white-50"></i> &nbsp;생성 </button></li>
   쿠폰 목록
<select multiple  class="form-control">
  <option> 가입축하 5% 할인 쿠폰</option>
  <option> 한번 더 5% 할인 쿠폰 </option>
  <option> 이번엔 10% 할인 쿠폰</option>
  <option> 그냥 20% 할인 쿠폰</option>
   <option> aaa</option>
    <option> bbbb</option>
</select>




</div>

	<!-- DB에서 쿠폰 목록 테이블에 있는 값 반복문으로 -->
  	
  
    <li>쿠폰 삭제 : <input type ="list" name ="new_coustom">
 					  <button class="p-2 d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm ml-2">
							<i class="fas fa-minus fa-sm text-white-50"></i> &nbsp;삭제</button>
  	
  
   						 </div>
                </div>
   

           
            <!-- End of Main Content -->
<%@ include file="/view/common/footer.jspf" %>