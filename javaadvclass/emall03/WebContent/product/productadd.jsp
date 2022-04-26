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

	<%@ include file="/_header.jsp"%>
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
				<label class="col-sm-2">상품코드</label>
				<div class="col-sm-3">
					<input type="text" name="pid" class="form-control">
				</div>

			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">상품명</label>
				<div class="col-sm-3">
					<input type="text" name="pname" class="form-control">
				</div>

			</div>
			<div class="form-group row">
				<label class="col-sm-2">상품가격</label>
				<div class="col-sm-3">
					<input type="text" name="pprice" class="form-control">
				</div>

			</div>
			<div class="form-group row">
				<label class="col-sm-2">상품설명</label>
				<div class="col-sm-3">
					<textarea name="pdesc" cols="50" rows="8" class="form-control">
					</textarea>
				</div>

			</div>
			<div class="form-group row">
				<label class="col-sm-2">제조사</label>
				<div class="col-sm-3">
					<input type="text" name="pmanu" class="form-control">
				</div>

			</div>
			<div class="form-group row">
				<label class="col-sm-2">상품분류</label>
				<div class="col-sm-3">
					<select name="pcate" class="form-select form-select-sm" aria-label=".form-select-sm example">
						  <option selected>상품 분류를 선택하세요</option>
						  <option value="스마트폰">스마트폰</option>
						  <option value="태블릿">태블릿</option>
						  <option value="컴퓨터">컴퓨터</option>
						  <option value="노트북">노트북</option>
						  <option value="주변기기">주변기기</option>
					</select>
				</div>

			</div>
			<div class="form-group row">
				<label class="col-sm-2">상품종류</label>
				<div class="col-sm-3">
					
					<div class="form-check form-check-inline">
					  <input name="pcondi" class="form-check-input" type="radio" id="inlineCheckbox1" value="신상">
					  <label class="form-check-label" for="inlineCheckbox1">신상</label>
					</div>
					<div class="form-check form-check-inline">
					  <input name="pcondi" class="form-check-input" type="radio" id="inlineCheckbox2" value="중고">
					  <label class="form-check-label" for="inlineCheckbox2">중고</label>
					</div>
					<div class="form-check form-check-inline">
					  <input name="pcondi" class="form-check-input" type="radio" id="inlineCheckbox3" value="재고">
					  <label class="form-check-label" for="inlineCheckbox3">재고</label>
					</div>
					<div class="form-check form-check-inline">
					  <input name="pcondi" class="form-check-input" type="radio" id="inlineCheckbox3" value="기타">
					  <label class="form-check-label" for="inlineCheckbox3">기타</label>
					</div>

				</div>

			</div>
			
			<div class="form-group row">
			  <label class="col-sm-2" for="formFileSm">사진 선택</label>
			  <div class="col-sm-3">
			  <input name = "images" class="form-control form-control-sm" id="formFileSm" type="file">
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







	<%@ include file="/_footer.jsp"%>


	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>



</body>
</html>