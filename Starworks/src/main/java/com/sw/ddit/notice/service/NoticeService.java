package com.sw.ddit.notice.service;

import java.util.List;

import com.sw.ddit.common.vo.AttachFileVO;
import com.sw.ddit.notice.vo.NoticeVO;

public interface NoticeService {

	// 게시판 List 목록 조회
	public List selectNotiList();

	// 게시글 상세정보
	public NoticeVO selectNotiDetail(int notiNo);

	// 게시글 insert
	public int insertNoti(NoticeVO notiVO);

	// 공지사항 delete
	public int deleteNoti(NoticeVO notiVO);

	// 공지사항 수정
	public int updateNoti(NoticeVO notiVO);
	
	// 첨부파일 upload
	public String insertNotiFile(AttachFileVO fileVO);

	// 첨부파일 delete
	public int deleteNotiFile(NoticeVO notiVO);
	
	// 첨부파일 
	public AttachFileVO selectNotiFileDetail(int notiNo);
	
	// 첨부파일 삭제
	public int deleteFile(AttachFileVO acthVO);

	public List mainNotiList();
	

}
