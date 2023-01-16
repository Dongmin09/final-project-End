package com.sw.ddit.payment.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.ddit.department.vo.DepartmentVO;
import com.sw.ddit.employee.vo.EmployeeVO;
import com.sw.ddit.payment.mapper.SubpayMapper;
import com.sw.ddit.payment.service.SubpayService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class SubpayServiceImpl implements SubpayService{

	@Autowired
	SubpayMapper subpayMapper;
	
	//등급설정
	public int updatePayCd(EmployeeVO empVO) {
		return this.subpayMapper.updatePayCd(empVO);
		
	}
	
}
