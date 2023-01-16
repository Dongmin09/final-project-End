package com.sw.ddit.todo.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
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

import com.sw.ddit.todo.service.TodoService;
import com.sw.ddit.todo.vo.TodoVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/todo")
@Controller
public class TodoController {
	
	
	@Autowired
	TodoService todoService;
	// todo 
	
	@GetMapping("/kanban")
	public String todo() {
		return "todo/kanban";
	}
	
	@GetMapping("/todo")
	public String todo(Model model) {
		// todoNo 자동 생성
		String todoNo = this.todoService.todoNo();
		log.info("result : " + todoNo);
		
		model.addAttribute("title", "ToDo");
		model.addAttribute("todoNo", todoNo);
	
		return "todo/todo";
	}
	
	// todo 리스트 목록 조회
	@ResponseBody
	@PostMapping("/todoList")
	public List<TodoVO> todoList(@RequestParam("empCd") String empCd){
		List<TodoVO> todoList = this.todoService.todoList(empCd);
		
		log.info("todoList : " + todoList);
		
		return todoList;
	}
	
	// 상세정보
	@ResponseBody
	@PostMapping("/detail")
	public List<TodoVO> detail(@RequestParam("tit") String tit) {
		log.info("tit : " + tit);
		
		List<TodoVO> detail = this.todoService.detail(tit);
		log.info("detail : " + detail);
		
		return detail;
	}

	
	// todo 생성
	@ResponseBody
	@PostMapping("/todoInsert")
	public int todoInsert(@RequestBody HashMap<String,Object> todoVO) throws ParseException {
		//todoVO : {endTi=2022-12-31, con=개똥이, todoNo=221230002, ctor=220602003, empCd=220602003|220602006|220602005|, regTi=2022-12-30, type=TODO01, tit=안녕안녕 나는 지수야}
		log.info("todoVO : " + todoVO);
		
		List<TodoVO> todoVOList = new ArrayList<TodoVO>();
		
		String empNm = (String) todoVO.get("empNm");
		String[] empNmArr = empNm.split(" ");
		
		
		for(int i=0;i<empNmArr.length;i++) {
			log.info("empNmArr : " + empNmArr.toString());
			//포맷터
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			TodoVO vo = new TodoVO();
			vo.setTodoNo((String)todoVO.get("todoNo"));
			vo.setTit((String)todoVO.get("tit"));
			vo.setCon((String)todoVO.get("con"));
			
			Date date = formatter.parse((String)todoVO.get("regTi"));
			vo.setRegTi(date);
			date = formatter.parse((String)todoVO.get("endTi"));
			vo.setEndTi(date);
			
			vo.setCtor((String)todoVO.get("ctor"));
			vo.setType((String)todoVO.get("type"));
			
			vo.setEmpNm(empNmArr[i]);
			
			todoVOList.add(vo);
		}
		
		log.info("todoVOList : " + todoVOList);
		
//		List<Map<String,Object>> mapList = (List<Map<String,Object>>) todoVO.get("empCd");
//		map.put("mapList", mapList);
//		log.info("todoInsert->map : " + map.toString());
		
		int cnt = 0;
		
		cnt = this.todoService.todoInsert(todoVOList);
		
		log.info("todoInsert->cnt : " + cnt);
		
		return cnt;
	}
	
	// 임시삭제
	@ResponseBody
	@PostMapping("/temporaryDelete")
	public int temporaryDelete(@RequestBody TodoVO todoVO) {
		int result = this.todoService.temporaryDelete(todoVO);
		log.info("result : " + result);
		
		return result;
	}
	
	// 상세 내용 수정
	@ResponseBody
	@PostMapping("/update")
	public int update(@RequestBody TodoVO todoVO) {
		int result = this.todoService.update(todoVO);
		
		return result;
	}
	
	// 진행도 100 달성 시 완료 자동 변경
	@ResponseBody
	@PostMapping("/progs100")
	public int progs100(@RequestBody TodoVO todoVO) {
		int result = this.todoService.progs100(todoVO);
		
		return result;
	}
	
	// 칸반(task) 상태변화
	@ResponseBody
	@PostMapping("/sitChange")
	public int sitChange(@RequestBody TodoVO todoVO) {
		int result = this.todoService.sitChange(todoVO);
		
		return result;
	}
	
}
