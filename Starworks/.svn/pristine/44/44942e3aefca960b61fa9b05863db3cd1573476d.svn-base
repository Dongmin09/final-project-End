package com.sw.ddit.main.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sw.ddit.commu.service.BoardService;
import com.sw.ddit.employee.service.PositionService;
import com.sw.ddit.employee.vo.EmployeeVO;
import com.sw.ddit.mail.service.MailService;
import com.sw.ddit.notice.service.NoticeService;
import com.sw.ddit.security.CustomUser;
import com.sw.ddit.todo.service.TodoService;
import com.sw.ddit.todo.vo.TodoVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/main")
public class MainController {
	@Autowired
	PositionService positionService;
	
	@Resource(name = "mailService")
	private MailService mailService;
	
	@Resource(name = "noticeService")
	private NoticeService noticeService;
	
	@Resource(name = "boardService")
	private BoardService boardService;

	@Autowired
	TodoService todoService;
	
	@GetMapping("/main")
	public String main(Model model) {
		List<EmployeeVO> notPosiList = this.positionService.notPosiList();
		log.info("notPosiList : " + notPosiList);
		List<EmployeeVO> list = new ArrayList<EmployeeVO>();
		for(int i=0; i<5; i++) {
			if(notPosiList.size() <5 ) {
				list.addAll(notPosiList);
			}else {
				list.add(notPosiList.get(i));
			}
		}
		log.info("list : " + list);
		model.addAttribute("notPosiList", list);
		
		// mail
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		CustomUser user = (CustomUser) authentication.getPrincipal();
		
		log.info("getEmpNm: " + user.getEmployeeVO().getEmpNm());
		log.info("getEmpCd: " + user.getEmployeeVO().getEmpCd()); 
		
		List mailList = mailService.mainList(user.getEmployeeVO().getEmpCd());
		List mainMailList = mailService.mainMailList(user.getEmployeeVO().getEmpCd());
		List mainList = noticeService.mainNotiList();
		List commuList = boardService.mainCommuList();
		List todoList = todoService.todoMainList(user.getEmployeeVO().getEmpCd());
		
		model.addAttribute("list", mailList);
		
		// 공지사항 리스트
		model.addAttribute("mainList", mainList);
		
		// 커뮤니티 리스트
		model.addAttribute("commuList", commuList);
		
		// 관리자 메일 리스트
		model.addAttribute("mainMailList", mainMailList);
		
		// todo 리스트
		model.addAttribute("todoList", todoList);
		
		return "main/main/index";
	}
	
}
