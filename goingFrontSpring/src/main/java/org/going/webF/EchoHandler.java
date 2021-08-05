package org.going.webF;

import java.util.ArrayList;
import java.util.List;

import org.going.customer.domain.CustomerVo;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import lombok.extern.log4j.Log4j;

@Log4j
public class EchoHandler extends TextWebSocketHandler{
	
	private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		// 맵을 쓰는 경우
		// session.put(sessioin.getId(), session);
		
		// List 쓰는 경우
		sessionList.add(session);
		log.info(session.getId()+" 연결됨");
		log.info(sessionList.toString());
		log.info(sessionList.size());
		log.info(session.getAttributes().toString());
//		log.info("채팅방 입장자 : " + session.getPrincipal().getName());
		
	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		log.info(session.getId()+"로부터 "+message.getPayload()+"를 받음");
		
		for(WebSocketSession sess : sessionList) {
			log.info(sess.toString());
			log.info(sess.getHandshakeHeaders().toString());
			sess.sendMessage(new TextMessage(((CustomerVo)session.getAttributes().get("authUser")).getCustomerId()+"|"+message.getPayload()));
		}
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		sessionList.remove(session);
		
		log.info(session.getId() + " 연결 끊김");
	}
	
}
