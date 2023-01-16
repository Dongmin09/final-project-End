package com.sw.ddit.approval.vo;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.sw.ddit.employee.vo.EmployeeVO;

import lombok.Data;

//결재 순서
@Data
public class LineSeqVO {

	private int lineTurn; // 결재선 순서 (기본키)
	private String apprNo;  // 결재일련번호(기본키)
	private String apprSitCd; // 결재 상태코드
	private String apprRea; // 반려사유
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date apprDt; // 승인일자
	private String lineYn; // 최종결재여부
	private String empCd; //결재자 코드
	private String apprNm; //결재자 이름
	private String sign;	//결재자 싸인
	
	// ***********************************************
	private List<String> empCode; // 결재자 순서 배열
	private List<String> apprName;// 결재자 순서 이름

	private List<EmployeeVO> empVOList;
	
	//기본 생성자
	public LineSeqVO() {}

	
	
	
	
	
}
