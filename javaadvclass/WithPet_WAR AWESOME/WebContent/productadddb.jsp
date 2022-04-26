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
// images 로 전체 데이터가 넘어옴

String name = null;
String price = null;
String content = null;
String image = null;

byte[] file = null;

ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
// 추출 값들을 객체 형태로 저장할 준비

List items = sfu.parseRequest(request);
// 입력된 값들을 추출하여 객체에 저장

Iterator iter = items.iterator();
// 순차적으로 접근하기 위해 객체 생성

while (iter.hasNext()) { // 요소가 있으면 계속 반복 없으면 종료
	FileItem item = (FileItem) iter.next(); //요소를 하나씩 추출
	String pname = item.getFieldName(); //요소의 이름 추출

	if (item.isFormField()) { // 이름과 값으로 즉 맵 형태 쌍으로 구성이 되어 있는지 확인
		String value = item.getString("utf-8"); // 한글 처리 중요!!!
		if (pname.equals("name"))
	name = value;
		else if (pname.equals("content"))
	content = value;
		else if (pname.equals("price"))
	price = value;
	} else {
		if (pname.equals("images")) {
	image = item.getName();
	image = FilenameUtils.getName(image);
	file = item.get();
	//서버에 사진 저장
	String root = application.getRealPath(java.io.File.separator);
	FileUtil.saveImage(root, image, file);
		}
	}
}

//디비에 게시물 모든 정보 전달
ProductDAO dao = new ProductDAO();
if (!(dao.insertProduct(name, content, price, image) == 0)) {
	response.sendRedirect("productlist.jsp");
}
%>
