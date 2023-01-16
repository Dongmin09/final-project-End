package com.sw.ddit.commu.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sw.ddit.commu.vo.ComCmmtVO;
import com.sw.ddit.commu.vo.CommuVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

// mapper 객체 
@Repository
public interface BoardMapper {

	// 게시글 list 
	List<EgovMap> selectCommuList();
	
	// 게시글 상세보기 
	CommuVO selectCommuDetail(int comNo);
	
	// 게시글 조회수 +1
	int updateViewCnt(int comNo);
	
	// 추천 or 비추천 update
	int updateHit(CommuVO commuVO);

	// 추천 or 비추천 list
	CommuVO selectHit(CommuVO commuVO);
	
	// 게시글 insert
	int insertCommu(CommuVO commuVO);
	
	// 게시글 delete
	int deleteCommu(CommuVO commuVO);
	
	// 게시글 update
	int updateCommu(CommuVO commuVO);
	
	// 게시글 댓글 list 
	List selectCommuRep(CommuVO commuVO);
	
	// 게시글 댓글 insert
	int insertCommuRep(ComCmmtVO comCmmtVO);
	
	// 게시글 댓글 udpate
	int updateCommuRep(ComCmmtVO comCmmtVO);
	
	// 게시글댓글 delete
	int deleteCommuRep(ComCmmtVO comCmmtVO);

	List mainCommuList();
	
}
