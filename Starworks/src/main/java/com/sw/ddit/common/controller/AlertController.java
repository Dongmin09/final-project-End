package com.sw.ddit.common.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sw.ddit.common.service.AlertService;
import com.sw.ddit.common.vo.AlertVO;
import com.sw.ddit.security.CustomUser;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AlertController {
	@Autowired
	private AlertService alertService;
	
	@ResponseBody
	@PostMapping("/alertList")
	public List<AlertVO> alertList(@RequestParam String empCd) {
		log.info("empCd : " + empCd);
		List<AlertVO> alertList = this.alertService.alertList(empCd);
		return alertList;
	}
	
	@ResponseBody
	@PostMapping("/alertCheck")
	public int alertCheck(@RequestParam int alrNo) {
		int row = this.alertService.alertCheck(alrNo);
		return row;
	}
	
	@ResponseBody
	@PostMapping("/alertCount")
	public int alertCount(@RequestParam String empCd) {
		int cnt = this.alertService.alertCount(empCd);
		return cnt;
	}
	
}
