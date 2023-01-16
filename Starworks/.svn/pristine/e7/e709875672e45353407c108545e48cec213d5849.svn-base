package com.sw.ddit.notice.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sw.ddit.common.vo.AttachFileVO;
import com.sw.ddit.notice.mapper.NoticeMapper;
import com.sw.ddit.notice.service.NoticeService;
import com.sw.ddit.notice.vo.NoticeVO;

// service 객체 생성
@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {

	@Resource(name = "noticeMapper")
	private NoticeMapper noticeMapper;
	
	// 공지사항 게시글 list
	@Override
	public List selectNotiList() {
		return noticeMapper.selectNotiList();
	}

	// 공지사항 게시글 상세보기
	@Transactional
	@Override
	public NoticeVO selectNotiDetail(int notiNo) {
		// 조회수 증가
		// 상세보기를 하면 --> 조회수 +1 증가
		int viewcnt = noticeMapper.updateNotiViewCnt(notiNo);
		
		// 상세보기
		return noticeMapper.selectNotiDetail(notiNo);
	}
	
	// 게시글 insert
	@Override
	public int insertNoti(NoticeVO notiVO) {
		// insert 치고 나서 pk를 다시 돌려받아서 그걸 상세페이지에 던져주는방식
		noticeMapper.insertNoti(notiVO);
		return notiVO.getNotiNo();
	}

	// 게시글 삭제
	@Transactional
	@Override
	public int deleteNoti(NoticeVO notiVO) {
		// 첨부파일 있으면 삭제
		if(StringUtils.isNotEmpty(notiVO.getAtchFileCd())) {
			AttachFileVO atchVO = new AttachFileVO();
			atchVO.setAtchFileCd(notiVO.getAtchFileCd());
			
			int result = noticeMapper.deleteFile(atchVO);
		}
		
		// 마스터 정보 삭제
		return noticeMapper.deleteNoti(notiVO);
	}

	// 게시글 수정
	@Override
	public int updateNoti(NoticeVO notiVO) {
		return noticeMapper.updateNoti(notiVO);
	}
	
	// 게시글 첨부파일 등록
	@Override
	public String insertNotiFile(AttachFileVO fileVO) {
		noticeMapper.insertNotiFile(fileVO);
		return fileVO.getAtchFileCd();
	}
	
	// 게시글 첨부파일 삭제
	@Override
	public int deleteNotiFile(NoticeVO notiVO) {
		return noticeMapper.deleteNotiFile(notiVO);
	}
	
	// 게시글 상세조회 첨부파일 있는지 
	@Override
	public AttachFileVO selectNotiFileDetail(int notiNo) {
		return noticeMapper.selectNotiFileDetail(notiNo);
	}
	
	// 게시글 삭제
	@Override
	public int deleteFile(AttachFileVO acthVO) {
		return noticeMapper.deleteFile(acthVO);
	}

	@Override
	public List mainNotiList() {
		return noticeMapper.mainNotiList();
	}
	
	
}
