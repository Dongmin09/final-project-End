package com.sw.ddit.employee.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import org.springframework.http.MediaType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
@RequestMapping("/security")
public class SignupMailController {
	
	@Autowired
	private JavaMailSender mailSender;
	
	@GetMapping(value="/mailCheck",consumes = {MediaType.TEXT_PLAIN_VALUE})
	@ResponseBody
	public String mailCheck(String email) throws Exception{
		log.info("이메일 데이터 전송확인");
		log.info("인증 메일 : "+email);
		
		Random random = new Random();
		int checkNum = random.nextInt(888888)+111111; // 111111 - 999999
		log.info("인증번호 : "+checkNum);
		
		//이메일 보내기
		String setFrom = "ddit402@starworks.com";
		String toEmail = email;
		String title = "StarWorks 회원가입 인증 이메일 입니다.";
		String content = "StarWorks에 가입해주셔서 감사합니다."+ "<br/><br/>"
				+"인증 번호는 "+checkNum+" 입니다.<br/>"
				+"해당 인증번호를 인증번호 확인란에 기입하여 주세요."
				+"<br><br>"
				+ "<h3><a href='http://localhost:8099/main/main'>starworks 홈페이지 접속 </a></h3>";
        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toEmail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
        String num = Integer.toString(checkNum);
        return num;
	}
}
