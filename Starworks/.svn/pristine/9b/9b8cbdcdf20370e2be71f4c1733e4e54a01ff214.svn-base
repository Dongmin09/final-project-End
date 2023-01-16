package com.sw.ddit.meet.service.impl;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sw.ddit.meet.mapper.MeetMapper;
import com.sw.ddit.meet.service.MeetRoomService;
import com.sw.ddit.meet.vo.MeetBookVO;
import com.sw.ddit.meet.vo.MeetRoomVO;

@Service
public class MeetRoomServiceImpl implements MeetRoomService {
	@Inject
	MeetMapper meetMapper;
	
	@Override
	public List<MeetRoomVO> roomList() {
		return this.meetMapper.roomList();
	}

	@Override
	public List<MeetBookVO> bookList() {
		return this.meetMapper.bookList();
	}

	@Override
	public int bookInsert(Map<String, String> book) {
		return this.meetMapper.bookInsert(book);
	}

	@Override
	public int bookDelete(Map<String, String> book) {
		return this.meetMapper.bookDelete(book);
	}

}
