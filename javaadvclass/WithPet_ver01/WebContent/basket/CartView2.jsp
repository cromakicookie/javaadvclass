<%@page import="java.text.DecimalFormat"%>
<%@page import="dto.*"%>
<%@page import="dao.*" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
ArrayList<ProductDTO> cart = null;
Object obj = session.getAttribute("cart"); //세션 객체에서 cart 값을 가져온다. 
if (obj == null) { //세션 정보가 없으면 배열을 생성 : 주문한 제품이 없다 
	cart = new ArrayList<ProductDTO>();
} else { //세션 정보가 있으면 강제로 캐스팅 : 주문한 제품이 있다 
	cart = (ArrayList<ProductDTO>) obj;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<title>WithPet :: 위드펫 </title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />


<script type="text/javascript">
	function fnPay() {
		alert("결제 API를 발급 받으시기 바랍니다.");
	}
	function fnClear() {
		if (confirm("장바구니를 비우시겠습니까?")) {
			location.href = "CartClear.jsp";
		}
	}
	function fnGo() {
		location.href = "/productlist.jsp";
	}
</script>

</head>
	<body class="is-preload homepage">
		<div id="page-wrapper">

			<%@ include file='/_header.jsp' %>
			
			<!-- Banner -->
				<div id="banner-wrapper">
					<div id="banner" class="box container">
						<!--여기사이에  -->

	<div align="center">
		<h3>[장바구니 보기]</h3>
		<table>
			<tr>
				<th class=>상품</th>
			</tr>
			<%
				if (cart.size() == 0) {
					%>
				<tr align='center'>
				<td colspan= '5'>"
				장바구니에 담긴 상품이 없습니다.
				<a href= 'ShopMallMain.jsp'>주문하기</a>
				</td>
				</tr>
			<%} else {
				
				DecimalFormat df = new DecimalFormat("￦#,##0");
				for (int i = 0; i < cart.size(); i++) {
					ProductDTO dto = cart.get(i);%>
					<div class="container" border=1>
					<tr align= 'left'>
					<% out.println("<td>" + (i + 1) +" &emsp;"+dto.getName());
					out.println("<br>" + dto.getPrice() +"</tr>");%>
					
					</div>
				<%}%>
				<tr align = 'center'>
				<td colspan= '4'>
				<input type='button' value='결제하기' onclick='fnPay()' />
				<input type='button' value='장바구니 비우기' onclick='fnClear()' />
				<input type='button' value='쇼핑 계속하기' onclick='fnGo()' />
				</td>
				</tr>
			<% } //if else
			%>
		</table>
	</div>
		</div>
				</div>
	<%@ include file='/_footer.jsp' %>
	<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	
</body>
</html>
