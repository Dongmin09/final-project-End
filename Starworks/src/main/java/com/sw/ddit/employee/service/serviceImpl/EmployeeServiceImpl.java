package com.sw.ddit.employee.service.serviceImpl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.ddit.employee.mapper.EmployeeMapper;
import com.sw.ddit.employee.service.EmployeeService;
import com.sw.ddit.employee.vo.EmployeeVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class EmployeeServiceImpl implements EmployeeService{

	@Autowired
	EmployeeMapper employeeMapper;
	
	@Autowired
	SqlSession sqlsession = null;
	
	// EMPLOYEE 직원 회원가입 
	@Override
	public int insertEmp(EmployeeVO employeeVO) {
		log.info("sss : " + employeeVO);
		
		return this.employeeMapper.insertEmp(employeeVO);
	}
	
	// EMPLOYEE 관리자 회원가입
	@Override
	public int insertAdmin(EmployeeVO employeeVO) {
		return this.employeeMapper.insertAdmin(employeeVO);
	}
	
	// EMPLOYEE 아이디 중복체크
	@Override
	public int checkId(String empId) {
		return this.employeeMapper.checkId(empId);
	}
	
	// EMPLOYEE 회사 중복체크
	@Override
	public int checkCoCd(String coCd) {
		return this.employeeMapper.checkCoCd(coCd);
	}
	
	// EMPLOYEE 이메일 중복체크
	@Override
	public int checkEmail(String empEmail) {
		return this.employeeMapper.checkEmail(empEmail);
	}
	
	// EMPLOYEE 아이디 찾기
	@Override
	public String findID(EmployeeVO employeeVO) {
		return this.employeeMapper.findID(employeeVO);
	}
	
	// EMPLOYEE 임시비밀번호 발급
	@Override
	public int findPW(EmployeeVO employeeVO) {
		return this.employeeMapper.findPW(employeeVO);
	}
	
	// EMPLOYEE 이름 찾기
	@Override
	public String findNm(EmployeeVO employeeVO) {
		return this.employeeMapper.findNm(employeeVO);
	}
}
