package com.sw.ddit.employee.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sw.ddit.attendance.vo.VacationVO;
import com.sw.ddit.common.vo.CommonVO;
import com.sw.ddit.department.vo.DepartmentVO;
import com.sw.ddit.employee.service.PositionService;
import com.sw.ddit.employee.vo.AuthVO;
import com.sw.ddit.employee.vo.EmployeeVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/account")
@Controller
public class accuntController {
	
	@Autowired
	PositionService positionService;
	@Autowired
	private JavaMailSender mailSender;
	
	
	@GetMapping("/account")
	public String position(Model model) {
		
		List<EmployeeVO> notPosiList = this.positionService.notPosiList();
		List<CommonVO> positionList = this.positionService.positionList();
		List<EmployeeVO> allList = this.positionService.allList();
		List<DepartmentVO> departmentList = this.positionService.departmentList();
		List<CommonVO> list = this.positionService.workList();
		
		model.addAttribute("title", "인사관리");
		model.addAttribute("list", notPosiList);
		model.addAttribute("posiList", positionList);
		model.addAttribute("allList", allList);
		model.addAttribute("depList", departmentList);
		model.addAttribute("workList", list);
		
		log.info("notPosiList : " + notPosiList);
		
		return "account/account";
	}


	@ResponseBody
	@GetMapping("/depList")
	public List<DepartmentVO> depList() {
		List<DepartmentVO> departmentList = this.positionService.departmentList();
		log.info("depList : " + departmentList);
		
		return departmentList;
	}
	
	@ResponseBody
	@GetMapping("/workList")
	public List<CommonVO> workList() {
		List<CommonVO> workList = this.positionService.workList();
		log.info("workList : " + workList);
		
		return workList;
	}
	
	@ResponseBody
	@GetMapping("/authList")
	public List<CommonVO> authList() {
		List<CommonVO> authList = this.positionService.authList();
		log.info("authList : " + authList);
		
		return authList;
	}
	
	// 신규 직원 등록하기
	@ResponseBody
	@PostMapping("/empUpdate")
	public int empUpdate(@RequestBody EmployeeVO employeeVO) {

			int result = this.positionService.empUpdate(employeeVO);
		
		return result;
	}
	
	// 권한 부여하기
	@ResponseBody
	@PostMapping("/authInsert")
	public int authInsert(@RequestBody AuthVO authVO) {
		int result = this.positionService.authInsert(authVO);
		
		log.info("authVO  : " + authVO);
		
		return result;
	}
	
	//	 휴가도 조금 주기!!
	@ResponseBody
	@PostMapping("/insertVacation")
	public int insertVacation(@RequestBody VacationVO vacVO) {
		int insertVacation = this.positionService.insertVacation(vacVO);
		
		return insertVacation;
	}
	
	
	// 직원정보 삭제하기
	@ResponseBody
	@PostMapping("/empDelete")
	public int empDelete(@RequestBody EmployeeVO employeeVO) {
		int result = this.positionService.empDelete(employeeVO);
		
		log.info("result : " + result);
		
		return result;
	}
	

	@GetMapping(value="/authRefusal",consumes = {MediaType.TEXT_PLAIN_VALUE})
	@ResponseBody
	public String pwMailCheck(String email) throws Exception{
		log.info("이메일 데이터 전송확인");
		log.info("인증 메일 : " + email);
		
//		Random random = new Random();
//		int checkNum = random.nextInt(888888)+111111; // 111111 - 999999
//		log.info("임시비밀번호 : "+checkNum);
		
		//이메일 보내기
		String setFrom = "ddit402@starworks.com";
		String toEmail = email;
		String title = "StarWorks 안내 이메일 입니다.";
		String content = "<h2>안녕하세요 StarWorks 입니다.</h2><br><br>" 
				+ "<h3>귀하의 계정은 권한이 거부되었습니다.</h3><BR>"
				+ "<h3>귀하의 정보는 모두 삭제 되었으므로 필요 시 재가입해야합니다.</h3><br>"
				+ "<h3><a href='192.168.142.25:8099/main/main'>starworks 홈페이지 접속 </a></h3><br><br>"
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
        
        
        return null;
	}

}
