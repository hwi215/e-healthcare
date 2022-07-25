package com.example.chat;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EchoHandler extends TextWebSocketHandler {

    private static final Logger logger = LoggerFactory.getLogger(WebSocketHandler.class);
    //로그인 한 인원 전체
    private List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
    // 1:1로 할 경우
    private Map<String, WebSocketSession> userSessionsMap = new HashMap<String, WebSocketSession>();

    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {//클라이언트와 서버가 연결
        // TODO Auto-generated method stub
        logger.info("Socket 연결");
        sessions.add(session);
        logger.info(session.getId());//현재 접속한 사람
        String senderId = session.getId();
        userSessionsMap.put(senderId,session);
    }

    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {// 메시지
        // TODO Auto-generated method stub
        logger.info("ssesion"+session.getId());
        String msg = message.getPayload();//자바스크립트에서 넘어온 Msg
        logger.info("msg="+msg);

        if (msg.equals(msg)) {
            logger.info("if문 들어옴?");
            String[] strs = msg.split(",");
            if(strs != null && strs.length == 6) {

                String cmd = strs[0];
                String replyWriter = strs[1];
                String boardWriter = strs[2];
                String bno = strs[3];
                String title = strs[4];
                String bgno = strs[5];
                logger.info("length 성공?"+cmd);

                WebSocketSession replyWriterSession = userSessionsMap.get(replyWriter);
                WebSocketSession boardWriterSession = userSessionsMap.get(boardWriter);
                logger.info("boardWriterSession="+userSessionsMap.get(boardWriter));
                logger.info("boardWirterSession"+boardWriterSession);


                //좋아요
                if("like".equals(cmd) && boardWriterSession != null) {
                    //replyWriter = 좋아요누른사람 , boardWriter = 게시글작성자
                    TextMessage tmpMsg = new TextMessage(replyWriter + "님이 "
                            + "<a href='/board/readView?bno=" + bno + "&bgno=" + bgno + "'  style=\"color: black\"><strong>"
                            + title + "</strong> 에 작성한 글을 좋아요했습니다!</a>");

                    boardWriterSession.sendMessage(tmpMsg);

                }

            }

        }
    }

    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {//연결 해제
        // TODO Auto-generated method stub
        logger.info("Socket 끊음");
        sessions.remove(session);
        userSessionsMap.remove(session.getId(),session);
    }

}

