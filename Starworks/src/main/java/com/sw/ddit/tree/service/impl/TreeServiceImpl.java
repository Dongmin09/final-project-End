package com.sw.ddit.tree.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.ddit.employee.vo.EmployeeVO;
import com.sw.ddit.tree.mapper.TreeMapper;
import com.sw.ddit.tree.service.TreeService;
import com.sw.ddit.tree.vo.JstreeVO;

@Service
public class TreeServiceImpl implements TreeService{

	@Autowired
	TreeMapper treeMapper;
	
	// 조직도 구현
	@Override
	public List<JstreeVO> tree(){
		return this.treeMapper.tree();
	}
	@Override
	public List<EmployeeVO> empTree(){
		return this.treeMapper.empTree();
	}
	@Override
	public List<EmployeeVO> empInfo(EmployeeVO empVO) {
		return this.treeMapper.empInfo(empVO);
	}
}
