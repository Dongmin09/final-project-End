package com.sw.ddit.approval.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sw.ddit.approval.service.DraftService;
import com.sw.ddit.approval.vo.DraftVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/draft")
@Controller
public class DraftController {
	@Autowired
	DraftService draftService;
	
	@ResponseBody
	@PostMapping("/info")
	public DraftVO info(@RequestParam String empCd) {
		empCd = empCd.trim();
		DraftVO draft = this.draftService.draft(empCd);
		log.info("draft : " + draft.toString());
		return draft;
	}
}
