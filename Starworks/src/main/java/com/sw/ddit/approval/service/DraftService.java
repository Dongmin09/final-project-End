package com.sw.ddit.approval.service;

import com.sw.ddit.approval.vo.DraftVO;

public interface DraftService {
	// 작성자 정보 불러오기
	public DraftVO draft(String empCd);
}
