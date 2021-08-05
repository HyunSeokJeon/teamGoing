<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jspf"%>
<div class="container">
	<div class="container-fluid">
		<div class="d-sm-flex align-items-center justify-content-between mb-4">
			<img class="mainicon mt-4"
				src="https://img.icons8.com/ios/50/000000/headset.png" />
			<h1 class="h3 mb-0 text-gray-800">FAQ</h1>
		</div>
	</div>
	<div class="card-body">

		<div class="container-fluid">
			<img class="mainicon mt-4"
				src="https://img.icons8.com/ios/50/000000/headset.png" />
			<h1 class="h3 mb-0 text-gray-800">FAQ</h1>
		</div>
		<div class="card-body"></div>
		<table class="table">
			<thead>

				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col"></th>

			</thead>
			<tbody>

				<c:forEach var="list" items="${list}">
					<tr>
						<th scope="row">${list.faqNumber}</th>
						<th><div onclick="display('content${list.faqNumber}')">${list.faqTitle}<span
									class="arrow">▼</span>
								<div class='content' id="content${list.faqNumber}"
									style="display: none;">${list.faqContents}</div>
							</div></th>
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

			</tbody>
		</table>
	</div>
</div>




<%@ include file="/WEB-INF/views/include/footer.jspf"%>