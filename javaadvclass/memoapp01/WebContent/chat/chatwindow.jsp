<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
var webSocket = new WebSocket (
		"<%= application.getInitParameter("CHAT_ADDR") %>/ChatingServer");
var chatWindow, chatMessage, chatId;

window.onload = function() {
	chatWindow = document.getElementById("chatWindow");
	chatMessage = document.getElementById("chatMessage");
	chatId = document.getElementById("chatId").value;
}

function sendMessage() {
	chatWindow.innerHTML += "<div class='myMsg'>" + chatMessage.value +"</div>"
	webSocket.send(chatId + '|' + chatMessage.value);
	chatMessage.value="";
	chatWindow.scrollTop = chatWindow.scrollHeight;
}

function disconnect() {
	webSocket.close();
}

function enterKey() {
	if(window.event.keyCode == 13) {
		sendMessage();
	}	
}

webSocket.onopen = function(event) {
	chatWindow.innerHTML += "웹 소켓 서버에 연결되었습니다. <br>";
};

webSocket.onclose = function(event) {
	chatWindow.innerHTML += "웹 소켓 서버가 종료되었습니다. <br>";
};
webSocket.onerror = function(event) {
	alert(event.data);
	chatWindow.innerHTML += "채팅 중 에러가 발생되었습니다. <br>";
};

webSocket.onmessage = function(event) {
	var message = event.data.split("|");
	var sender = message[0];
	var content = message[1];
	if(content !="") {
		if(content.match("/")) {
			if(content.match(("/"+chatId))) {
				var temp = content.replace(("/"+chatId),"[귓속말] : ");
				chatWindow.innerHTML+="<div>"+sender+""+temp+"</div>";
			}
		}else {
			chatWindow.innerHTML+="<div>"+sender+" : "+content +"</div>";
		}
	}
	chatWindow.scrollTop = chatWindow.scrollHeight;
};
</script>
</head>
<body>
대화명 : <input type="text" id="chatId" value="${param.chatId }" readonly />
<button id="closeBtn" onclick="disconnect();">채팅 종료</button>
<div id="chatWindow"></div>
<div>
<input type="text" id="chatMessage" onkeyup="enterKey();">
<button id="sendBtn" onclick="sendMessage();">전송</button>
</div>
</body>
</html>