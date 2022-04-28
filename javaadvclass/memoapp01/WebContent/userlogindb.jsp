<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jdbc.*" %>
<%
request.setCharacterEncoding("utf-8");       //한글처리

String userid = request.getParameter("id");  // 전 페이지에서 입력한 메모 내용 받기
String userpw = request.getParameter("pw");  // 전 페이지에서 입력한 메모 내용 받기

UserDAO dao = new UserDAO();                 // 객체 생성 ?? 매서드를 호출하기위해서

int result = dao.login(userid, userpw);
		
if (result == 1) {  // DB에 아이디 자체가 존재 하지 않으므로 회원 가입으로 리다이렉트
	out.print("<script> alert('아이디가 존재하지 않습니다. 회원가입페이지로 이동합니다.');");%>	
		<%out.print("</script>");
		response.sendRedirect("userjoin.jsp");
}else if (result == 2){ //아이디는 있으나 비밀번호가 불일치
	out.print("<script> alert('암호가 일치하지 않습니다. 다시 로그인 하세요.');");%>	
	history.back();
	<%out.print("</script>");
}else {
	session.setAttribute("userid", userid);
	response.sendRedirect("main.jsp");
}
		
/* if (dao.exists(userid)) {
	out.print("<script language=javascript> alert('이미 있는 아이디입니다. 다시 설정하세요'); history.back(); </script>");
	response.sendRedirect("userjoin.jsp");   
}else {
	dao.insert(userid, userpw, username);
	session.setAttribute("userid",userid);
	response.sendRedirect("main.jsp");    
  
} */
// 메모 db에 삽입 후에 다시 main으로 돌아가 메모 목록 보기 
%>