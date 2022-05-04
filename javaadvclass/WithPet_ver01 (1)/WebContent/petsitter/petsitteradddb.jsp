<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dao.PetSitterDAO"%>
<%@ page import="dto.PetSitterDTO"%>
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
String id = null;
String image = null;
String content = null;
String certificated = null;
String animalType = "0000";
String userId = null;
String status = null;
String address = null;
String phoneNumber = null;

byte[] file1 = null;
byte[] file2 = null;
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
		if (pname.equals("id"))
	id = value;
		else if (pname.equals("content"))
	content = value;
		else if (pname.equals("address"))
	address = value;
		else if (pname.equals("phoneNumber"))
	phoneNumber = value;
		else if (pname.equals("animalType"))
	animalType = value;
		else if (pname.equals("userId"))
	userId = value;
		else if (pname.equals("status"))
	status = value;
	} else {
		if (pname.equals("images")) {
	image = item.getName();
	image = FilenameUtils.getName(image);
	file1 = item.get();
	//서버에 사진 저장
	String root1 = application.getRealPath(java.io.File.separator);
	FileUtil.saveImage(root1, image, file1);
		} else if (pname.equals("certificateds")){
			certificated = item.getName();
			certificated = FilenameUtils.getName(certificated);
			file2 = item.get();
			//서버에 사진 저장
			String root2 = application.getRealPath(java.io.File.separator);
			FileUtil.saveImage(root2, certificated, file2);
		}
	}
}
out.print(image);
out.print(certificated);
//디비에 게시물 모든 정보 전달
PetSitterDAO dao = new PetSitterDAO();
if (!(dao.insertPetsitter(id, image, content, certificated, address, animalType, phoneNumber, userId, status) == false)) {
	response.sendRedirect("petsitterlist.jsp");
}
%>