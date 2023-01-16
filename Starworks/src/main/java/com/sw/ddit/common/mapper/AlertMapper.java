package com.sw.ddit.common.mapper;

import java.util.List;

import com.sw.ddit.common.vo.AlertVO;

public interface AlertMapper {
	// 알림 등록
	public int alertInsert(AlertVO alertVO);
	
	// 알림 리스트
	public List<AlertVO> alertList(String empCd);
	
	// 알림 확인
	public int alertCheck(int alrNo);
	
	// 카운트
	public int alertCount(String empCd);
}
