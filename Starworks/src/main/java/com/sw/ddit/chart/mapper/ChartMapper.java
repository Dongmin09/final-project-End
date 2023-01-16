package com.sw.ddit.chart.mapper;

import java.util.List;
import java.util.Map;


import com.sw.ddit.department.vo.DepartmentVO;


public interface ChartMapper {

	//부서별 결재차트 금년 결재량
	public List<Map<String, Object>> depApprCnt();
	//부서별 결재차트 작년 결재량
	public List<Map<String, Object>> depApprCntLast();
	//회의실 금년 예약 수
	public List<Map<String, Object>> meetCnt();
	//회의실 작년 예약 수
	public List<Map<String, Object>> meetCntLast();
	//금년 입사자 수
	public int signEmpCnt();
	//금년 퇴사자 수
	public int leaveEmpCnt();
	//부서별 지출결의서 결제금액
	public List<Map<String, Object>> depExpense();
	
}
