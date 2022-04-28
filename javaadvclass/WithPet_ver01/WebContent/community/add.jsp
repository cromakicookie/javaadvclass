<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<!--
	Verti by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>WithPet :: 위드펫 </title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload homepage">
		<div id="page-wrapper">

			<%@ include file='header.jsp' %>
			
			<!-- Banner -->
				<div id="banner-wrapper">
					<div id="banner" class="box container">
						<!--여기사이에  -->
                        
                        <table align=center>
<tr><td colspan=2 align=center height=40><b>톡작성</b></td></tr>
<tr><td align=right>아이디</td>
<td><input type="text" name="uid" placeholder="글작성자 아이디" required></td></tr>
<tr><td align=right>글작성</td>
<td><textarea name = "ucon" rows=3 cols=20></textarea></td></tr>

<tr><td align=right>이미지</td>
<td><input type="file" name="uimage"></td></tr>


<tr><td colspan=2 align=center height=40><input type="submit" value="등록"></td></tr>
</table>
</form>

<table align=center>
<tr><td colspan=2>톡보기</td></tr>
<% 
ArrayList<CommunityDTO> feeds = (new CommunityDAO()).getList();
for (CommunityDTO feed : feeds) {
	String img = feed.getImages(), imgstr="";
	if (img != null) {
		imgstr = "<img src='images/" + img + "' width=240>";
	}
%>
<tr><td colspan=2><hr></td></tr>
<tr><td><%=feed.getId() %></td><td><%=feed.getTs() %></td></tr>
<tr><td colspan=2><%=imgstr %></td></tr>
<tr><td colspan=2><%=feed.getContent() %></td></tr>
<%
}
%>

</table>
                        
						<!--여기사이에  -->
					</div>
				</div>


			<%@ include file='footer.jsp' %>

	</body>
</html>