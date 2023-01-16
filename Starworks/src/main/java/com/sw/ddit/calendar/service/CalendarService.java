package com.sw.ddit.calendar.service;

import java.util.List;

import com.sw.ddit.calendar.vo.CalendarVO;

public interface CalendarService {

	// 나의 일정 내역 
	public List<CalendarVO> mySchedule(CalendarVO calendarVO);
	
	// 캘린더에 일정 등록하기
	public int insertSchedule(CalendarVO calendarVO);
	
	// 일정 삭제하기
	public int removeSchedule(CalendarVO calendarVO);
	
	// 일정 수정하기
	public int updateSchedule(CalendarVO calendarVO);
	
	// 예약된 회의 일정 삭제하기
	public int meetRemove(CalendarVO calendarVO);
	
	// todo일정을 캘린더에 일정 등록하기
	public int multiSchedule(List<CalendarVO> list);
	
	// 마지막 캘린더 아이디 가져오기
	public CalendarVO checkCald();
	
	// Todo 일정 삭제하기
	public int todoRemove(CalendarVO calendarVO);
	
}
