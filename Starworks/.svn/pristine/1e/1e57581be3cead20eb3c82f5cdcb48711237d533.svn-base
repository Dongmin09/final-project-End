package com.sw.ddit.mention.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sw.ddit.mention.service.MentionService;
import com.sw.ddit.mention.vo.MentionVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MentionController {
	@Inject
	MentionService mentionService;
	
	@GetMapping("/mention")
	public String mention() {
		return "mention/mention";
	}
	
	@ResponseBody
	@PostMapping("/mentionList")
	public List<MentionVO> mentionList() {
		List<MentionVO> list = this.mentionService.mentionList();
		return list;
	}
}
