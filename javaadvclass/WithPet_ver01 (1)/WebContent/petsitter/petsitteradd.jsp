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
	String title = "펫시터 등록";%>
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
		<form action="petsitteradddb.jsp" method="post"
			enctype="multipart/form-data">

			<div class="form-group row">
				<label class="col-sm-2">펫시터 아이디</label>
				<div class="col-sm-3">
					<input type="text" name="id" class="form-control">
				</div>

				<div class="form-group row">
					<label class="col-sm-2">펫시터 설명</label>
					<div class="col-sm-3">
						<input type="text" name="content" class="form-control">
					</div>


					<div class="form-group row">
						<label class="col-sm-2" for="formFileSm">펫시터 이미지</label>
						<div class="col-sm-3">
							<input name="images" class="form-control form-control-sm"
								id="formFileSm" type="file">
						</div>
					</div>

					<div class="form-group row">
						<label class="col-sm-2" for="formFileSm">보유 자격증</label>
						<div class="col-sm-3">
							<input name="certificateds" class="form-control form-control-sm"
								id="formFileSm" type="file">
						</div>
					</div>


					<div class="form-group row">
						<label class="col-sm-2">펫시터 주소</label>
						<div class="col-sm-3">
							<input type="text" name="address" class="form-control">
						</div>

					</div>

					<div class="form-group row">
						<label class="col-sm-2">펫시터 연락처</label>
						<div class="col-sm-3">
							<input type="text" name="phoneNumber" class="form-control">
						</div>

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