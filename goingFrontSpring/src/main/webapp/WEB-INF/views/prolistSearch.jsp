<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file = "/WEB-INF/views/include/header.jspf" %>
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
	
    function divide(productTypeId){
    	window.location.href = "/goingFront/list.go?productTypeId=" + productTypeId;
    }
    
    function seperate(productTypeId){
    	window.location.href = "/goingFront/list.go?productTypeId=" + productTypeId;
    }
</script>


    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">Going</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#!">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                            </ul>
                        </li>
                    </ul>
                    <!-- Cart??? ?????? ?????? ?????? counting ????????? -->
                    	<div style="margin-right:10px" >
                        	<span> 	
                        	Cart
                        	<i class="bi bi-cart4"></i>
                        	</span>                        	
                        </div>
                        	<div style="margin-right:10px" >
                        	<span>
                        	????????????
                        	</span>                        	
                        </div>
                     <div class= "row justify-content-between">
                     	<span>
                     		?????????
                     	</span>
                     </div> 
                      </div> 
                </div>
        </nav>
        <!-- Header-->
        <header class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-dark">
                    <h1 class="display-4 fw-bolder">Going</h1>
                    <form action="/search.go"  method = "post">
                    <div class="input-group input-group-lg">
                    <input class="form-control" type="text" placeholder="???????????? ???????????????" aria-describedby="buttom-submit"/>
                    <button class="btn btn-primary" type="button"><i class="bi bi-search"></i> </button>
                    <!-- <p class="lead fw-normal text-white-50 mb-0"></p> -->
                	</div>
                	</form>
                </div >             
            </div>
        </header>
        <!-- ???????????? -->
        <div class = "container">
        <nav class="navbar navbar-expand-lg navbar-light  "
			>
			<div class="collapse navbar-collapse d-flex justify-content-left "
				id="navbarSupportedContent">
				
					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown"><a class="nav-link fs-4 "
							href="#" id="navbarDropdown2" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<button class="border-0 btn btn-dark"  id="num5"  onclick = 'divide(50)'>?????????</button> </a>  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
										          <a class="dropdown-item" href="#">Action</a>
										          <a class="dropdown-item" href="#">Another action</a>
										          <div class="dropdown-divider"></div>
										          <a class="dropdown-item" href="#">Something else here</a>
										        </div></li>
					</ul>

					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown"><a class="nav-link fs-4"
							href="#" id="navbarDropdown3" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<button class="border-0 btn btn-dark"  id="num4"  onclick = 'divide(40)'>??????</button>	 </a> 
										        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
										          <a class="dropdown-item" href="#">Action</a>
										          <a class="dropdown-item" href="#">Another action</a>
										          <div class="dropdown-divider"></div>
										          <a class="dropdown-item" href="#">Something else here</a>
										        </div> </li>
					</ul>

					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown"><a class="nav-link fs-4"
							href="#" id="navbarDropdown4" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<button class="border-0 btn btn-dark"  id="num3"  onclick = 'divide(30)'>?????????</button> </a> 
										        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
										          <a class="dropdown-item" href="#">Action</a>
										          <a class="dropdown-item" href="#">Another action</a>
										          <div class="dropdown-divider"></div>
										          <a class="dropdown-item" href="#">Something else here</a>
										        </div> </li>
					</ul>

					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown"><a class="nav-link fs-4"
							href="#" id="navbarDropdown5" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<button class="border-0 btn btn-dark"  id="num2"  onclick = 'divide(20)'>?????????</button> </a> <div class="dropdown-menu" aria-labelledby="navbarDropdown">
										          <a class="dropdown-item" href="#">Action</a>
										          <a class="dropdown-item" href="#">Another action</a>
										          <div class="dropdown-divider"></div>
										          <a class="dropdown-item" href="#">Something else here</a>
										        </div></li>
					</ul>

					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown"><a class="nav-link fs-4"
							href="#" id="navbarDropdown6" role="button"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<button class="border-0 btn btn-dark"  id="num1"  onclick = 'divide(10)'>?????????</button> </a>  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
										          <a class="dropdown-item" href="#">Action</a>
										          <a class="dropdown-item" href="#">Another action</a>
										          <div class="dropdown-divider"></div>
										          <a class="dropdown-item" href="#">Something else here</a>
										        </div></li>
					</ul>
					
				
			</div>
		</nav>
		
        <!-- ?????? ?????? ???  -->
        <nav class="navbar navbar-expand-lg navbar-light">
        <div class="d-flex justify-content-left collapse navbar-collapse">
        	<a class=" text-dark"  role = "button" onclick = 'seperate("")'> <Strong>?????? ??? </Strong></a>
        	<a class="text-dark"  role = "button" style = "margin-left : 10px " onclick = 'seperate("lowPrice")'> <Strong>?????? ?????? ???</Strong> </a>
        	<a class="text-dark"  role = "button" style = "margin-left : 10px " onclick = 'seperate("highPrice")'> <Strong>?????? ?????? ??? </Strong></a>
        			<div class="nav-item dropdown">
        				<a class="nav-link drpodown-toggle"  id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">?????????</a>
                            <ul class="dropdown-menu" aria-labelledby="narbarDropdown">
                                <li><a class="dropdown-item" href="#!">1??????</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">1??????</a></li>
                                <li><a class="dropdown-item" href="#!">3??????</a></li>
                            </ul>
        		</div>
        </div>
        </nav>
        <!-- Section-->
        <section class="py-5"><%-- <% List<Prolist> a = (List<Prolist>) request.getAttribute("productListofType");
        %>
        <%=a.size()%>  --%>
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <c:forEach var="Prolist"  items="${Keyword}" begin="0"  end="9" step="1" varStatus="status">
                     <form method="get" action="/goingFront/payment.go">
                    <div class="col mb-5">
                    	<input type="hidden" name="productName" value="${Prolist.productName}"/>
                    	<input type="hidden" name="productPrice" value="${Prolist.productPrice}"/>
                    	
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
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
                                <div class="text-inline"><button class="btn btn-outline-dark mt-auto" href="#">????????????</button></div>
                                <div class="text-inline offset-1"  ><button class="btn btn-outline-dark mt-auto"  type="submit">????????????</button></div>
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

