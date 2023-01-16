package com.sw.ddit.chart.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.ddit.chart.mapper.ChartMapper;
import com.sw.ddit.chart.service.ChartService;
import com.sw.ddit.department.vo.DepartmentVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ChartServiceImpl implements ChartService{

	@Autowired
	ChartMapper chartMapper;
	
	@Override
	public List<Map<String, Object>> depApprCnt() {
		return this.chartMapper.depApprCnt();
	}
	@Override
	public List<Map<String, Object>> depApprCntLast() {
		return this.chartMapper.depApprCntLast();
	}
	@Override
	public List<Map<String, Object>> meetCnt() {
		return this.chartMapper.meetCnt();
	}
	@Override
	public List<Map<String, Object>> meetCntLast() {
		return this.chartMapper.meetCntLast();
	}
	@Override
	public int signEmpCnt() {
		return this.chartMapper.signEmpCnt();
	}
	@Override
	public int leaveEmpCnt() {
		return this.chartMapper.leaveEmpCnt();
	}
	@Override
	public List<Map<String, Object>> depExpense() {
		return this.chartMapper.depExpense();
	}


	
	
}
