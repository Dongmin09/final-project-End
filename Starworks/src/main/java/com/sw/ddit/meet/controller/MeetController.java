package com.sw.ddit.meet.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sw.ddit.meet.service.MeetRoomService;
import com.sw.ddit.meet.vo.MeetBookVO;
import com.sw.ddit.meet.vo.MeetRoomVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/meet")
public class MeetController {
	@Inject
	MeetRoomService meetService;
	
	@GetMapping("/book")
	public String meet(Model model) {
		List<MeetRoomVO> roomList = this.meetService.roomList();
		model.addAttribute("room", roomList);
		return "meet/book";
	}
	
	@ResponseBody
	@PostMapping("/bookPost")
	public int bookPost(@RequestBody Map<String, String> book) {
		log.info("map : " + book.toString());
		int cnt = this.meetService.bookInsert(book);
		return cnt;
	}
	
	@ResponseBody
	@PostMapping("/bookDel")
	public int bookDel(@RequestBody Map<String, String> book) {
		log.info("map : " + book.toString());
		int cnt = this.meetService.bookDelete(book);
		return cnt;
	}
	
	@ResponseBody
	@PostMapping("/book")
	public List<MeetBookVO> book() {
		List<MeetBookVO> bookList = this.meetService.bookList();
		return bookList;
	}
}
