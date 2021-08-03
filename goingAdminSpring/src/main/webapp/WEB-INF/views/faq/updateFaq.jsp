<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container-fluid">

	<div class="col">
		<div class="card shadow mb-4">
			<!-- Card Header - Dropdown -->
			<div
				class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
				<h6 class="m-0 font-weight-bold text-primary">FAQ 수정</h6>
				<div class="dropdown no-arrow">
					<a class="dropdown-toggle" href="#" role="button"
						id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i
						class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
					</a>
					<div
						class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
						aria-labelledby="dropdownMenuLink">
						<div class="dropdown-header">Dropdown Header:</div>
						<a class="dropdown-item" href="#">Action</a> <a
							class="dropdown-item" href="#">Another action</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div>
				</div>
			</div>
			<!-- Card Body -->
			<div class="card-body">
				<form method="post">					
					<div class="col-md-4 mb-3">
					
					<input type="hidden" name = "faqNumber" value="${list.faqNumber}">
					
						<label for="faqTitle">제목</label>
						<input type="text" class="form-control" id="faqTitle" name="faqTitle" value="${updateFaq.faqTitle}">
					</div>
					<div class="col-md-4 mb-3">
						<label for="faqContents">답변</label>
						<input type="text" class="form-control" id="faqContents" name="faqContents" value="${updateFaq.faqContents}">
					</div>					
										
					<br/>
					<div class="col">
						<button type="submit"
							class="p-2 d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
							<i class="fas fa-check fa-sm text-white-50"></i> &nbsp;질문 수정
						</button>
						<a href="/faq/list"
							class="p-2 d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm ml-2">
							<i class="fas fa-times fa-sm text-white-50"></i>&nbsp;취소
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>


<%@ include file="/WEB-INF/views/common/footer.jspf"%>






