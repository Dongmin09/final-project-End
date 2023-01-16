package com.sw.ddit.notice.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sw.ddit.common.vo.AttachFileVO;
import com.sw.ddit.notice.vo.NoticeVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

// mapper객체
@Repository
public interface NoticeMapper {
	
	// 공지사항 게시글 List
	List<EgovMap> selectNotiList();
	
	// 공지사항 게시글 상세보기
	NoticeVO selectNotiDetail(int notiNo);

	// 게시글 조회수 +1
	int updateNotiViewCnt(int notiNo);
	
	// 게시글 insert
	int insertNoti(NoticeVO notiVO);
	
	// 공지사항 게시글 delete
	int deleteNoti(NoticeVO notiVO);

	// 공지사항 수정
	int updateNoti(NoticeVO notiVO);
	
	// 공지사항 첨부파일 
	int insertNotiFile(AttachFileVO fileVO);
	
	// 게시글 삭제
	int deleteNotiFile(NoticeVO notiVO);
	
	// 첨부파일 상세조회
	AttachFileVO selectNotiFileDetail(int notiNo);
	
	// 첨부파일삭제
	int deleteFile(AttachFileVO acthVO);

	List mainNotiList();

}
