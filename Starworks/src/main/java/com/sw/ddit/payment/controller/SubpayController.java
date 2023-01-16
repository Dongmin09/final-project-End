package com.sw.ddit.payment.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sw.ddit.employee.vo.EmployeeVO;
import com.sw.ddit.payment.service.SubpayService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/subpay")
@Controller
public class SubpayController {
	
	@Autowired
	SubpayService subpayService;
	
	@GetMapping("/subpay")
	public String subpay(Model model) {
		
		return "subpay/subpay";
	}
	@ResponseBody
	@PostMapping("/subpay")
	public int subpayPost(@RequestBody EmployeeVO empVO) {
		log.info("empVO: " + empVO);
		int result = this.subpayService.updatePayCd(empVO);
		return result;
	}
}
