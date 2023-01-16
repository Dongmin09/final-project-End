package com.sw.ddit.reference.service;

import java.util.List;
import java.util.Map;

import com.sw.ddit.department.vo.DepartmentVO;
import com.sw.ddit.meet.vo.MeetBookVO;
import com.sw.ddit.reference.vo.TotalRefeVO;


public interface ReferenceService {
	
	//목록
	public List<TotalRefeVO> list();
	
	//등록
	public int uploadAjaxAction(List<TotalRefeVO> totalRefeVOList);

	//삭제
	public int deletePost(String refeCd);
	
	//상세
	public TotalRefeVO detail(TotalRefeVO totalRefeVO);
	
	//검색
	public List<TotalRefeVO> search(TotalRefeVO totalRefeVO);
	
	//조회수
	public int updateViewCnt(String refeCd);
	//다운로드 목록
	public List<TotalRefeVO> downlist(String refeCd);

}
