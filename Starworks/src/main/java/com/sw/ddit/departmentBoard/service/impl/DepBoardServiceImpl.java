package com.sw.ddit.departmentBoard.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sw.ddit.departmentBoard.mapper.DepBoardMapper;
import com.sw.ddit.departmentBoard.service.DepBoardService;
import com.sw.ddit.departmentBoard.vo.DepBoardVO;

// service 객체 생성
@Service("depBoardService")
public class DepBoardServiceImpl implements DepBoardService{

	@Resource(name = "depBoardMapper")
	private DepBoardMapper depMapper;
	
	// 부서 게시판 게시글 List
	@Override
	public List selectDepBoardList() {
		return depMapper.selectDepBoardList();
	}

	// 부서 게시글 상세보기
	@Override
	public DepBoardVO selectDepBoardDetail(int depNo) {
		return depMapper.selectDepBoardDetail(depNo);
	}
	
	// 부서 게시글 등록
	@Override
	public int insertDep(DepBoardVO depVO) {
		
		depMapper.insertDep(depVO);
		return depVO.getDepNo();
	}

	// 부서 게시글 삭제
	@Override
	public int deleteDep(DepBoardVO depVO) {
		return depMapper.deleteDep(depVO);
	}

	// 부서 게시글 수정
	@Override
	public int updateDep(DepBoardVO depVO) {
		return depMapper.updateDep(depVO);
	}
	
}
