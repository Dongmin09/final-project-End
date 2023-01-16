package com.sw.ddit.approval.vo;

import java.util.Date;
import java.util.List;

import javax.ejb.Timeout;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import com.sw.ddit.employee.vo.EmployeeVO;

import lombok.Data;

//전자결재문서
@Data
public class ApprovalVO {

	private String apprNo; // 결제일련번호
	private String apprTit; // 결재 제목
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date regDt;  // 등록일자
	private String formCon;// 문서양식 내용
	private String empCd;   // 직원코드
	private int formNo;    // 문서양식번호
	private String writer; // 작성자
	private String signer; // 결재자
	private int count; // 리스트 개수
	private int lineTurn;
	
	private String apprSitCd; // 결재 상태코드 초기상태
	private String empNm;
	private String depCd;
	private String depNm; // 부서명
	
	// 결재라인
	private String[]  line; // 결재자 코드
	private String[]  lineName; // 결재자 이름
	private String[]  sign; // 작성자 사인
	
	private String line0;//상신자
	private String line1;//첫번째결재자
	private String line2;//두번째결재자
	private String line3;//세번째결재자
	
	private String Sign0; // 작성자 사인
	private String Sign1; // 첫번째결재자 사인
	private String Sign2; // 두번째결재자 사인
	private String Sign3; // 세번째결재자 사인
	
	private String apprSitCd0;
	private String apprSitCd1;
	private String apprSitCd2;
	private String apprSitCd3;
	
	private String[] empCode;
	
	private String[] lineName0;//상신자 명
	private String[] lineName1;//첫번째결재자 명
	private String[] lineName2;//두번째결재자 명
	private String[] lineName3;//세번째결재자 명
	
	private String[] payDt;
	private String[] paycon;
	private String[] amount;
	private String[] account;
	private String[] cash;
	
	private MultipartFile[] fileData;
	
	
	//APPROVAL : LINE_SEQ = 1 : N
	private List<LineSeqVO> lineSeqVOList;
	
	private List<ApprovalVO> reportList;
	
	
	private List<EmployeeVO> empVOList;
}
