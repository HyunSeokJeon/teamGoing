<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
    </head>
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
        <header class="bg-light py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-dark">
                    <h1 class="display-4 fw-bolder">Going</h1>
                    <form action="#" >
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
        <div class="border d-flex justify-content-left  bg-light">
        	<div class="col-2">Category</div>
        	<div class="col-2">??????</div>
        	<div class=" col-8 ">
        			<ul >
        				<li class="list-inline-item">??????1</li>
        				<li class="list-inline-item">??????2</li>
        				<li class="list-inline-item">??????3</li>
        				<li class="list-inline-item">??????4</li>
        				<li class="list-inline-item">??????5</li>
        				<li class="list-inline-item">??????6</li>
        				<li class="list-inline-item">??????7</li>
        				
        			</ul>
        		</div>
        		
        </div>
        <!-- ?????? ?????? ???  -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="d-flex justify-content-center collapse navbar-collapse">
        	<div class="nav-item" style="margin-right: 15px"> ????????? ??? </div>
        	<div class="nav-item " style="margin-right: 15px"> ?????? ?????? ??? </div>
        	<div class="nav-item " style="margin-right: 15px"> ?????? ?????? ??? </div>
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
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Fancy Product</h5>
                                    <!-- Product price-->
                                    $40.00 - $80.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border d-flex justify-content-center bg-transparent ">
                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">????????????</a></div>
                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">????????????</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Special Item</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$20.00</span>
                                    $18.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border d-flex justify-content-center bg-transparent ">
                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">????????????</a></div>
                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">?????? ??????</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Sale Item</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$50.00</span>
                                    $25.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border d-flex justify-content-center bg-transparent ">
                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">????????????</a></div>
                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">?????? ??????</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Popular Item</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    $40.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border d-flex justify-content-center bg-transparent ">
                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">????????????</a></div>
                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">?????? ??????</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Sale Item</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$50.00</span>
                                    $25.00
                                </div>
                            </div>
                            <!-- Product actions-->
                           <div class="card-footer p-4 pt-0 border d-flex justify-content-center bg-transparent ">
                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">????????????</a></div>
                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">?????? ??????</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Fancy Product</h5>
                                    <!-- Product price-->
                                    $120.00 - $280.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border d-flex justify-content-center bg-transparent ">
                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">????????????</a></div>
                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">?????? ??????</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Special Item</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$20.00</span>
                                    $18.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border d-flex justify-content-center bg-transparent ">
                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">????????????</a></div>
                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">?????? ??????</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Popular Item</h5>
                                    <!-- Product reviews-->
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <!-- Product price-->
                                    $40.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border d-flex justify-content-center bg-transparent ">
                               <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">????????????</a></div>
                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">?????? ??????</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="#" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Sale Item</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$50.00</span>
                                    $25.00
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border d-flex justify-content-center bg-transparent ">
                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">????????????</a></div>
                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">?????? ??????</a></div>
                            </div>
                        </div>
                    </div>
                     <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Sale badge-->
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <!-- Product image-->
                            <img class="card-img-top" src="#" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">Sale Item</h5>
                                    <!-- Product price-->
                                    <span class="text-muted text-decoration-line-through">$50.00</span>
                                    $25.00
                                </div>
                            </div>
                            <!-- Product actions-->
                             <div class="card-footer p-4 pt-0 border d-flex justify-content-center bg-transparent ">
	                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">????????????</a></div>
	                                <div class="text-inline"><a class="btn btn-outline-dark mt-auto" href="#">????????????</a></div>
	                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>

