package com.sw.ddit.mention.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sw.ddit.mention.mapper.MentionMapper;
import com.sw.ddit.mention.service.MentionService;
import com.sw.ddit.mention.vo.MentionVO;

@Service
public class MentionServiceImpl implements MentionService {
	@Inject
	MentionMapper mentionMapper;
	
	@Override
	public List<MentionVO> mentionList() {
		return this.mentionMapper.mentionList();
	}
	
}
