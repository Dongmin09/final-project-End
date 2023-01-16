package com.sw.ddit.approval.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sw.ddit.approval.vo.ApprovalVO;
import com.sw.ddit.approval.vo.LineSeqVO;
import com.sw.ddit.common.vo.AttachFileVO;

public interface ApprovalService {
	
	// 결재 조건 목록 불러오기 1:N 대기요청만..
	public List<ApprovalVO> selectList(String empCd);
	
	// 결재 상신함 목록
	public List<ApprovalVO> reportList(String empCd);
	
	//지출결의서 만들기
	public int payformInsert(ApprovalVO apprVO);

	//다중 파일업로드 처리
	public int uploadAction(List<AttachFileVO> attachFileVOList);

	
	// 결재 라인 처리
	public int apprLinsInset(List<LineSeqVO> lineSeqVOList);

	// 결재 디테일
	public ApprovalVO payformDetail(String apprNo);
	
	// 사인 불러오기
	public String sign(String empCd);
	
	// 라인 사인 불러오기
	public List<String> lineSign(String apprNo);
	
	// 승인 사인 추가
	public int updateSign(HashMap<String, String> signMap);
	
	// 순서 진행 시키기
	public int updateSign2(String apprNo);
	
	// 결재완료
	public int apprEnd(String empNm);
	/*
	 * // 나만의 방식 public int payformInsert2(Map<String, Object> apprVO);
	 */
	
	// 결재 수신 모든목록 가져오기
	public List<ApprovalVO> selectAllList(String empCd);
	
	
	//반려하기 결재테이블
	public int apprReturn(ApprovalVO apprvalVO); 
	
	//반려하기 결재 라인 테이블
	public int ReturnLine(LineSeqVO lineSeqVO);
	
	// 반려된결재 내역&사유 보기
	public List<ApprovalVO> returnAppr(ApprovalVO apprvalVO);

	//apprNo 생성
	public String getApprNo();
	
	// 요청결재 수신 개수
	public int getReceive(String empCd);
	
	// 결재내역 개수 수신
	public int getReceiveCmp(String empCd);
	
	// 진행결재 상신 개수
	public int getReport(String empCd);
	
	// 완료결재 상신 상신 개수
	public int getReportCmp(String empCd);
	
	// 반려결재 상신 상신 개수
	public int getReportRet(String empCd);
	
}
