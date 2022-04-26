<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
out.print("<script language=javascript> if(confirm('정말 로그아웃 하시겠습니까?')) {");
session.removeAttribute("id"); //세션 객체에서 id값을 제거 
out.print("};</script>");

response.sendRedirect("userlogin.jsp");
%>