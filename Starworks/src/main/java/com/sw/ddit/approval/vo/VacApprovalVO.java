package com.sw.ddit.approval.vo;

import java.util.Date;
import java.util.List;

import javax.ejb.Timeout;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

//전자결재문서
@Data
public class VacApprovalVO {

	private String apprNo; // 결제일련번호
	private String apprTit; // 결재 제목
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date regDt;  // 등록일자
	private String formCon;// 문서양식 내용
	private String empCd;   // 직원코드
	private int formNo;    // 문서양식번호
	private String writer; // 작성자
	private String signer; // 결재자
	private String count; // 리스트 개수
	
	private String apprSitCd; // 결재 상태코드 초기상태
	private String empNm;
	private String depCd;
	private String depNm; // 부서명
	
	
	private String empCode;
	
	//APPROVAL : LINE_SEQ = 1 : N
	private List<LineSeqVO> lineSeqVOList;
	
	private List<VacApprovalVO> reportList;
	
	private List<VacUseVO> vacUseVOList;
	
}
