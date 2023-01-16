package com.sw.ddit.employee.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import org.springframework.http.MediaType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sw.ddit.employee.service.EmployeeService;
import com.sw.ddit.employee.vo.EmployeeVO;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
@RequestMapping("/security")
public class FindPwMailController {
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	EmployeeService employeeService;
	
	@GetMapping(value="/pwMailCheck",consumes = {MediaType.TEXT_PLAIN_VALUE})
	@ResponseBody
	public String pwMailCheck(String email) throws Exception{
		log.info("이메일 데이터 전송확인");
		log.info("인증 메일 : " + email);
		
		Random random = new Random();
		int checkNum = random.nextInt(888888)+111111; // 111111 - 999999
		log.info("임시비밀번호 : "+checkNum);
		
		//이메일 보내기
		String setFrom = "ddit402@starworks.com";
		String toEmail = email;
		String title = "StarWorks 임시 비밀 번호 발송 이메일 입니다.";
		String content = "<h2>안녕하세요 StarWorks 입니다.</h2><br><br>" 
				+ "<p>비밀번호 찾기를 신청해주셔서 임시 비밀번호를 발급해드렸습니다.</p>"
				+ "<p>임시로 발급 드린 비밀번호는 <h2 style='color : blue'>'" + checkNum + "'</h2>이며 로그인 후 마이페이지에서 비밀번호를 변경해주시면 됩니다.</p><br>"
				+ "<h3><a href='http://localhost:8099/main/main'>starworks 홈페이지 접속 </a></h3>"
				+ "(혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다)";

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
