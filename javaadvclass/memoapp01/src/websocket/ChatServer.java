package websocket;

import java.io.IOException;
import java.util.*;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;


// @ServerEndpoint 에너테이션으로 웹 소켓 서버를 지정한다.
// ws://호스트:포트번호/ChatingServer
@ServerEndpoint("/ChatingServer")
public class ChatServer {
	
	// 새로 접속한 클라이언트의 세션을 지정하는 컬렉션 생성.
	// Collections 클래스의 synchronizedSet() 매서드는 안전하게 Set 컬렉션을 생성해준다.
	// 여러 클라이언트가 동시에 접속해도 문제가 발생하지 않게 해준다.
	private static Set<Session> clients
		= Collections.synchronizedSet(new HashSet<Session>());
	
	// 클라이언트가 접속했을 때 실행할 매서드를 정의한다. 이 매서드에서는 단순하게 clients 컬렉션에 
	// 세션을 추가하게 된다.
	@OnOpen //클라이언트가 접속 시 실행
	public void onOpen(Session session) {
		clients.add(session); // 세션 추가
		System.out.println("웹 소켓 연결 : "+session.getId());
	}
	
	@OnMessage // 메시지를 받으면 실행
	public void onMessage(String message, Session session) throws IOException{
		System.out.println("메시지 전송 : "+session.getId()+":"+message);
		synchronized(clients) {
			for(Session client : clients) {
				if(!client.equals(session)) {
					client.getBasicRemote().sendText(message);
				}
			}
		}
	}
	
	@OnClose
	public void onClose(Session session) {
		clients.remove(session);
		System.out.println("웹소켓 종료 : "+session.getId());
	}
	
	@OnError
	public void onError(Throwable e) {
		System.out.println("에러 발생");
		e.printStackTrace();
	}
}
