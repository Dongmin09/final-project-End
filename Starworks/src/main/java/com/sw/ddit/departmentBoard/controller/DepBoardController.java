package com.sw.ddit.departmentBoard.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sw.ddit.departmentBoard.service.DepBoardService;
import com.sw.ddit.departmentBoard.vo.DepBoardVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/dep")
@Controller
public class DepBoardController {

	@Resource(name = "depBoardService")
	private DepBoardService depService;
	
	/** 부서 게시글 List **/
	@RequestMapping("/selectDepBoardList")
	public String list(Model model) {
		
		List list = depService.selectDepBoardList();
		
		// 공통약속
		model.addAttribute("title", "부서게시판");
		model.addAttribute("list", list);
		
		return "depBoard/depBoard";
	}
	
	/** 부서게시판 상세 폼 **/
	@RequestMapping("/selectDepBoardDetail/{depNo}")
	public String detail(@PathVariable("depNo") int depNo, Model model) {
		
		// 조회수 +1 & 상세정보 조회
		DepBoardVO depVO = depService.selectDepBoardDetail(depNo);
		
		model.addAttribute("title", "부서게시판");
		model.addAttribute("depVO", depVO);
		
		return "depBoard/depBoardDetail";
	}
	
	/** 부서 게시판 등록 폼 **/
	@RequestMapping("depInsertForm")
	public String depInsertForm(Model model) {
		
		model.addAttribute("title", "부서게시판");
		model.addAttribute("flg","create");
		
		return "depBoard/depInsertForm";
	}
	
	/** 부서게시판 등록 **/
	@PostMapping("/insertDep")
	public String insertDep(DepBoardVO depVO, Model model) {
		
		int depNo = depService.insertDep(depVO);
		
		model.addAttribute("depVO", depVO);
		model.addAttribute("flg","update");
		
		return "redirect:/dep/selectDepBoardDetail/"+depNo;
	}
	
	/** 부서게시글 삭제 **/
	@RequestMapping("/deleteDep")
	public String deleteDep(DepBoardVO depVO, Model model) {
		
		int result = depService.deleteDep(depVO);
		
		model.addAttribute("depVO", depVO);
		
		return "redirect:/dep/selectDepBoardList";
	}
	
	// 부서게시글 수정 폼
	@RequestMapping("/depUpdateForm/{depNo}")
	public String depUpdateForm(Model model, @PathVariable("depNo") int depNo) {
		
		DepBoardVO vo = depService.selectDepBoardDetail(depNo);
		
		model.addAttribute("title", "부서게시판");
		model.addAttribute("depVO", vo);
		model.addAttribute("flg","update");
		
		return "depBoard/depInsertForm";
	}
	
	/** 부서게시글 수정 **/
	@PostMapping("/updateDep")
	public String updateDep(Model model, DepBoardVO depVO) {
		
		int result = depService.updateDep(depVO);
		
		model.addAttribute("depVO", depVO);
		model.addAttribute("flg", "update");
		
		return "redirect:/dep/selectDepBoardDetail/"+depVO.getDepNo();
	}
}
