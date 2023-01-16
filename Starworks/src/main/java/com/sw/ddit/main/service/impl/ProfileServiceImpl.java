package com.sw.ddit.main.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.ddit.employee.vo.EmployeeVO;
import com.sw.ddit.main.mapper.ProfileMapper;
import com.sw.ddit.main.service.ProfileService;

@Service
public class ProfileServiceImpl implements ProfileService {

	@Autowired
	ProfileMapper profileMapper;

	// 내 정보 확인하기 
	@Override
	public List<EmployeeVO> empDetail(EmployeeVO employeeVO){
		return this.profileMapper.empDetail(employeeVO);
	}
	
	//내 정보 수정하기
	@Override
	public int empModify(EmployeeVO employeeVO) {
		return this.profileMapper.empModify(employeeVO);
	}
	
	// 내 사진 수정하기
	@Override
	public int uploadProfile(EmployeeVO empVO) {
		return this.profileMapper.uploadProfile(empVO);
	}
	
	// 내 사인 수정하기
	@Override
	public int uploadSign(EmployeeVO empVO) {
		return this.profileMapper.uploadSign(empVO);
	}
}
