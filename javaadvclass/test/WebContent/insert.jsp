<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보 입력</title>
</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">




<div class = "container shadow mx-auto mt-5 p-5 w-75">
<div class="alert alert-primary" role="alert">  
<p class="text-center"> 학생 정보 입력 </p>
</div>
   <form class="row g-3" action="insert_process.jsp" method="post">
   
   
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">학번</label>
    <input type="text" name="num" class="form-control" id="inputEmail4">
  </div>
    <div class="col-md-6">
    <label for="inputPassword4" class="form-label">학과</label>
    <input type="text" name="depart" class="form-control" id="inputPassword4">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">이름</label>
    <input type="text" name="name" class="form-control" id="inputPassword4">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">주소</label>
    <input type="text" name="address" class="form-control" id="inputPassword4">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">연락처</label>
    <input type="text" name="phone" class="form-control" id="inputPassword4">
  </div>
  

 
  <div class="col-12 text-center">
    <button type="submit" class="btn btn-primary">학생 등록</button>
  </div>
</form>
</div>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>