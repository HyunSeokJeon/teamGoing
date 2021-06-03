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
input[type="text"] {
	width: 100%;
}

td {
	color: black;
	font-weight: bold;
}

.filebox label {
	display: inline-block;
	padding: .5em .75em;
	color: #ffffff;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #4e73df;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
}

.filebox input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}
</style>

<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">회원등급 등록</h6>
	</div>
	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" id="dataTable"
				style="width: 700px">


				<tr class="px-3 py-5 bg-gradient-primary text-white"
					style="text-align: center;">
					<th colspan="2">회원등급 등록</th>
				</tr>

				<tr>
					<td>회원등급명</td>
					<td><input type="search" class="form-control form-control-sm"
						placeholder="" aria-controls="dataTable"></td>
				</tr>

				<tr>
					<td>구매금액(3개월) 이상</td>
					<td><input type="search" class="form-control form-control-sm"
						placeholder="" aria-controls="dataTable"></td>
				</tr>

				<tr>
					<td>할인율</td>
					<td><input type="search" class="form-control form-control-sm"
						placeholder="" aria-controls="dataTable"></td>
				</tr>

				<%-- 로그인하면 회원등급 옆에 표시할 아이콘  --%> 		
				<tr>
					<td>등급 아이콘</td> 				
					<td>
						<div class="filebox">
							<label for="ex_file">업로드</label> <input type="file" id="ex_file">
						</div>
					</td>
				</tr>

				<tr>
					<td colspan="5" style="text-align: right;"><a href="#"
						class="btn btn-primary btn-icon-split"> <span
							class="icon text-white-50"> <i class="fas fa-edit"></i>
						</span> <span class="text">회원 등급 등록</span>
					</a></td>

				</tr>

			</table>
		</div>
	</div>
</div>




<%@ include file="/view/common/footer.jspf"%>