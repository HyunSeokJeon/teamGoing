<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/common/header.jspf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container-fluid">
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800">FAQ</h1>
		<a href="<%=path%>/customerservice/createFaq.go"
			class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
			<i class="fas fa-plus fa-sm text-white-50"></i> &nbsp;질문,답변 추가 <!-- #TODO 상품추가를 클릭 한다면 상품추가 페이지로 이동할 수 있도록 -->
		</a>
	</div>

	<div class="col" style="min-width: 1080px;">
		<div class="card shadow mb-4">
			<!-- Card Header - Dropdown -->
			<div
				class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
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
				<table class="table">
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">제목</th>
							<th scope="col"></th>
						</tr>

					</thead>
					<tbody>
						<!--<c:forEach var="faqList" items="${faqList }">
							<tr>
								<th></th>
								<th scope="row">${faqList.FAQTITLE}
								<td><a href="" class="btn btn-sm btn-primary shadow-sm">수정</a></td>
								</th>
							</tr></c:forEach>
						-->
						
						<c:forEach var="faqList" items="${faqList }">
							<tr>
								<th scope="row">${faqList.FAQNUMBER}</th>
								<th><div onclick="display('content${faqList.FAQNUMBER}')">${faqList.FAQTITLE }<span
											class="arrow">▼</span>
										<div class='content' id="content${faqList.FAQNUMBER}" style="display: none;">${faqList.FAQCONTENTS }</div>
									</div></th>
								<th><a href="<%=path%>/customerservice/modifyFaq.go?faqid=${faqList.FAQNUMBER}" class="p-2 d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">수정</a>
								<a href="<%=path%>/customerservice/deleteFaq.go?faqid=${faqList.FAQNUMBER}" class="p-2 d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm ml-2">삭제</a></th>
							</tr>
						</c:forEach>

						<script type="text/javascript">
							  var contents = document.querySelectorAll('.content');
							
							  function display(id) {
							    [...contents].forEach((content) => {
							      if (content.id !== id) {
							        content.style.display = "none";
							        content.previousElementSibling.innerHTML = '▼';
							      }
							    });
							    var element = document.getElementById(id);
							    if (element.style.display === 'block') {
							      element.style.display = 'none';
							      element.previousElementSibling.innerHTML = '▼';
							    } else {
							      element.style.display = 'block';
							      element.previousElementSibling.innerHTML = '▲';
							    }
							  }
							
						</script>
						​

						<%-- <c:forEach var="items안에 들어있는 데이터 하나를 부르는 변수명" items="반복가능한 데이터"> --%>
						<%-- <c:forEach var="faq" items="${faqList }"> 
						(반복가능한 데이터 == List<Faq> )안에 들어가있는 데이터를 이 이름으로 부르겟다
						</c:forEach>--%>

<%--  <td><a href="<%=path %>/custoemrservice/modifyFaq.go" class="btn btn-sm btn-primary shadow-sm">수정</a></td>--%>

					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/view/common/footer.jspf"%>











