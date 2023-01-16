package com.sw.ddit.tree.controller;

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

import com.sw.ddit.employee.vo.EmployeeVO;
import com.sw.ddit.tree.service.TreeService;
import com.sw.ddit.tree.vo.JstreeVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/tree")
public class TreeController {

	@Autowired
	TreeService treeService;
	
	// 조직도 구현
	@GetMapping("/tree")
	public String tree(Model model) {
		List<JstreeVO> depTree = this.treeService.tree();
		log.info("name : " + depTree);
		model.addAttribute("depName", depTree);
		model.addAttribute("title", "조직도");
		return "tree/tree";
	}
	
	@GetMapping("/jsonData")
	@ResponseBody
	public List<JstreeVO> Sel(){
		List<JstreeVO> depTree = this.treeService.tree();
		List<EmployeeVO> empTree = this.treeService.empTree();
		
		for(int i=0; i<depTree.size();i++) {
			if(depTree.get(i).getParent() == null) {
				depTree.get(i).setParent("#");
			}
		}
		
		for(int i=0; i<empTree.size();i++) {
			List<JstreeVO> in = empTree.get(i).getJstreeList();
			
			for(int j=0; j<in.size(); j++) {
				if( in.get(j).getParent() != null) { // 부서를 적용하지 않은 사람은 조직도에 나오지 않도록(새로 회원가입한 사람들)
					depTree.addAll(in);
				}
			}
			
		}
		log.info("depTree : " + depTree);
		return depTree;	
	}
	
	@PostMapping("/list")
	@ResponseBody
	public List<EmployeeVO> empInfo(@RequestBody  EmployeeVO empVO) {
		List<EmployeeVO> info = this.treeService.empInfo(empVO);
		log.info("empInfo : " + info);
		return info;
	}
	
	@GetMapping("/departmentData")
	@ResponseBody
	public List<JstreeVO> departmentData(){
		List<JstreeVO> depTree = this.treeService.tree();
	
		
		for(int i=0; i<depTree.size();i++) {
			if(depTree.get(i).getParent() == null) {
				depTree.get(i).setParent("#");
			}
		}
		
		log.info("depTree : " + depTree);
		return depTree;	
	}
}
