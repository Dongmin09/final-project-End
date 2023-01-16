package com.sw.ddit.approval.mapper;

import com.sw.ddit.approval.vo.DraftVO;

public interface DraftMapper {
	// 작성자 정보 불러오기
	public DraftVO draft(String empCd);
}
