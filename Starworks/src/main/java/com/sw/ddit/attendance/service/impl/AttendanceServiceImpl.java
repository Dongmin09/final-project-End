package com.sw.ddit.attendance.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.ddit.approval.vo.VacApprovalVO;
import com.sw.ddit.approval.vo.VacUseVO;
import com.sw.ddit.attendance.mapper.AttendanceMapper;
import com.sw.ddit.attendance.service.AttendanceService;
import com.sw.ddit.attendance.vo.AttendanceVO;
import com.sw.ddit.employee.vo.EmployeeVO;

@Service
public class AttendanceServiceImpl implements AttendanceService {

	@Autowired
	AttendanceMapper attMapper;
	
	// 회원 정보 상세보기
	@Override
	public List<EmployeeVO> empDetail(EmployeeVO employeeVO){
		return this.attMapper.empDetail(employeeVO);
	}
	
	// 출근하기
	@Override
	public int goWork(AttendanceVO attVo) {
		return this.attMapper.goWork(attVo);
	}
	
	// 출근 확인
	@Override
	public List<AttendanceVO> checkGo(AttendanceVO attVo){
		return this.attMapper.checkGo(attVo);
	}
	
	// 출근일 확인하기
	@Override
	public List<AttendanceVO> dutyCheck(AttendanceVO attVO){
		return this.attMapper.dutyCheck(attVO);
	}
	
	// 퇴근하기
	@Override
	public int leaveWork(AttendanceVO attVO) {
		return this.attMapper.leaveWork(attVO);
	}
	
	// 하위 직원근태 확인하기 empAttend
	@Override
	public List<EmployeeVO> empAttend(EmployeeVO employeeVO){
		return this.attMapper.empAttend(employeeVO);
	}
	
	// 휴가 확인하기
	@Override
	public List<AttendanceVO> vacationCheck(AttendanceVO attVo){
		return this.attMapper.vacationCheck(attVo);
	}
	
	// 연차 사용일 수 구하기 
	public List<VacApprovalVO> useCount(VacApprovalVO vacVO) {
		return this.attMapper.useCount(vacVO);
	}
	
	// 이번주 근무시간 구하기
	@Override
	public List<AttendanceVO> weekTime(AttendanceVO attendVO){
		return this.attMapper.weekTime(attendVO);
	}

	// 이번달 근무시간 구하기
	@Override
	public List<AttendanceVO> monthTime(AttendanceVO attendVO){
		return this.attMapper.monthTime(attendVO);
	}
	
}
