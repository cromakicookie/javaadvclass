<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="dto.*"%>
<%@page import="dao.*"%>
<%@page import="util.*"%>
<%@page import="java.util.ArrayList"%>
<%
ArrayList<ProductDTO> products = (new ProductDAO()).getProductList();
String[] img = {};
String[] name = {};
String[] price = {};

for (ProductDTO product : products) {
	img.add(product.getImage());	
} 

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>