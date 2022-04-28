<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.*" %>
<%@ page import="dto.*" %>
<!DOCTYPE HTML>
<!--
	Verti by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>WithPet :: 호텔리스트 </title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload homepage">
		<div id="page-wrapper">

			<%@ include file='header.jsp' %>
			
			<!-- Banner -->
				<div id="banner-wrapper">
					<div id="banner" class="box container">
						<!--여기사이에  -->
                        
                        	<div class="container">
		<div class="row" align="center">
		
		<%
			ArrayList<HotelDTO> hotels = (new HotelDAO()).getHotelList();
			
		   for (HotelDTO hotel : hotels) {
		%>
		
			<div class="col-md-4">
				<img src="/WithPet_ver01/images/<%=hotel.getCover() %>" style="width: 100%">
					<h3><%=hotel.getName() %></h3>
					<p><%=hotel.getPrice() %>원
					<p><a href="hoteldetail.jsp?id=<%=hotel.getId() %>" class="btn btn-secondary" role="button">상세정보</a>
			</div>

		<% } %>

		</div>
		<hr>
	</div>
                        
                        
						<!--여기사이에  -->
					</div>
				</div>


			<%@ include file='footer.jsp' %>

	</body>
</html>