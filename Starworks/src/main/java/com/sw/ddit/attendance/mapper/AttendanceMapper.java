package com.sw.ddit.attendance.mapper;

import java.util.List;

import com.sw.ddit.approval.vo.VacApprovalVO;
import com.sw.ddit.approval.vo.VacUseVO;
import com.sw.ddit.attendance.vo.AttendanceVO;
import com.sw.ddit.employee.vo.EmployeeVO;

public interface AttendanceMapper {
	
	// 회원 정보 상세보기
	public List<EmployeeVO> empDetail(EmployeeVO employeeVO);
	
	// 출근하기
	public int goWork(AttendanceVO attVo);
	
	// 출근 확인
	public List<AttendanceVO> checkGo(AttendanceVO attVo);
	
	// 퇴근하기
	public int leaveWork(AttendanceVO attVO);
	
	// 출근일 확인하기
	public List<AttendanceVO> dutyCheck(AttendanceVO attVO);
	
	// 하위 직원근태 확인하기 empAttend
	public List<EmployeeVO> empAttend(EmployeeVO employeeVO);
	
	// 휴가 확인하기
	public List<AttendanceVO> vacationCheck(AttendanceVO attVo);
	
	// 연차 사용일 수 구하기 
	public List<VacApprovalVO> useCount(VacApprovalVO vacVO);
	
	// 이번주 근무시간 구하기
	public List<AttendanceVO> weekTime(AttendanceVO attendVO);

	// 이번달 근무시간 구하기
	public List<AttendanceVO> monthTime(AttendanceVO attendVO);
	
	
}
