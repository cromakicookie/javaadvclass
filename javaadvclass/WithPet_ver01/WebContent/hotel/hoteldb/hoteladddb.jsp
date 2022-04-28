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
String address = null;
String phoneNumber = null;
String cover = null;
String content = null;
String price = null;
String discount = "10";
String dog = null;
String cat = null;
String bird = null;
String etc = null;
String state = "10";
String userId = "10";
String zipcode = "test";
String animalType = "0000";
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
		else if (pname.equals("address"))
	address = value;
		else if (pname.equals("phoneNumber"))
	phoneNumber = value;
		else if (pname.equals("price"))
	price = value;
		else if (pname.equals("content"))
	content = value;
		else if (pname.equals("dog"))
	animalType = "1" + animalType.substring(0); 
		else if (pname.equals("cat"))
		animalType += animalType.substring(0,0) + "1" + animalType.substring(1);
		else if (pname.equals("bird"))
		animalType += animalType.substring(0,1) + "1" + animalType.substring(2);
		else if (pname.equals("etc"))
		animalType += animalType.substring(0,2) + "1";
	} else {
		if (pname.equals("covers")) {
	cover = item.getName();
	cover = FilenameUtils.getName(cover);
	file = item.get();
	//서버에 사진 저장
	String root = application.getRealPath(java.io.File.separator);
	FileUtil.saveImage(root, cover, file);
		}
	}
}

//디비에 게시물 모든 정보 전달
HotelDAO dao = new HotelDAO();
System.out.println(name);
System.out.println(content);
System.out.println(address);
System.out.println(zipcode);
System.out.println(cover);
System.out.println(price);
System.out.println(discount);
System.out.println(animalType);
System.out.println(phoneNumber);
System.out.println(state);
System.out.println(userId);
if (!(dao.insertHotel(name, content, address, zipcode, cover, price, discount, animalType, phoneNumber, state, userId) == 0)) {
	response.sendRedirect("hotellist.jsp");
}
%>
