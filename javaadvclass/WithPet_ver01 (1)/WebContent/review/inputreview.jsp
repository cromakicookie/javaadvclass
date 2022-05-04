<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ORDER FORM</title>
<link rel="stylesheet" href="assets/css/main.css">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/blog/">
    <script src="header.jsp"></script>
    <script src="footer.jsp"></script>
    <script>
      function kakaopost() {
          new daum.Postcode({
              oncomplete: function(data) {
                 document.querySelector("#zipcode").value = data.zonecode;
                 document.querySelector("#address").value =  data.address
              }
          }).open();
      }
      </script>
</head>
    <body>
      <!-- Bootstrap core CSS -->
      <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<div class="container" >
  <div class="p- p-md-5 mb-4 text-white rounded " style="background-color: peachpuff;">
    <img class="d-block mx-auto mb-4" src="../logo.png" alt="" width="300" height="150">
    <h2>마이 페이지</h2>
    <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>
  </div>

  <div class="row g-5">
    <div class="col-md-5 col-lg-4 order-md-last">
      <h4 class="d-flex justify-content-between align-items-center mb-3">
        <span class="text-primary">마이 페이지</span>
      </h4>
      <ul class="list-group mb-3">
        <li class="list-group-item d-flex justify-content-between lh-sm">
          <div>
            <h6 class="my-0"><a href="product.html">정보 수정</a></h6>
           
          </div>
          
        <li class="list-group-item d-flex justify-content-between lh-sm">
          <div>
            <h6 class="my-0"><a href="#">주문 및 배송</a></h6>
           
          </div>
        </li>
        <li class="list-group-item d-flex justify-content-between lh-sm">
          <div>
            <h6 class="my-0"><a href="review.html">상품평 작성</a></h6>
           
          </div>
          
        </li>
        <li class="list-group-item d-flex justify-content-between lh-sm">
          <div>
            <h6 class="my-0"><a href="#">상품 문의</a></h6>
            
          </div>
          
        </li>
        
      </ul>

    </div>
    <div class="col-md-7 col-lg-8">
      <h4 class="mb-3">상품평 작성 </h4>
      <form class="needs-validation" novalidate>
        <div class="row g-3">
            <hr class="my-4">

            <div class="col-12">
            <label for="newname" class="form-label">별  점</label>
            <div class="star-rating space-x-4 mx-auto">
                <input type="radio" id="5-stars" name="rating" value="5" v-model="ratings"/>
                <label for="5-stars" class="star pr-4">★</label>
                <input type="radio" id="4-stars" name="rating" value="4" v-model="ratings"/>
                <label for="4-stars" class="star">★</label>
                <input type="radio" id="3-stars" name="rating" value="3" v-model="ratings"/>
                <label for="3-stars" class="star">★</label>
                <input type="radio" id="2-stars" name="rating" value="2" v-model="ratings"/>
                <label for="2-stars" class="star">★</label>
                <input type="radio" id="1-star" name="rating" value="1" v-model="ratings" />
                <label for="1-star" class="star">★</label>
            </div>

            <div class="col-12">
              <label for="newname" class="form-label">상품평</label>
            <textarea class="form-control" id="review" rows="10" cols="50"></textarea>
            <div class="invalid-feedback"></div>
            
            </div>


            </div>



        </div>

        <hr class="my-4">

        <button class="w-100 btn btn-primary btn-lg" type="submit">작성 완료</button>

      </form>
    </div>
  </div>
</main>

<footer class="my-5 pt-5 text-muted text-center text-small">
  <p class="mb-1">&copy; 2022 WITHPET</p>
  <ul class="list-inline">
    <li class="list-inline-item"><a href="#">Privacy</a></li>
    <li class="list-inline-item"><a href="#">Terms</a></li>
    <li class="list-inline-item"><a href="#">Support</a></li>
  </ul>
</footer>
       </div>
       </div>
</main>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>