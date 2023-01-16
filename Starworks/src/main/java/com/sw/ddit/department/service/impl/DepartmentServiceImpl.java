package com.sw.ddit.department.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.ddit.common.vo.CommonVO;
import com.sw.ddit.department.mapper.DepartmentMapper;
import com.sw.ddit.department.service.DepartmentService;
import com.sw.ddit.department.vo.DepartmentVO;

@Service
public class DepartmentServiceImpl implements DepartmentService {

	@Autowired
	DepartmentMapper depMapper;
	
	// 공통코드 불러오기
	@Override
	public List<CommonVO> commList(){
		return this.depMapper.commList();
	}

	// 부서 List
	@Override
	public List<DepartmentVO> depList(){
		return this.depMapper.depList();
	}
	
	// 부서 추가
	@Override
	public int insertDep(DepartmentVO depVO) {
		return this.depMapper.insertDep(depVO);
	}
	
	// 부서 삭제
	public int deleteDep(DepartmentVO depVO) {
		return this.depMapper.deleteDep(depVO);
	}
	
	// 부서 이름 변경
	@Override
	public int updateDep(DepartmentVO depVO) {
		return this.depMapper.updateDep(depVO);
	}
	
}
