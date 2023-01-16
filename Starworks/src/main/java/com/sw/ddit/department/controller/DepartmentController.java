package com.sw.ddit.department.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sw.ddit.common.vo.CommonVO;
import com.sw.ddit.department.service.DepartmentService;
import com.sw.ddit.department.vo.DepartmentVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/department")
public class DepartmentController {

	@Autowired
	DepartmentService depService;
	
	// 부서 관리
	@GetMapping("/depAdmin")
	public String depAdmin(Model model){
		List<DepartmentVO> depList = this.depService.depList();
		
		log.info("depList : " + depList);
		
		model.addAttribute("depList", depList);
		model.addAttribute("title", "부서관리");
		return "department/depAdmin";
	}
	
	@ResponseBody
	@GetMapping("/code")
	public List<CommonVO> code() {
		List<CommonVO> code = this.depService.commList();
		log.info("code : " + code);
		return code;
	}
	
	@PostMapping("/depPlus")
	public String depPlus(DepartmentVO depVO) {
		int result = this.depService.insertDep(depVO);	
		log.info("depVO : " + depVO);
		if(result>0) {
			return "redirect:/department/depAdmin";
		}else {
			return "redirect:/department/depAdmin";			
		}
	}
	
	@ResponseBody
	@PostMapping("/updateDep")
	public int updateDep(@RequestBody DepartmentVO depVO){
		log.info("depVO : " + depVO);
		int result = this.depService.updateDep(depVO);
		
		return result;
	}

	@ResponseBody
	@PostMapping("/deleteDep")
	public int deleteDep(@RequestBody DepartmentVO depVO){
		log.info("depVO : " + depVO);
		int result = this.depService.deleteDep(depVO);
		
		return result;
	}
	
	@ResponseBody
	@PostMapping("/insertDep")
	public int insertDep(@RequestBody DepartmentVO depVO){
		log.info("depVO : " + depVO);
		int result = this.depService.insertDep(depVO);
		
		return result;
	}
	
}











