package com.sw.ddit.common.service;

import java.util.List;

import com.sw.ddit.common.vo.AlertVO;

public interface AlertService {
	public int alertInsert(AlertVO alertVO);
	
	public List<AlertVO> alertList(String empCd);
	
	public int alertCheck(int alrNo);
	
	public int alertCount(String empCd);
}
