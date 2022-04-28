<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ORDER FORM</title>
<link rel="stylesheet" href="../assets/css/main.css">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/blog/">
    <script src="header.html"></script>
    <script src="footer.html"></script>

    <body>
      <!-- Bootstrap core CSS -->
      <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<div class="container" >
  <div class="p- p-md-5 mb-4 text-white rounded " style="background-color: peachpuff;">
    <img class="d-block mx-auto mb-4" src="../logo.png" alt="" width="300" height="150">
    <h2>주문서 작성</h2>
    <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>
  </div>

  <div class="row g-5">
    <div class="col-md-5 col-lg-4 order-md-last">
      <h4 class="d-flex justify-content-between align-items-center mb-3">
        <span class="text-primary">최종 결제 내역</span>
        <span class="badge bg-primary rounded-pill">3</span>
      </h4>
      <ul class="list-group mb-3">
        <li class="list-group-item d-flex justify-content-between lh-sm">
          <div>
            <h6 class="my-0">상품명1</h6>
            <small class="text-muted">상품 상세 이름1</small>
          </div>
          <span class="text-muted">가격 : </span>
        </li>
        <li class="list-group-item d-flex justify-content-between lh-sm">
          <div>
            <h6 class="my-0">상품명2</h6>
            <small class="text-muted">상품 상세 이름2</small>
          </div>
          <span class="text-muted">$8</span>
        </li>
        <li class="list-group-item d-flex justify-content-between lh-sm">
          <div>
            <h6 class="my-0">상품명3</h6>
            <small class="text-muted">상품 상세 이름3</small>
          </div>
          <span class="text-muted">$5</span>
        </li>
        <li class="list-group-item d-flex justify-content-between">
          <span>합계</span>
          <strong>$20</strong>
        </li>
      </ul>

    </div>
    <div class="col-md-7 col-lg-8">
      <h4 class="mb-3">주문서 작성 </h4>
      <form class="needs-validation" novalidate>
        <div class="row g-3">
          <div class="col-12">
            <label for="firstName" class="form-label">주문자 이름</label>
            <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
            <div class="invalid-feedback">
              Valid first name is required.
            </div>
          </div>

          <div class="col-12">
            <label for="email" class="form-label">이메일<span class="text-muted">(선택)</span></label>
            <input type="email" class="form-control" id="email" placeholder="you@example.com">
            <div class="invalid-feedback">
              Please enter a valid email address for shipping updates.
            </div>
          </div>

          <div class="col-md-5">
            <label for="country" class="form-label">시/도</label>
            <select class="form-select" id="country" required>
              <option value="">시/도를 선택하세요</option>
              <option>서울특별시</option>
              <option>부산광역시</option>
              <option>대구광역시</option>
              <option>인천광역시</option>
              <option>광주광역시</option>
              <option>대전광역시</option>
              <option>울산광역시</option>
              <option>세종특별자치시</option>
              <option>경기도</option>
              <option>강원도</option>
              <option>충청북도</option>
              <option>충청남도</option>
              <option>전라북도</option>
              <option>전라남도</option>
              <option>경상북도</option>
              <option>경상남도</option>
              <option>제주특별자치도</option>
            </select>
            <div class="invalid-feedback">
              Please select a valid country.
            </div>
          </div>

          <div class="col-md-4">
            <label for="state" class="form-label">구</label>
            <select class="form-select" id="state" required>
              <option value="">구를 선택하세요</option>
              <option>California</option>
            </select>
            <div class="invalid-feedback">
              Please provide a valid state.
            </div>
          </div>

          <div class="col-md-3">
            <label for="state" class="form-label">구</label>
            <select class="form-select" id="state" required>
              <option value="">구를 선택하세요</option>
              <option>California</option>
            </select>
            <div class="invalid-feedback">
              Please provide a valid state.
            </div>
          </div>  

          <div class="col-12">
            <label for="address" class="form-label">상세주소</label>
            <input type="text" class="form-control" id="address" placeholder="상세주소를 입력하세요" required>
            <div class="invalid-feedback">
              Please enter your shipping address.
            </div>
          </div>

          <div class="col-12">
            <label for="address" class="form-label">전화번호</label>
            <input type="text" class="form-control" id="address" placeholder="전화번호를 입력하세요" required>
            <div class="invalid-feedback">
              Please enter your shipping address.
            </div>
          </div>
          
          <div class="col-md-4">
            <label for="tel" class="form-label"> </label>
            <input type="text" class="form-control" id="telNo2" required>
          </div>


          <div class="col-md-4">
            <label for="tel" class="form-label"> </label>
            <input type="text" class="form-control" id="telNo3" required>
          </div>

          <div class="col-12">
            <label for="address2" class="form-label">배송메세지 <span class="text-muted">(선택)</span></label>
            <input type="text" class="form-control" id="address2" placeholder="배송 메세지">
          </div>
        </div>

        <hr class="my-4">

        <h4 class="mb-3">결제 방식</h4>

        <div class="my-3">
          <div class="form-check">
            <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked required>
            <label class="form-check-label" for="credit">신용카드</label>
          </div>
          <div class="form-check">
            <input id="debit" name="paymentMethod" type="radio" class="form-check-input" required>
            <label class="form-check-label" for="debit">무통장입금</label>
          </div>
          <div class="form-check">
            <input id="paypal" name="paymentMethod" type="radio" class="form-check-input" required>
            <label class="form-check-label" for="paypal">카카오페이</label>
          </div>
        </div>

        <div class="row gy-3">
          <div class="col-md-6">
            <label for="cc-name" class="form-label">카드이름</label>
            <input type="text" class="form-control" id="cc-name" placeholder="" required>
            <small class="text-muted">Full name as displayed on card</small>
            <div class="invalid-feedback">
              Name on card is required
            </div>
          </div>

          <div class="col-md-6">
            <label for="cc-number" class="form-label">카드번호</label>
            <input type="text" class="form-control" id="cc-number" placeholder="" required>
            <div class="invalid-feedback">
              Credit card number is required
            </div>
          </div>

          <div class="col-md-3">
            <label for="cc-expiration" class="form-label">만료기한</label>
            <input type="text" class="form-control" id="cc-expiration" placeholder="MM/YY" required>
            <div class="invalid-feedback">
              Expiration date required
            </div>
          </div>

          <div class="col-md-3">
            <label for="cc-cvv" class="form-label">CVV</label>
            <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
            <div class="invalid-feedback">
              Security code required
            </div>
          </div>
        </div>

        <hr class="my-4">

        <button class="w-100 btn btn-primary btn-lg" type="submit">결제 진행</button>
      </form>
    </div>
  </div>
</main>

<footer class="my-5 pt-5 text-muted text-center text-small">
  <p class="mb-1">&copy; 2017–2021 Company Name</p>
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