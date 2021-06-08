<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/frontResource/dist/include/searchbarHeader.jspf"%>


<div class="container position-relative">
	<div class="row justify-content-center">
		<div class="col-md-6">
			<div class="text-left">
				<!-- Page heading-->
				<h1 class="mb-5">&nbsp;</h1>
				<!-- Signup form-->
				<p class="h1">계정정보 변경</p>


				<form>
					<div class="form-group my-3">
						<label for="customerID">아이디 - 비밀번호 변경</label>
						<div class="row mt-2">
							<div class="col-8">
								<input class="form-control form-control-sm" id="customerID"
									value="hong" disabled>
							</div>
							<div class="col">
								<a onfocus=blur()
									class ="btn btn-secondary btn-sm"
									href="javascript:void(window.open('modifyPassword.jsp','win0','width=500,height=768,status=no,toolbar=no,scrollbars=no'))">
									비밀번호 변경</a>
							</div>
						</div>
						
					</div>
			
				
					<div class="form-group my-3">
						<label for="customerName mb-2">이름</label> <input
							class="form-control form-control-sm mt-2" id="customerName"
							value="홍길동">
					</div>
					<div class="form-group my-3">
						<label for="customerEmail">이메일</label> <input
							class="form-control form-control-sm mt-2" id="customerEmail"
							value="hong@naver.com">
					</div>
					<div class="form-group my-3">
						<label for="customerPhonenum">휴대전화</label> <input
							class="form-control form-control-sm mt-2" id="customerPhonenum"
							value="hong-hong-hong">
					</div>
					<div class="form-row my-3">
						<div class="col-6">
							<label for="customAddressCode1">주소</label>
							<div class="input-group input-group-sm mt-2">
								<input class="form-control" type="text" value="111-111"
									aria-describedby="searchPost" id="customAddressCode1" />
								<button class="btn btn-primary btn-sm" id="searchPost"
									type="button">
									<i class="bi bi-search"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="form-group my-3">
						<input class="form-control form-control-sm mt-2"
							id="customAddress1" value="서울시 머시기 ㅎㅎㅎ">
					</div>
					<div class="form-group my-3">
						<input class="form-control form-control-sm mt-2"
							id="customAddress2" value="111-1111">
					</div>

					<button class="btn btn-primary btn-sm mx-2" type="submit">확인</button>
					<button class="btn btn-danger btn-sm mx-2" type="submit">취소</button>
				</form>

			</div>
		</div>
	</div>
</div>

<%@ include file="/frontResource/dist/include/footer.jspf"%>