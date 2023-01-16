package com.sw.ddit.commu.service;

import java.util.List;

import com.sw.ddit.commu.vo.ComCmmtVO;
import com.sw.ddit.commu.vo.CommuVO;


public interface BoardService {
	
	// 게시판 List 목록 조회
	public List selectCommuList();

	// 게시글 상세정보
	public CommuVO selectCommuDetail(int comNo);
	
	// 추천 or 비추천 update
	public int updateHit(CommuVO commuVO);
	
	// 추천 or 비추천 list
	public CommuVO selectHit(CommuVO commuVO);
	
	// 게시글 insert
	public int insertCommu(CommuVO commuVO);

	// 게시글 delete
	public int deleteCommu(CommuVO commuVO);
	
	// 게시글 update
	public int updateCommu(CommuVO commuVO);
	
	// 게시글 댓글 list
	public List selectCommuRep(CommuVO commuVO);
	
	// 게시글 댓글 insert
	public int insertCommuRep(ComCmmtVO comCmmtVO);
	
	// 게시글 댓글 update
	public int updateCommuRep(ComCmmtVO comCmmtVO);
	
	// 게시글 댓글 delete
	public int deleteCommuRep(ComCmmtVO comCmmtVO);

	public List mainCommuList();
	
}
