package com.sw.ddit.common.handler;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.sw.ddit.common.service.AlertService;
import com.sw.ddit.common.vo.AlertVO;
import com.sw.ddit.employee.mapper.EmployeeMapper;
import com.sw.ddit.employee.vo.EmployeeVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class EchoHandler extends TextWebSocketHandler {
	
	@Autowired
	private EmployeeMapper employeeMapper;
	
	@Autowired
	private AlertService alertService;
	
	//로그인 한 인원 전체
	private List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
	// 1:1로 할 경우
	private Map<String, WebSocketSession> userSessionsMap = new HashMap<String, WebSocketSession>();
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {//클라이언트와 서버가 연결
		// TODO Auto-generated method stub
		log.info("Socket 연결");
		sessions.add(session);
		log.info("sessions : " + sessions.toString());
		log.info("current : " + currentUserName(session));//현재 접속한 사람
		String senderId = currentUserName(session);
		userSessionsMap.put(senderId,session);
		log.info("userSessionsMap : " + userSessionsMap.toString());
	}
	
	@SuppressWarnings("unchecked")
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {// 메시지
		// TODO Auto-generated method stub
		log.info("ssesion"+currentUserName(session));
		String msg = message.getPayload();//자바스크립트에서 넘어온 Msg
		log.info("msg="+msg);
		
		if (!StringUtils.isEmpty(msg)) {
			log.info("if문 들어옴?");
			String[] strs = msg.split(",");
			// 댓글
			if(strs != null && strs[0].equals("reply")) {
				String cmd = strs[0];
				String boardWriter = strs[1];
				String replyWriter = strs[2];
				String bno = strs[3];
				String title = strs[4];
				log.info("length 성공?"+cmd);
				
				WebSocketSession replyWriterSession = userSessionsMap.get(replyWriter);
				WebSocketSession boardWriterSession = userSessionsMap.get(boardWriter);
				log.info("boardWriterSession="+userSessionsMap.get(boardWriter));
				log.info("boardWirterSession="+boardWriterSession);
				log.info("replyWriterSession="+userSessionsMap.get(replyWriter));
				log.info("replyWriterSession="+replyWriterSession);
				
				JSONObject obj = new JSONObject();
				obj.put("type", cmd);
				obj.put("emp", replyWriter);
				obj.put("param", bno);
				obj.put("title", title);
				AlertVO alertVO = new AlertVO();
				alertVO.setFromNm(replyWriter);
				alertVO.setAlrParam(bno);
				alertVO.setAlrTit(title);
				alertVO.setEmpCd(boardWriter);
				alertVO.setAlrCon(title + " 게시글에 댓글이 등록되었습니다.");
				alertVO.setAlrType(cmd);
				log.info("alertVO : " + alertVO.toString());
				int row = this.alertService.alertInsert(alertVO);
				log.info("row : ", row);
				if(boardWriterSession != null) {
					boardWriterSession.sendMessage(new TextMessage(obj.toJSONString()));
				}
			// 결재
			} else if(strs != null && strs[0].equals("appr")) {
				String cmd = strs[0];
				String me = strs[1];
				String first = strs[2];
				String second = strs[3];
				String third = strs[4];
				
				WebSocketSession apprFirstSession = userSessionsMap.get(first);
				WebSocketSession apprMeSession = userSessionsMap.get(me);
				
				JSONObject obj = new JSONObject();
				obj.put("type", cmd);
				obj.put("me", me);
				obj.put("first", first);
				
				AlertVO alertVO = new AlertVO();
				alertVO.setFromNm(me);
				alertVO.setAlrParam("1");
				alertVO.setAlrTit("결재");
				alertVO.setEmpCd(first);
				alertVO.setAlrCon("전자결재 요청이 왔습니다");
				alertVO.setAlrType(cmd);
			// ToDO
			} else if(strs != null && strs[0].equals("todo")) {
				String cmd = strs[0];
				String todoNo = strs[1];
				String writerCd = strs[2];
				String[] receivers = strs[3].split(" ");
				String title = strs[4];
				String writeNm = strs[5];
				for(int i=0; i<receivers.length; i++) {
					WebSocketSession todoReceiverSession = userSessionsMap.get(receivers[i]);
					WebSocketSession todoWriterSession = userSessionsMap.get(writerCd);
				
					JSONObject obj = new JSONObject();
					obj.put("type", cmd);
					obj.put("param", todoNo);
					obj.put("writer", writeNm);
					obj.put("title", title);
					AlertVO alertVO = new AlertVO();
					alertVO.setFromNm(writerCd);
					alertVO.setAlrParam(todoNo);
					alertVO.setAlrTit(title);
					alertVO.setEmpCd(receivers[i]);
					alertVO.setAlrCon(writeNm + "님이 새 일감을 등록하였습니다");
					alertVO.setAlrType(cmd);
					if(!receivers[i].equals("")) {
						int row = this.alertService.alertInsert(alertVO);
					}
					if(todoReceiverSession != null) {
						todoReceiverSession.sendMessage(new TextMessage(obj.toJSONString()));
					}
				}
			}
		}
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {//연결 해제
		// TODO Auto-generated method stub
		log.info("Socket 끊음");
		sessions.remove(session);
		userSessionsMap.remove(currentUserName(session),session);
	}

	
	private String currentUserName(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		String securityContext = String.valueOf(httpSession.get("SPRING_SECURITY_CONTEXT"));
		String[] split1 = securityContext.split("Username: ");
		String[] split2 = split1[1].split(";");
		String empId = split2[0];
		EmployeeVO read = this.employeeMapper.read(empId);
		String empCd = read.getEmpCd();
		return empCd;
		
	}
}