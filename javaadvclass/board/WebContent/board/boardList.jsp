<%@page import="jdbc.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8"); // 한글 구동용
%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
</head>
<body>
	<%!// 선언문
	String title = "게시판 목록";%>
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

	<div class="container">
		<div class="row" align="center">
		

		
<div class="container my-3">
    <table class="table">
        <thead>
        <tr class="table-dark">
            <th>번호</th> <!-- 필요기능에 대한 제목. 페이지 확인후 순서 또는 위치 변경요망 -->
            <th>작성자</th>
            <th>제목</th>
            <th>좋아요수</th>
            <th>작성일시</th>
        </tr>
        </thead>
        <tbody>

		<%
			ArrayList<gDBDTO> boards = (new gDBDAO()).getList(); //지정된 DAO DTO를 새롭게 DB에 맞춰 지정을 해야함.
			
		for (gDBDTO board : boards) {//역순 출력으로 변경해야함. + 지정된 DAO DTO를 새롭게 DB에 맞춰 지정을 해야함.
			   %>

			        <tr>
			        <td><%=board.getgNum() %></td><!-- 게시글의 고유번호 & 순번. -->
			        <td><%=board.getgNicName() %></td> <!-- 닉네임 -->
			        <td><a href = "boardView.jsp?gNum=<%=board.getgNum()%>"><%=board.getgTitle() %></td> <!-- 글 연결(주의*연결DB컬럼값 바꿔야함)-->
			        <td><%=board.getgPNumber() %></td> <!-- 좋아요수 - 이 기능은 view의 버튼과 연계하여 후순위로 처리해야될 문제임 DB를 INT로 처리해 입력처리 해야함. -->
			        <td><%=board.getgTime() %></td><!-- 작성시간 -->
			        
			        </tr>

				   
<%  } %>



        </tbody>

        
    </table>
  <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav> <!-- 이 기능은 후 순위로 지정하기 바람. 위치와 형태만 지정한 것임. -->
    <a href="boardWrite.jsp" class="btn btn-primary active" aria-current="page">글작성</a> <!-- 글 쓰기 파일명 경로-->
    
</div>




		



		</div>
		<hr>
	</div>








	<%@ include file="/_footer.jsp"%>


	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>