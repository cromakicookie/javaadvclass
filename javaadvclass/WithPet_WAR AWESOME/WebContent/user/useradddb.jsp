<%@page import="dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@page import="util.FileUtil"%>

<%
request.setCharacterEncoding("utf-8");

String account=request.getParameter("account");
String password=request.getParameter("password");
String name=request.getParameter("name");
String email=request.getParameter("email");
String birthday=request.getParameter("birthday");
String phoneNumber=request.getParameter("phoneNumber");



 UserDAO dao=new UserDAO();
int result=dao.insertUser(account, password, name, email, birthday, phoneNumber);
if(result==1){
	response.sendRedirect("/withPet/user/login.jsp");
}else{
	out.print("<script>alert('회원가입을 환영합니다.');</script>");
	out.print("location.href = '/withPet/user/useradd.jsp';");
	
} 
%>
