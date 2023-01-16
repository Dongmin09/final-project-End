package com.sw.ddit.common.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.ddit.common.mapper.AlertMapper;
import com.sw.ddit.common.service.AlertService;
import com.sw.ddit.common.vo.AlertVO;

@Service
public class AlertServiceImpl implements AlertService {

	@Autowired
	private AlertMapper alertMapper;
	
	@Override
	public int alertInsert(AlertVO alertVO) {
		return this.alertMapper.alertInsert(alertVO);
	}

	@Override
	public List<AlertVO> alertList(String empCd) {
		return this.alertMapper.alertList(empCd);
	}

	@Override
	public int alertCheck(int alrNo) {
		return this.alertMapper.alertCheck(alrNo);
	}

	@Override
	public int alertCount(String empCd) {
		return this.alertMapper.alertCount(empCd);
	}


}
