package com.sw.ddit.departmentBoard.service;

import java.util.List;

import com.sw.ddit.departmentBoard.vo.DepBoardVO;

public interface DepBoardService {

	// 게시판 List 목록 조회
	public List selectDepBoardList();

	// 게시판 상세보기
	public DepBoardVO selectDepBoardDetail(int depNo);

	// 게시글 등록
	public int insertDep(DepBoardVO depVO);

	// 게시글 삭제
	public int deleteDep(DepBoardVO depVO);

	// 게시글 수정
	public int updateDep(DepBoardVO depVO);

}
