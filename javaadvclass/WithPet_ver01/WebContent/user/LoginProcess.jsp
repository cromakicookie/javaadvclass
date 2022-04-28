<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dao.*"%>
<%@ page import="dto.*"%>
<%@ page import="java.util.*"%>
<%@ page import="util.FileUtil"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.io.FilenameUtils"%>
<%@ page import="org.apache.commons.io.FilenameUtils"%>

<%
	request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
//id 존재 유무, pw 일치 여부 검사 ▶ DB 연동해서 이상이 없으면 

UserDAO dao = new UserDAO();

int result = dao.login(id, pw);

if (result == 1) {  // DB에 아이디 자체가 존재 하지 않으므로 회원 가입으로 리다이렉트
	out.print("<script> alert('아이디가 존재하지 않습니다. 회원가입페이지로 이동합니다.');");%>	
		<%out.print("</script>");
		response.sendRedirect("/WithPet_ver01/user/signin.jsp");
}else if (result == 2){ //아이디는 있으나 비밀번호가 불일치
	out.print("<script> alert('암호가 일치하지 않습니다. 다시 로그인 하세요.');");%>	
	history.back();
	<%out.print("</script>");
}else {
	session.setAttribute("id", id);
	response.sendRedirect("/WithPet_ver01/main/main.jsp");
}


/* if (dao.login(id, pw) == 0) {
	session.setAttribute("id", id); //세션 바인딩(연결) 객체를 생성 //Cookie(쿠키) 설정 : 사용자쪽(Client)에 쿠키를 넣어준다. 
	Cookie ck = new Cookie("id", id);
	ck.setMaxAge(60 * 60 * 24 * 365); //쿠키가 존재하는 시간(유효 시간) : 1년짜리 쿠키 
	response.addCookie(ck);
	response.sendRedirect("/WithPet_ver01/main/main.jsp");
} else { */

	/* response.sendRedirect("/WithPet_ver01/user/login.jsp"); */

%>
