package com.sw.ddit.employee.mapper;

import com.sw.ddit.employee.vo.EmployeeVO;

public interface EmployeeMapper {
	
	// 회원 로그인 확인
	public EmployeeVO read(String empId);

	// EMPLOYEE 직원 회원가입 
	public int insertEmp(EmployeeVO employeeVO);
	
	// EMPLOYEE 관리자 회원가입
	public int insertAdmin(EmployeeVO employeeVO);
	
	// EMPLOYEE 아이디 중복체크
	public int checkId(String empId);
	
	// EMPLOYEE 회사 중복체크
	public int checkCoCd(String coCd);
	
	// EMPLOYEE 이메일 중복체크
	public int checkEmail(String empEmail);
	
	// EMPLOYEE 아이디 찾기
	public String findID(EmployeeVO employeeVO);
	
	// EMPLOYEE 임시비밀번호 발급
	public int findPW(EmployeeVO employeeVO);
	
	// EMPLOYEE 이름 찾기
	public String findNm(EmployeeVO employeeVO);

}
