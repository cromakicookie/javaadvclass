<%@page import="java.sql.*"%>
<%@page import="jdbc.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<!-- 사용자 계정 진입여부 결정해서 코드 넣어야함. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 보기</title>
</head>
<body>
	<%!// 선언문
	String title = "상세 보기";%>
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

	<%
		String gNum = request.getParameter("gNum"); //DAO DTO 새롭게 설정해야함.
	gDBDTO board = (new gDBDAO()).getDetail(gNum); 
	%>


<div class="container my-3">
	<!-- 이미지 출력은 DB와 이미지 폴더 지정 후 해당 코드를 가져와 처리 -->

    <h2 class="border-bottom py-2">
     제목 : <%=board.getgTitle()%> 닉네임 : <%=board.getgNicName() %></h2>
    <div class="card my-3">
        <div class="card-body">
            <div class="card-text" style="white-space: pre-line;"><%=board.getgText() %></div>
            <div class="d-flex justify-content-end">
                <div class="badge bg-light text-dark p-2">
                    <%=board.getgTime() %>
                </div>
            </div>
        </div>
    </div>
    
    <a href="boardListPG.jsp" class="btn btn-primary active" aria-current="page">돌아가기</a>
	<%@ include file="/_footer.jsp"%>


	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


</body>
</html>