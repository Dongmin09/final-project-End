package com.sw.ddit.reference.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.ddit.department.vo.DepartmentVO;
import com.sw.ddit.meet.vo.MeetBookVO;
import com.sw.ddit.reference.mapper.ReferenceMapper;
import com.sw.ddit.reference.service.ReferenceService;
import com.sw.ddit.reference.vo.PagingVO;
import com.sw.ddit.reference.vo.TotalRefeVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ReferenceServiceImpl implements ReferenceService{

	@Autowired
	ReferenceMapper referenceMapper;
	
	@Override
	public List<TotalRefeVO> list(){
		return this.referenceMapper.list();
	}

	@Override
	public int uploadAjaxAction(List<TotalRefeVO> totalRefeVOList) {
		log.info("totalRefeVOList:"+totalRefeVOList.size());
		return this.referenceMapper.uploadAjaxAction(totalRefeVOList);
	}
	
	@Override
	public int deletePost(String refeCd) {
		return this.referenceMapper.deletePost(refeCd);
	}
	
	@Override
	public TotalRefeVO detail(TotalRefeVO totalRefeVO) {
		return this.referenceMapper.detail(totalRefeVO);
	}
	
	@Override
	public List<TotalRefeVO> search(TotalRefeVO totalRefeVO){
		return this.referenceMapper.search(totalRefeVO);
	}

	@Override
	public int updateViewCnt(String refeCd) {
		return  this.referenceMapper.updateViewCnt(refeCd);
	}
	
	@Override
	//다운로드 목록
	public List<TotalRefeVO> downlist(String refeCd){
		return this.referenceMapper.downlist(refeCd);
	}
	
}
