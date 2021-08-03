<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/include/searchbarHeader.jspf"%>
<script defer type="text/javascript"
	src="<%=request.getContextPath()%>/frontResource/dist/js/juso.js"></script>

<div class="container position-relative">
	<div class="row justify-content-center">
		<div class="col-md-6">
			<div class="text-left">
				<!-- Page heading-->
				<h1 class="mb-5">&nbsp;</h1>
				<!-- Signup form-->
				<p class="h1">계정정보 변경</p>


				<form role="form" action="/customer/modifyPi" method="post">
					<div class="form-group my-3">
						<label for="customerID">아이디</label>
						<div class="row mt-2">
								<input type="hidden" class="form-control form-control-sm" name="customerId"
									value="${customer.customerId }">
							<div class="col-8">
								<input class="form-control form-control-sm" id="customerID"
									value="${customer.customerId }" disabled>
							</div>
							<div class="col">
								<a 
									class ="btn btn-secondary btn-sm"
									href="javascript:void(window.open('/customer/modifyPass','win0','width=475,height=768,status=no,toolbar=no,scrollbars=no'))">
									비밀번호 변경</a>
							</div>
						</div>
						
					</div>
			
				
					<div class="form-group my-3">
						<label for="customerName mb-2">이름</label> <input
							class="form-control form-control-sm mt-2" id="customerName" name="customerName"
							value="${customer.customerName }">
					</div>
					<label for="customerEmail">이메일</label> 
					<div class="form-group mb-3">
						<input class="form-control form-control-sm mt-2 inline-block" style="width:40%" id="customerEmail" name="email1"
							value="${customer.customerEmail.split('@')[0] }">
						<span class="mx-2">@</span>
						<select name = "email2" class="form-select form-select-sm inline-block w-auto">
							<option value = "naver.com" ${customer.customerEmail.split('@')[1] eq 'naver.com'?'selected':'' }>naver.com</option>
							<option value = "gmail.com" ${customer.customerEmail.split('@')[1] eq 'gmail.com'?'selected':'' }>gmail.com</option>
							<option value = "daum.net" ${customer.customerEmail.split('@')[1] eq 'daum.net'?'selected':'' }>daum.net</option> 
						</select>
					</div>
					<div class="form-group my-3">
						<label for="customerPhonenum">휴대전화</label> <input
							class="form-control form-control-sm mt-2" id="customerPhonenum" name="customerPhonenum"
							value="${customer.customerPhonenum }">
					</div>
					<div class="form-row my-3">
						<div class="col-6">
							<label for="customAddressCode1">주소</label>
							<div class="input-group input-group-sm mt-2">
								<input class="form-control" type="text" value="${customer.customerAddresscode1 }"
									aria-describedby="searchPost" id="addresscod1" name="customerAddresscode1" />
								<button class="btn btn-primary btn-sm" id="searchPost"
									type="button" onClick="goPopup();">
									<i class="bi bi-search"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="form-group my-3">
						<input class="form-control form-control-sm mt-2"
							id="address1" name="customerAddress1" value="${customer.customerAddress1 }">
					</div>
					<div class="form-group my-3">
						<input class="form-control form-control-sm mt-2"
							id="address2" name="customerAddress2" value="${customer.customerAddress2 }">
					</div>

					<button class="btn btn-primary btn-sm mx-2" type="submit">확인</button>
					<button class="btn btn-danger btn-sm mx-2">취소</button>
				</form>

			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	if(${!(success eq null) ? success : false}){
		alert("정보 수정이 완료되었습니다.");
		window.location.href="/myPage/main";
	}
	
	
</script>
<%@ include file="/WEB-INF/views/include/footer.jspf"%>