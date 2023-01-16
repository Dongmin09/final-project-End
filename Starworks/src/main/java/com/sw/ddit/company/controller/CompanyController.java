package com.sw.ddit.company.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sw.ddit.company.service.CompanyService;
import com.sw.ddit.company.vo.CompanyVO;
import com.sw.ddit.employee.controller.EmployeeController;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/security")
public class CompanyController {

	@Autowired
	CompanyService companyService;
	
	@GetMapping("/signupAdmin1")
	public String signupAdmin1() {
		
		return "/security/signupAdmin1";
	}
	
	@GetMapping("/signupAdmin2")
	public String signupAdmin2() {
		
		return "/security/signupAdmin2";
	}
	
	@PostMapping("/insertCom")
	public String insertCom(@ModelAttribute CompanyVO companyVO) {
		log.info("companyVO : " + companyVO);
		log.info("comVO : " + companyVO.toString());
		
		int result = this.companyService.insertCom(companyVO);
		log.info("result : " + result);
		
		return "redirect:/security/signupAdmin2";
	}
	
	@ResponseBody
	@RequestMapping(value = "/checkURL", method = RequestMethod.GET)
	public int checkURL(@RequestParam("url") String url) {
		
		return companyService.checkURL(url);
	}
	
}
