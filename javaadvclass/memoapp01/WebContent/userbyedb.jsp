<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jdbc.*" %>
<%
request.setCharacterEncoding("utf-8");       //한글처리

String userid = request.getParameter("id");  // 전 페이지에서 입력한 메모 내용 받기
String userpw = request.getParameter("pw");  // 전 페이지에서 입력한 메모 내용 받기

UserDAO dao = new UserDAO(); 


if (!dao.exists(userid)) {
    out.print("<script language=javascript> alert('존재하지 않는 아이디입니다. 다시 입력하세요');");%>
       history.back();         
       <%out.print("</script>");
 }else{
    dao.delete(userid);  
    session.removeAttribute("userid");
    response.sendRedirect("userjoin.jsp");
    }
%>