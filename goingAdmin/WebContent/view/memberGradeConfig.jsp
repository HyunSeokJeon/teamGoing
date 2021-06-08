<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/view/common/header.jspf"%>


<%--       Begin Page Content
                <div class="container-fluid">

                    Page Heading
                    <h1 class="h3 mb-4 text-gray-800">Blank Page</h1>

                </div>
                /.container-fluid

            </div>
            End of Main Content
             --%>

<!-- DataTales Example -->


<style>


td {
	color: black;
	font-weight: bold;
}


	
</style>

<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">회원등급 수정</h6>
	</div>
	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" id="dataTable"
				style="width: 700px">


				<tr class="px-3 py-5 bg-gradient-primary text-white"
					style="text-align: center;">
					<th colspan="2">회원등급 수정</th>
				</tr>

				<tr>
					<td>회원등급명</td>
					<td><input type="text" class="form-control form-control-sm"
						placeholder="" aria-controls="dataTable"></td>
				</tr>

				<tr>
					<td>최근 3개월 구매금액</td>
					<td><input type="text" class="form-control form-control-sm"
						placeholder="" aria-controls="dataTable"></td>
				</tr>

				<tr>
					<td>할인율</td>
					<td><input type="text" class="form-control form-control-sm"
						placeholder="" aria-controls="dataTable"></td>
				</tr>

				<%-- 로그인하면 회원등급 옆에 표시할 아이콘 
				https://webdir.tistory.com/435 파일업로드 아이콘관련 html/css/js  --%> 		
				
			<tr>
					<td>등급 아이콘</td> 				
					<td>
						
							<label for="btnforfileupload" class="btn btn-primary">업로드</label> <input type="file" class="filebtn" accept="image/jpeg,image/gif,image/png"

							 id="btnforfileupload" style="display: none;">
						
					</td>
				</tr>

				<tr>
					<td colspan="5" style="text-align: right;"><a href="#"
						class="btn btn-primary btn-icon-split"> <span
							class="icon text-white-50"> <i class="fas fa-edit"></i>
						</span> <span class="text">회원등급 수정</span> 
					</a></td>

				</tr>
					
			</table>
		</div>
	</div>
</div>




<%@ include file="/view/common/footer.jspf"%>