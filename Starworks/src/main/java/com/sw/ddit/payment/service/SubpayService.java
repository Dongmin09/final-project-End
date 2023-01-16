package com.sw.ddit.payment.service;

import java.util.List;

import com.sw.ddit.department.vo.DepartmentVO;
import com.sw.ddit.employee.vo.EmployeeVO;

public interface SubpayService {

	//등급설정
	public int updatePayCd(EmployeeVO empVO);
}
