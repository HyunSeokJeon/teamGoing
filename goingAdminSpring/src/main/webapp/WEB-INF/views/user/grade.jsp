<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include file="/WEB-INF/views/common/header.jspf"%> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- #TODO 왼쪽 사이드바에서 상품관리 페이지로 이동할 수 있도록
 -->
<script defer type="text/javascript" src="<%=path%>/adminResource/js/grade.js">

</script>
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-start mb-4">
        <h1 class="h3 mb-0 text-gray-800">등급 관리</h1>
    </div>

    <div class="col" style="width: 500px">
        <div class="card shadow mb-4">
            <!-- Card Header - Dropdown -->
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">등급 목록</h6>
                <div class="dropdown no-arrow">
                    <a
                        class="dropdown-toggle"
                        href="#"
                        role="button"
                        id="dropdownMenuLink"
                        data-toggle="dropdown"
                        aria-haspopup="true"
                        aria-expanded="false"
                    >
                        <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                        <form method="post" class="form-group" id="gradeForm">
                            <div class="dropdown-header">등급 추가 :</div>
                            <div class="mx-2">
                                <input class="form-control form-control-sm" placeholder="등급 이름입력" id="grade" name="grade" required />
                            </div>
                            <br />
                            <div class="dropdown-header">등급 할인율 :</div>
                            <div class="mx-2">
                                <input class="form-control form-control-sm" placeholder="할인율 (ex:0.05)" id="benefits" name="benefits" required />
                            </div>
                            <div class="mx-2 text-right">
                                <button type="button" class="btn btn-sm btn-primary mt-2" id="gradeAjax">등록</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Card Body -->
            <div class="card-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#회원등급</th>
                            <th scope="col">회원등급별 혜택</th>
                        </tr>
                    </thead>
                    <tbody id="gradeBox">
                        <c:forEach var="grade" items="${gradeList}">
                            <tr>
                                <th scope="row">${grade.customerGrade}</th>
                                <td>${grade.customerBenefits * 100} %</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                    <!-- #TODO 상품을 받아올 경우에 페이지 넘버링을 할 수 있도록 -->
                </table>
            </div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jspf"%>
