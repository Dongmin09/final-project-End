package com.sw.ddit.meet.mapper;

import java.util.List;
import java.util.Map;

import com.sw.ddit.meet.vo.MeetBookVO;
import com.sw.ddit.meet.vo.MeetRoomVO;

public interface MeetMapper {
	// 회의실 리스트
	public List<MeetRoomVO> roomList(); 
	
	// 예약 리스트
	public List<MeetBookVO> bookList(); 
	
	// 예약
	public int bookInsert(Map<String, String> book);
	
	// 삭제
	public int bookDelete(Map<String, String> book);
}
