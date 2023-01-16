package com.sw.ddit.departmentBoard.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sw.ddit.departmentBoard.vo.DepBoardVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

// mapper 객체
@Repository
public interface DepBoardMapper {

	// 부서 게시판 게시글 List
	List<EgovMap> selectDepBoardList();
	
	// 부서 게시글 상세보기
	DepBoardVO selectDepBoardDetail(int depNo);

	// 부서 게시글 등록
	int insertDep(DepBoardVO depVO);

	// 게시글 삭제
	int deleteDep(DepBoardVO depVO);

	// 게시글 수정
	int updateDep(DepBoardVO depVO);
}
