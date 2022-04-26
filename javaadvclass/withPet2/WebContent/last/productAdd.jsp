<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>
   <%!// 선언문
   String title = "상품 등록";%>
   <!-- CSS only -->
   <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous">

   <div class="alert alert-secondary" role="alert">
      <div class="container">
         <h1 class="display-3">
            <%=title%>
         </h1>
      </div>
   </div>

   <div class="container" align="Center">
      <form action="productadddb.jsp" method="post" enctype="multipart/form-data">
         
         <div class="form-group row">
            <label class="col-sm-2">상품명</label>
            <div class="col-sm-3">
               <input type="text" name="pname" class="form-control">
            </div>
            
         <div class="form-group row">
           <label class="col-sm-2">상품설명</label>
           <div class="col-sm-3">
              <input type="text" name="pcontent" class="form-control">
           </div>
           

         </div>
         <div class="form-group row">
            <label class="col-sm-2">상품가격</label>
            <div class="col-sm-3">
               <input type="text" name="pprice" class="form-control">
            </div>

         </div>

         
         <div class="form-group row">
           <label class="col-sm-2" for="formFileSm">사진 선택</label>
           <div class="col-sm-3">
           <input name = "pimage" class="form-control form-control-sm" id="formFileSm" type="file">
         </div>
         </div>
         </div>
         
         
         
         <div class="form-group row" align="center">
         <div class="col-sm-6">
            <input type="submit" class="btn btn-primary" value="등록">
            <input type="reset" class="btn btn-danger" value="취소">
         </div>   
         </div>         
         

         
      </form>
   </div>









   <!-- JavaScript Bundle with Popper -->
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"></script>



</body>
</html>