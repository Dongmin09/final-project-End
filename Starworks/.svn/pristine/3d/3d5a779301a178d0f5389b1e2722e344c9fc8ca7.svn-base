package com.sw.ddit.calendar.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sw.ddit.calendar.service.CalendarService;
import com.sw.ddit.calendar.vo.CalendarVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/calendar")
public class CalendarController {

	@Autowired
	CalendarService calendarService;
	
	@GetMapping("/calendar")
	public String calendar(Model model) {
		
		model.addAttribute("title", "나의 일정");
		return "calendar/calendar";
	}
	
	// 일정 캘린더에 보이기
	@ResponseBody
	@PostMapping("/schedule")
	public List<CalendarVO> mySchedule2(@RequestBody CalendarVO calendarVO){	
		List<CalendarVO> mySchedule = this.calendarService.mySchedule(calendarVO);
		return mySchedule;
	}
	
	// 일정 추가하기
	@ResponseBody
	@PostMapping("/insertSchedule")
	public int insertSchedule(@RequestBody CalendarVO calendarVO) {
		log.info("dsf : "+ calendarVO);
		if(calendarVO.getTitle() == null || calendarVO.getTitle()=="") {
			return 0;
		}
		
		if(calendarVO.getAllDay() == "false") {
			calendarVO.setAllDay("");
		}
		calendarVO.setTextColor("");
		log.info("calendarVO :: " + calendarVO);
		int insertSchedule = this.calendarService.insertSchedule(calendarVO);
		
		return insertSchedule;
	}

	// 일정 삭제하기
	@ResponseBody
	@PostMapping("/removeSchedule")
	public int removeSchedule(@RequestBody CalendarVO calendarVO) {
		int insertSchedule = this.calendarService.removeSchedule(calendarVO);
		
		return insertSchedule;
	}
	
	// 일정 삭제하기
	@ResponseBody
	@PostMapping("/meetRemove")
	public int meetRemove(@RequestBody CalendarVO calendarVO) {
		int insertSchedule = this.calendarService.meetRemove(calendarVO);
		
		return insertSchedule;
	}
	
	// 일정 삭제하기
	@ResponseBody
	@PostMapping("/todoRemove")
	public int todoRemove(@RequestBody CalendarVO calendarVO) {
		int insertSchedule = this.calendarService.todoRemove(calendarVO);
		
		return insertSchedule;
	}

	// 일정 수정하기
	@ResponseBody
	@PostMapping("/updateSchedule")
	public int updateSchedule(@RequestBody CalendarVO calendarVO) {
		if(calendarVO.getAllDay() == "false") {
			calendarVO.setAllDay("");
		}
		int insertSchedule = this.calendarService.updateSchedule(calendarVO);
		
		return insertSchedule;
	}

	
	// 일정 추가하기
	@ResponseBody
	@PostMapping("/multiSchedule")
	public int multiSchedule(@RequestBody CalendarVO calendarVO) {
		log.info("dsf : "+ calendarVO);

		CalendarVO checkCald = this.calendarService.checkCald();
		String[] empCd = calendarVO.getEmpCd().split(" ");
		List<CalendarVO> list = new ArrayList<CalendarVO>();
		CalendarVO calVO = new CalendarVO();
		
		log.info("checkCald : "+ checkCald.getCaldCd());
		int caldCd = checkCald.getCaldCd();
		for(int i=0; i<empCd.length; i++) {
			calVO = new CalendarVO();
		
			//itle":tit, "sta":calendarStart, "endTime":calendarEnd, "allDay":"ture", "empCd":empNm, "color":"#53FF4C", "textColor":"black
			calVO.setCaldCd(caldCd++);
			calVO.setAllDay("ture");
			calVO.setTitle(calendarVO.getTitle());
			calVO.setSta(calendarVO.getSta());
			calVO.setEndTime(calendarVO.getEndTime());
			calVO.setEmpCd(empCd[i]);
			calVO.setTextColor("black");
			calVO.setColor("#53FF4C");
			list.add(calVO);
		}
		
		
		log.info("calendarVO :: " + calendarVO);
		log.info("calendarVO :: " + list);
		int multiSchedule = this.calendarService.multiSchedule(list);
		
		return multiSchedule;
	}
}








