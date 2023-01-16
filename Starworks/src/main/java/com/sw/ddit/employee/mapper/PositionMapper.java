package com.sw.ddit.employee.mapper;

import java.util.List;

import com.sw.ddit.attendance.vo.VacationVO;
import com.sw.ddit.common.vo.CommonVO;
import com.sw.ddit.department.vo.DepartmentVO;
import com.sw.ddit.employee.vo.AuthVO;
import com.sw.ddit.employee.vo.EmployeeVO;

public interface PositionMapper {
	
	// 최초 회원가입자 리스트 불러오기
	public List<EmployeeVO> notPosiList();
	
	// 직급 리스트 가져오기
	public List<CommonVO> positionList();
	
	//부서테이블의 팀을 불러오기 
	public List<DepartmentVO> departmentList();
	
	// 회원가입한 직원에게 직급, 부서 설정하기 
	public int empUpdate(EmployeeVO employeeVO);
	
	// 전체 회원 리스트 불러오기
	public List<EmployeeVO> allList();
	
	// 직급코드 불러오기
	public List<CommonVO> workList();
	
	// 권한코드 불러오기
	public List<CommonVO> authList();
	
	// 회원 삭제 및 회원가입 승인 거절
	public int  empDelete(EmployeeVO employeeVO);
	
	// 회원 정보 상세보기
	public List<EmployeeVO> empDetail(EmployeeVO employeeVO);
	
	// 권한 부여하기
	public int authInsert(AuthVO authVO);
	
	// 직원정보 수정하기
	public int empModify(EmployeeVO empVO);
	
	// 직원 프로필 업로드
	public int uploadProfile(EmployeeVO empVO);
	
	//	 휴가도 조금 주기!!
	public int insertVacation(VacationVO vacVO);
	
	
	
}
