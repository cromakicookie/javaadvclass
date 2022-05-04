<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dao.*" %>
<%@ page import="dto.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호텔목록</title>
<link rel="stylesheet" href="/assets/css/main.css">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/blog/">
    <body>
      <!-- Bootstrap core CSS -->
      <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
			<%@ include file='/header.jsp' %>
			<link rel="stylesheet" href="assets/css/main.css">
<div class="container" >
  <div class="p- p-md-5 mb-4 text-white rounded " style="background-color: peachpuff;">
          <img class="d-block mx-auto mb-4" src="logo.png" alt="" width="300" height="150">
          <h2>호텔목록</h2>
          <p class="lead">국내 최초 호텔링 시스템</p>
        </div>
    </div>





<!-- Section-->
<section class="py-5">
<div class="container px-4 px-lg-5 mt-5">
<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
<%
ArrayList<HotelDTO> hotels = (new HotelDAO()).getHotelList();

for (HotelDTO hotel : hotels) {

%>

  <div class="col mb-5">
      <div class="card h-100">
          <!-- Product image-->
          <img class="card-img-top" src="/images/<%=hotel.getCover()%>" alt="..." width="450" height="300" />
          <!-- Product details-->
          <div class="card-body p-4">
              <div class="text-center">
                  <!-- Product name-->
                  <h5 class="fw-bolder"><%=hotel.getName() %></h5>
                  <!-- Product price-->
                  1박 <%=hotel.getPrice() %>원
              </div>
          </div>
          <!-- Product actions-->
          <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
              <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">상세보기</a></div>
              <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">예약하기</a></div>
          </div>
      </div>
  </div>
  
  <%
}
%>
</div>
</div>
</section>


<!-- Footer-->
<footer class="py-5 bg-dark">
<div class="container"><p class="m-0 text-center text-white"> With Pet &copy; 2022</p></div>
</footer>
       </div>
       </div>
</main>
			<%@ include file='/footer.jsp' %>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>