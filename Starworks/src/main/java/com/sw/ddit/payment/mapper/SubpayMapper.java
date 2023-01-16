package com.sw.ddit.payment.mapper;

import java.util.List;

import com.sw.ddit.department.vo.DepartmentVO;
import com.sw.ddit.employee.vo.EmployeeVO;

public interface SubpayMapper {

	//등급설정
	public int updatePayCd(EmployeeVO empVO);
	
}
