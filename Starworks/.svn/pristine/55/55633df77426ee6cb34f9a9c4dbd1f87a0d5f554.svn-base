package com.sw.ddit.todo.service.serviceImpl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.sw.ddit.todo.mapper.TodoMapper;
import com.sw.ddit.todo.service.TodoService;
import com.sw.ddit.todo.vo.TodoVO;


@Service
public class TodoServiceImpl implements TodoService{

	@Autowired
	TodoMapper todoMapper;
	
	// todo 리스트 목록 조회
	@Override
	public List<TodoVO> todoList(String empCd){
		return this.todoMapper.todoList(empCd);
	}
	
	// todo main 리스트 목록 조회
	@Override
	public List<TodoVO> todoMainList(String empCd){
		return this.todoMapper.todoMainList(empCd);
	}

	// 상세정보
	@Override
	public List<TodoVO> detail(String tit){
		return this.todoMapper.detail(tit);
	}

	// todo 추가
	@Override
	public int todoInsert(List<TodoVO> todoVOList) {
		return this.todoMapper.todoInsert(todoVOList);
	}
	
	// todo 추가시 TODO_NO 검색
	@Override
	public String todoNo() {
		return this.todoMapper.todoNo();
	}
	
	// 임시삭제
	@Override
	public int temporaryDelete(TodoVO todoVO) {
		return this.todoMapper.temporaryDelete(todoVO);
	}
	
	// 내용수정
	@Override
	public int update(TodoVO todoVO) {
		return this.todoMapper.update(todoVO);
	}
	
	// 진행도 100 달성 시 완료 자동 변경
	@Override
	public int progs100(TodoVO todoVO) {
		return this.todoMapper.progs100(todoVO);
	}
	
	// 칸반(task) 상태변화
	@Override
	public int sitChange(TodoVO todoVO) {
		return this.todoMapper.sitChange(todoVO);
	}
}
