package com.sw.ddit.calendar.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.ddit.calendar.mapper.CalendarMapper;
import com.sw.ddit.calendar.service.CalendarService;
import com.sw.ddit.calendar.vo.CalendarVO;

@Service
public class CalendarServiceImpl implements CalendarService {
	
	@Autowired
	CalendarMapper calendarMapper;
	
	// 나의 일정 내역 
	@Override
	public List<CalendarVO> mySchedule(CalendarVO calendarVO){
		return this.calendarMapper.mySchedule(calendarVO);
	}
	
	// 캘린더에 일정 등록하기
	@Override
	public int insertSchedule(CalendarVO calendarVO) {
		return this.calendarMapper.insertSchedule(calendarVO);
	}
	
	// 일정 삭제하기
	@Override
	public int removeSchedule(CalendarVO calendarVO) {
		return this.calendarMapper.removeSchedule(calendarVO);
	}
	
	// 일정 수정하기
	@Override
	public int updateSchedule(CalendarVO calendarVO) {
		return this.calendarMapper.updateSchedule(calendarVO);
	}
	
	// 예약된 회의 일정 삭제하기
	@Override
	public int meetRemove(CalendarVO calendarVO) {
		return this.calendarMapper.meetRemove(calendarVO);
	}
	
	// Todo 일정 삭제하기
	@Override
	public int todoRemove(CalendarVO calendarVO) {
		return this.calendarMapper.todoRemove(calendarVO);
	}
	
	// todo일정을 캘린더에 일정 등록하기
	@Override
	public int multiSchedule(List<CalendarVO> list) {
		return this.calendarMapper.multiSchedule(list);
	}
	
	// 마지막 캘린더 아이디 가져오기
	@Override
	public CalendarVO checkCald() {
		return this.calendarMapper.checkCald();
	}
}
