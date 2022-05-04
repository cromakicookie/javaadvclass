<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!// 선언문
   String title = "회원가입";%>
   <!-- CSS only -->
   <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous">

    <%@ include file="header.jsp"%> 
   <div class="alert alert-secondary" role="alert">
      <div class="container">
         <h1 class="display-3">
            <%=title%>
         </h1>
      </div>
   </div>
   
   <div class="container" align="center">
      <form action="useradddb.jsp" method="post">
         <div class="form-group row">
            <label class="col-sm-2">아이디</label>
            <div class="col-sm-2">
               <input type="text" name="account" class="form-control">
            </div>
         </div>

         <div class="form-group row">
            <label class="col-sm-2">패스워드</label>
            <div class="col-sm-2">
               <input type="text" name="password" class="form-control">
            </div>
         </div>

         <div class="form-group row">
            <label class="col-sm-2">이름</label>
            <div class="col-sm-2">
               <input type="text" name="name" class="form-control">
            </div>
         </div>
         
         <div class="form-group row">
            <label class="col-sm-2">이메일</label>
            <div class="col-sm-2">
               <input type="email" name="email" class="form-control">
            </div>
         </div>
         
         <div class="form-group row">
            <label class="col-sm-2">생년월일</label>
            <div class="col-sm-2">
               <input type="text" name="birthday" class="form-control">
            </div>
         </div>
         
         <div class="form-group row">
            <label class="col-sm-2">전화번호</label>
            <div class="col-sm-2">
               <input type="text" name="phoneNumber" class="form-control">
            </div>
         </div>
         

         <div class="form-group row" align="center">
            <div class="col-sm-10">
               <input type="submit" class="btn btn-primary" value="가입하기"> <input
                  type="submit" class="btn btn-danger" value="돌아가기">
            </div>
         </div>

      </form>
   </div>
   

   <%@ include file="/footer.jsp"%>

   <!-- JavaScript Bundle with Popper -->
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"></script>
</body>
</html>