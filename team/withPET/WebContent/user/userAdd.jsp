<% request.setCharacterEncoding("UTF-8"); %>
<%@page import="dto.*"%>
<%@page import="dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id= "user" class = "dto.UserDTO" scope="page" />

<%
String grade = request.getParameter("grade");
String birthday = request.getParameter("birthday");
String email = request.getParameter("email");
String name = request.getParameter("name");
String phonenumber = request.getParameter("phonenumber"); 
String account = request.getParameter("account");
String password = request.getParameter("password");

UserDAO dao = new UserDAO();
int result = dao.insertUser(account, password, name, email, birthday, phonenumber, grade );

if(result == 1) {
	 response.sendRedirect("/withPET/user/login.jsp");
}else{
	 response.sendRedirect("/withPET/user/signin.jsp");
}


%>