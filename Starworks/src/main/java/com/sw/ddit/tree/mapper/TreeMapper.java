package com.sw.ddit.tree.mapper;

import java.util.List;

import com.sw.ddit.employee.vo.EmployeeVO;
import com.sw.ddit.tree.vo.JstreeVO;

public interface TreeMapper {
	
	// 조직도 구현
	public List<JstreeVO> tree();
	public List<EmployeeVO> empTree();
	public List<EmployeeVO> empInfo(EmployeeVO empVO);
}
