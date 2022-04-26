<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="jdbc.*"%>
<%@ page import="java.util.*"%>

<!-- 로그인 조건 확인 붙여야 함. -->
<!-- 아래의 코드는 학습코드와 같음. 기능 추가 및 변경점 없음 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 작성</title>
<!-- 부스트랩 css  -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- summernote css  -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">

</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>

	<%!String title = "글 작성";%>

<%@ include file="/_header.jsp"%>

	<div class="alert alert-primary" role="alert"
		style="text-align: center;">
		<%=title%>
	</div>
	<div class="container" style="padding-top: 30px;">
		<form name="newProduct" class="form-horizontal"
			action="boardWriteAction.jsp" method="post"
			enctype="multipart/form-data">

			<div class="form-group  row">
				<label class="col-sm-2">제목</label>
				<div class="col-sm-4">
					<input name="btitle" type="text" class="form-control"
						placeholder="Enter the Title">
				</div>
			</div>

			<textarea id="summernote" name="bcontent"></textarea>
			<!-- 이미지 추가 제거된 상태 필요시 이부분 첨부파일 기능 추가하면됨. -->

			<!-- 구분선 좋아요기능-->
			<div class="btn-group" role="group"
				aria-label="Basic checkbox toggle button group">
				<input type="checkbox" class="btn-check" id="btncheck2"
					autocomplete="off" name="like"> <label
					class="btn btn-outline-primary" for="btncheck2">좋아요</label>
				<!-- 박스만 제공 DB연결이 필요함. + 이 기능은 해결을 위해 후 순위로 처리 스케쥴 시간 부족시 제거-->
				<!-- 필요기능 글쓴이가 아닌 다른 사람이 클릭 가능한 좋아요임. 게시글 또는 댓글 둘중 하나에 포함되는 기능-->
			</div>
			<!-- 구분선 -->
			
			<br> <br> 
			<div class="col-sm-offset-5 col-sm-5">
				<input type="submit" class="btn btn-dark" value="글쓰기 ">
				<input type="reset" class="btn btn-dark" value="취소" onclick="reset()">
			</div>
	</div>
	</form>
	</div>


	<!-- 부스트랩 js -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!— 제이쿼리 js—>
	<script type="text/javascript"
		src="//code.jquery.com/jquery-3.6.0.min.js"></script>

	<!— summernote js —>
	<script
		src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

	<script>
		$('#summernote').summernote({
			placeholder : 'Hello Bootstrap 5',
			tabsize : 2,
			height : 100
		});
	</script>




</body>
</html>