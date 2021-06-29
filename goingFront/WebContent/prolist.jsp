<%@page import="service.User"%>
<%@page import="model.Prolist"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file = "/WEB-INF/view/include/header.jspf" %>
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<%=request.getContextPath()%>/frontResource/dist/css/stylesproduct.css" rel="stylesheet" />
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        
        
    </head>
    <script type="text/javascript">
	let path = <%=path%>;
    function divide(productTypeId){
    	window.location.href = "/goingFront/list.go?productTypeId=" + productTypeId;
    }
    
    function seperate(productTypeId){
    	window.location.href = "/goingFront/list.go?productTypeId=" + productTypeId;
    }
</script>
		<script defer type="text/javascript" src="<%=jsPath%>getProduct.js"></script>
        <!-- Section-->
        <section class="py-5">
        	<div style="margin-top: 200px">
        		<button id="testButton">데이터 불러오기</button>
        	</div>
        	<div class="container px-4 px-lg-5 mt-5" >
        		<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center" id="getMore">
        		</div>
        	</div>
        	
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <c:forEach var="Prolist"  items="${productListofType}" begin="0"  end="9" step="1" varStatus="status">
                     <form method="get" action="/goingFront/payment.go">
                    <div class="col mb-5">
                    	<input type="hidden" name="productName" value="${Prolist.productName}"/>
                    	<input type="hidden" name="productPrice" value="${Prolist.productPrice}"/>
                    	
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="<%=path %>/upload/${Prolist.productImage}" alt="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder" ><a href="<%=path %>/productInfo.go?pId=${Prolist.productID}">${Prolist.productName}</a></h5>
                                    <!-- Product price-->
                                    ${Prolist.productPrice}
                                </div>
                            </div>
                            <!-- Product actions-->   
                            <div class=" p-4 pt-0  d-flex justify-content-center bg-transparent ">
                                <div class="text-inline"><button class="btn btn-outline-dark mt-auto" href="#">장바구니</button></div>
                                <div class="text-inline offset-1"  ><button class="btn btn-outline-dark mt-auto"  type="submit">구매하기</button></div>
                            </div>
                        </div>
                    </div>
                    </form>
                    </c:forEach>
                </div>  
            </div>  
        </section>
     </div>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>

