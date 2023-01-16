package com.sw.ddit.approval.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.ddit.approval.mapper.DraftMapper;
import com.sw.ddit.approval.service.DraftService;
import com.sw.ddit.approval.vo.DraftVO;

@Service
public class DraftServiceImpl implements DraftService {

	@Autowired
	DraftMapper draftMapper;
	
	@Override
	public DraftVO draft(String empCd) {
		return this.draftMapper.draft(empCd);
	}

}
