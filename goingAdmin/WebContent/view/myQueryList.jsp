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
<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary">나의 문의 내역</h6>
	</div>

	<div class="card-body">
		<div class="table-responsive">

			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold">1:1 문의 내역</h6>
				<br>
			</div>

			<table class="table table-bordered" id="dataTable"
				style="text-align: center;">

				<tr>
					<th>문의 건수</th>
					<th>답변완료</th>

				</tr>

				<tr>
					<td>1</td>
					<td>1</td>
				</tr>

			</table>

			<div class="card mb-4 py-3 border-left-primary">
				<div class="card-body">문의1</div>
			</div>

			<div class="card mb-4 py-3 border-left-primary">
				<div class="card-body">문의2</div>
			</div>
			
		</div>
	</div>
</div>







<%@ include file="/view/common/footer.jspf"%>