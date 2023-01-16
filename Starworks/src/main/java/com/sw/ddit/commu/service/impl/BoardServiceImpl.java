package com.sw.ddit.commu.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.sw.ddit.commu.mapper.BoardMapper;
import com.sw.ddit.commu.service.BoardService;
import com.sw.ddit.commu.vo.ComCmmtVO;
import com.sw.ddit.commu.vo.CommuVO;

// service 객체 생성
@Service("boardService")
public class BoardServiceImpl implements BoardService{
	
	@Resource(name = "boardMapper")
	private BoardMapper boardMapper;
	
	/** 커뮤니티 게시글 list **/
	@Override
	public List selectCommuList() {
		return boardMapper.selectCommuList();
	}
	
	/** 커뮤니티 상세 게시글 **/
	/** @Transactional 로직상 한가지 트랜잭션을 가지면서 , 메서드가 종료될 때 자동으로 롤백
	 *  트랜잭션 상에서 오류가 날 경우 모든 로직이 롤백됨
	 *  ex) 상세보기에서 오류가 날 경우 조회수도 cnt가 되면 안됨 --> 한 트랜잭션 안에서 처리해야됨
	 */
	@Transactional
	@Override
	public CommuVO selectCommuDetail(int comNo) {
		// 조회수 증가 
		// 상세보기를 하면 --> 조회수 +1 증가
		int viewcnt = boardMapper.updateViewCnt(comNo);
		
		// 상세보기 
		return boardMapper.selectCommuDetail(comNo);
	}
	
	/** 추천 or 비추천 **/
	@Override
	public int updateHit(CommuVO commuVO) {
		return boardMapper.updateHit(commuVO);
	}

	@Override
	public CommuVO selectHit(CommuVO commuVO) {
		return boardMapper.selectHit(commuVO);
	}
	
	/** 게시글 insert **/
	@Override
	public int insertCommu(CommuVO commuVO) {
		boardMapper.insertCommu(commuVO);
		return commuVO.getComNo();
	}

	// 게시글 delete
	@Override
	public int deleteCommu(CommuVO commuVO) {
		return boardMapper.deleteCommu(commuVO);
	}
	
	/** 게시글 update **/
	@Override
	public int updateCommu(CommuVO commuVO) {
		return boardMapper.updateCommu(commuVO);
	}

	@Override
	public List selectCommuRep(CommuVO commuVO) {
		return boardMapper.selectCommuRep(commuVO);
	}
	
	@Override
	public int insertCommuRep(ComCmmtVO comCmmtVO) {
		return boardMapper.insertCommuRep(comCmmtVO);
	}

	@Override
	public int updateCommuRep(ComCmmtVO comCmmtVO) {
		return boardMapper.updateCommuRep(comCmmtVO);
	}

	@Override
	public int deleteCommuRep(ComCmmtVO comCmmtVO) {
		return boardMapper.deleteCommuRep(comCmmtVO);
	}

	@Override
	public List mainCommuList() {
		return boardMapper.mainCommuList();
	}
	


}
