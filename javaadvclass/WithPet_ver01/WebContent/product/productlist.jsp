<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dto.*"%>
<%@page import="dao.*"%>
<%@page import="util.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FORM</title>
<link rel="stylesheet" href="product.css">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/blog/">
    <script src="header.html"></script>
    <script src="footer.html"></script>
<script type="text/javascript"> 
function fnCart(name, price) { 
	//alert("Name : " + name + "\nPrice : " + price); 
	if(confirm("장바구니에 담으시겠습니까?")) { 
		location.href = "CartProcess.jsp?name=" + name + "&price=" + price; 
		} 
	} 
function fnView() { 
		if(confirm("장바구니를 보시겠습니까?")){ 
			location.href = "CartView.jsp"; 
			} 
		} 
	</script>
</head>
    <body>
      <!-- Bootstrap core CSS -->
      <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<div class="container" >
  <div class="p- p-md-5 mb-4 text-white rounded " style="background-color: peachpuff;">
          <img class="d-block mx-auto mb-4" src="logo.png" alt="" width="300" height="150">
          <h2>상품목록</h2>
          <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>
        </div>
    </div>
    </div>
      
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-white">
              <div class="container px-4 px-lg-5">
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
                      <form class="d-flex">
                          <button class="btn btn-outline-dark" type="submit" onclick="fnView()">
                              <i class="bi-cart-fill me-1"></i>
                              Cart
                              <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                          </button>
                      </form>
                  </div>
              </div>
          </nav>
</div>
</div>
</nav>

<!-- Section-->
<section class="py-5">
<div class="container px-4 px-lg-5 mt-5">
<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
<% 
ArrayList<ProductDTO> products = (new ProductDAO()).getProductList();

for (ProductDTO product : products) {
%>
  <div class="col mb-5">
      <div class="card h-100" >
          <!-- Sale badge-->
          <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
          <!-- Product image-->
          <img class="card-img-top" name="img" src="/WithPet_ver01/product/img/<%=product.getImage() %>" width='450' height='300' alt="상품 이미지" />
          <!-- Product details-->
          <div class="card-body p-4">
              <div class="text-center">
                  <!-- Product name-->
                  <h5 class="fw-bolder" name="name"><%=product.getName() %></h5>
                  <!-- Product reviews-->
                  <div class="d-flex justify-content-center small text-warning mb-2">
                      <div class="bi-star-fill"></div>
                      <div class="bi-star-fill"></div>
                      <div class="bi-star-fill"></div>
                      <div class="bi-star-fill"></div>
                      <div class="bi-star-fill"></div>
                  </div>
                  <!-- Product price-->
                  <span class="text-muted text-decoration-line-through" name="price">$<%=product.getPrice() %></span>
                  $<%=product.getPrice() %>
              </div>
          </div>
          <!-- Product actions-->
          <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
              <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
          </div>
          <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
              <div class="text-center"><a class="btn btn-outline-dark mt-auto" onclick='fnCart(<%=product.getName()%> ,<%=product.getPrice()%>)'>Add to cart</a></div>
          </div>
      </div>
  </div>
  
<% } %>
 
  
 
</div>
</section>
<!-- Footer-->
<footer class="py-5 bg-dark">
<div class="container"><p class="m-0 text-center text-white"> With Pet &copy; 2022</p></div>
</footer>
       </div>
       </div>
</main>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>