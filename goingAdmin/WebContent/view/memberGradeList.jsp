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
		<h6 class="m-0 font-weight-bold text-primary">회원등급 목록</h6>
	</div>
	<div class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" id="dataTable"
				style="text-align: center; vertical-align: middle;">



				<tr class="px-3 py-5 bg-gradient-primary text-white">
					<th>선택</th>
					<th>회원등급</th>
					<th>최근 3개월 구매금액</th>
					<th>할인율</th>
					<th>회원수</th>
				</tr>





				<tr>
					<td><input type="checkbox"></td>
					<td>다이아</td>
					<td>500,000원</td>
					<td>2.5%</td>
					<td>blank</td>
				</tr>

				<tr>
					<td><input type="checkbox"></td>
					<td>플래티넘</td>
					<td>250,000원</td>
					<td>2%</td>
					<td>blank</td>
				</tr>

				<tr>
					<td><input type="checkbox"></td>
					<td>골드</td>
					<td>100,000원</td>
					<td>1.5%</td>
					<td>blank</td>
				</tr>

				<tr>
					<td><input type="checkbox"></td>
					<td>실버</td>
					<td>50,000원</td>
					<td>1%</td>
					<td>blank</td>
				</tr>


				<tr>
					<td><input type="checkbox"></td>
					<td>브론즈</td>
					<td>5,000원</td>
					<td>0.5%</td>
					<td>blank</td>
				</tr>


				<tr>
					<td colspan="5" style="text-align: right;"><a href="#"
						class="btn btn-primary btn-icon-split"> <span
							class="icon text-white-50"><i class="fas fa-user-edit"></i>
						</span> <span class="text">회원등급 추가</span>
					</a> <a href="#" class="btn btn-warning btn-icon-split"> <span
							class="icon text-white-50"><i class="fas fa-edit"></i>
						</span><span class="text">회원등급 수정</span>
					</a> <a href="#" class="btn btn-danger btn-icon-split"> <span
							class="icon text-white-50"> <i class="fas fa-trash"></i>
						</span> <span class="text">선택 등급 삭제</span>
					</a></td>

				</tr>

			</table>

		</div>
	</div>
</div>




<%@ include file="/view/common/footer.jspf"%>