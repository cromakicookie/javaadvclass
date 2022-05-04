<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String[] img ={"apple1.jpg", "apple2.jpg", "apple3.jpg", "banana1.jpg", "banana2.jpg", "banana3.jpg", "pear1.jpg", "pear2.jpg", "pear3.jpg"}; String[] name = {"사과1", "사과2", "사과3", "바나나1", "바나나2", "바나나3", "배1", "배2", "배3"}; String[] price = {"1,500", "1,600", "1,700", "3,000", "3,500", "4,000", "5,000", "6,000", "7,000"}; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WithPet :: 위드펫 </title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/assets/css/main.css" />
<script type="text/javascript"> 
function fnCart(name, price) { 
	//alert("Name : " + name + "\nPrice : " + price); 
	if(confirm("장바구니에 담으시겠습니까?")) { 
		location.href = "CartProcess.jsp?name=" + name + "&price=" + price; 
		} 
	} 
	function fnView() { 
		if(confirm("장바구니를 보시겠습니까?")){ 
			location.href = "CartView2.jsp"; 
			} 
		} </script>
</head>
<body>
<body class="is-preload homepage">
		<div id="page-wrapper">

			<%@ include file='../header.jsp' %>
			
			<!-- Banner -->
				<div id="banner-wrapper">
					<div id="banner" class="box container">
						<!--여기사이에  -->
	<div align="center">
		<h3>간식</h3>
		<table border="1">
			<tr align="right">
				<td colspan="3"><input type="button" value="장바구니 보기"
					onclick="fnView()" /></td>
			</tr>
			<% for(int i = 0; i < img.length; i++) { 
				if(i % 3 == 0) { 
					out.println("<tr align='center'>"); 
					} 
				out.println("<td>"); 
				out.println("<table>"); 
				out.println("<tr align='center'>"); 
				out.println("<td>"); 
				out.println("<img src = 'images/" + img[i] + "' width='150' height='150' />"); 
				out.println("</td>"); 
				out.println("</tr>"); 
				out.println("<tr align='center'>"); 
				out.println("<td>"); 
				out.println("<b>" + name[i] + "</b>"); 
				out.println("</td>"); out.println("</tr>"); 
				out.println("<tr align='center'>"); 
				out.println("<td>"); 
				out.println("<b>￦" + price[i] + "원</b>"); 
				out.println("</td>"); 
				out.println("</tr>"); 
				out.println("<tr align='center'>");
				out.println("<td>"); //한 줄로 쓰기 
				//out.println("<input type='button' value='장바구니 담기' onclick='fnCart(\"" + name[i] + "\", \"" + price[i] + "\")' />"); //두 줄로 쓰기, 닫는 큰 따옴표와 괄호 옆의 띄어쓰기 필수 
				out.println("<input type='button' value='장바구니 담기' "); 
				out.println("onclick='fnCart(\"" + name[i] + "\", \"" + price[i] + "\")' />"); 
				out.println("</td>"); 
				out.println("</tr>"); 
				out.println("</table>"); 
				out.println("</td>"); 
				if(i % 3 == 2) { 
					out.println("</tr>"); 
					} 
				} %>
		</table>
	</div>
	</div>
				</div>
				<%@ include file='../footer.jsp' %>
</body>
</html>
