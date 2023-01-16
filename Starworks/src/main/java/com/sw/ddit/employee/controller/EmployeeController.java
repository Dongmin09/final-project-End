package com.sw.ddit.employee.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sw.ddit.approval.vo.LineSeqVO;
import com.sw.ddit.company.service.CompanyService;
import com.sw.ddit.employee.service.EmployeeService;
import com.sw.ddit.employee.vo.EmployeeVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/security")
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;
	CompanyService companyService;
	@Autowired
	
	@GetMapping("/signupMember")
	public String signupMember() {
		
		return "/security/signupMember";
	}
	
	// 직원 회원가입
	@PostMapping("/insertEmp")
	public String insertEmp(@ModelAttribute EmployeeVO employeeVO, LineSeqVO lineseqVO) {
		
		log.info("employeeVO : " + employeeVO);
		log.info("empVO : " + employeeVO.toString());
		
		int result = this.employeeService.insertEmp(employeeVO);
		log.info("result : " + result);
		
		return "redirect:/security/signin";
	}
	
	// 관리자 회원가입
	@PostMapping("/insertAdmin")
	public String insertAdmin(@ModelAttribute EmployeeVO employeeVO) {
		
		log.info("employeeVO : " + employeeVO);
		log.info("empVO : " + employeeVO.toString());
		
		int result = this.employeeService.insertAdmin(employeeVO);
		log.info("result : " + result);
		
		return "redirect:/security/signin";
	}
	
	// 아이디 중복체크 
	@ResponseBody
	@RequestMapping(value = "/checkId", method = RequestMethod.GET)
	public int checkId(@RequestParam("empId") String empId) {
		
		return employeeService.checkId(empId);
	}
	
	// 회사 중복체크 
	@ResponseBody
	@RequestMapping(value = "/checkCoCd", method = RequestMethod.GET)
	public int checkCoCd(@RequestParam("coCd") String coCd) {
		
		return employeeService.checkCoCd(coCd);
	}
	
	// 아이디 찾기 
	@ResponseBody
	@PostMapping("/findID")
	public String findID(@RequestBody EmployeeVO employeeVO) {
		log.info("employeeVO : " + employeeVO);
		
		String result = employeeService.findID(employeeVO);
		log.info("result 값 : " + result);
		
		return result;
	}
	
	// 이름 찾기 
	@ResponseBody
	@PostMapping("/findNm")
	public String findNm(@RequestBody EmployeeVO employeeVO) {
		log.info("employeeVO : " + employeeVO);
		
		String result = employeeService.findNm(employeeVO);
		log.info("result 값 : " + result);
		
		return result;
	}
	
	// 비밀번호 찾기 
	@ResponseBody
	@PostMapping("/findPW")
	public int findPW(@RequestBody EmployeeVO employeeVO) {
		log.info("employeeVO : " + employeeVO);
		
		int result = employeeService.findPW(employeeVO);
		log.info("result 값 : " + result);
		
		return result;
	}
	
	@GetMapping("/findID")
	public String findID() {
		return "/security/findID";
	}
	
	@GetMapping("/findPW")
	public String findPW() {
		
		return "/security/findPW";
	}
	
	@GetMapping("/NeaswFile")
	public String s() {
		return "/security/NeaswFile";
	}

	
}
