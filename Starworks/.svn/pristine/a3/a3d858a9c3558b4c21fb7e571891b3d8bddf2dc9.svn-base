package com.sw.ddit.todo.service;

import java.util.List;

import com.sw.ddit.todo.vo.TodoVO;

public interface TodoService {

	// todo 리스트 목록 조회
	public List<TodoVO> todoList(String empCd);
	
	// todo main 리스트 목록 조회
	public List<TodoVO> todoMainList(String empCd);

	// 상세정보
	public List<TodoVO> detail(String tit);

	// todo 추가
	public int todoInsert(List<TodoVO> todoVOList);

	// todo 추가시 TODO_NO 검색
	public String todoNo();

	// 임시삭제
	public int temporaryDelete(TodoVO todoVO);

	// 내용수정
	public int update(TodoVO todoVO);

	// 진행도 100 달성 시 완료 자동 변경
	public int progs100(TodoVO todoVO);

	// 칸반(task) 상태변화
	public int sitChange(TodoVO todoVO);
}
