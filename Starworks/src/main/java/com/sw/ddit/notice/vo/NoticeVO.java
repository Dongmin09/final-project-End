package com.sw.ddit.notice.vo;

import java.util.Date;

import com.sw.ddit.common.vo.AttachFileVO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString(exclude= {"attachFileVO"})
public class NoticeVO {

	private int notiNo = 0; // 게시글 번호
	private String tit; // 게시글 제목
	private String con; // 게시글 내용
	private String regDt; // 게시글 작성 일자
	private int viewCnt; // 게시글 조회수
	private String empCd; // 직원 코드
	private String empNm; // 직원 이름
	
	private String flg;
	
	// 첨부파일
	private String atchFileCd; // 첨부파일 코드 fk
	
	// 첨부파일 VO
	private AttachFileVO attachFileVO;
	
}
