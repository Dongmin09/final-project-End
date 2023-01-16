package com.sw.ddit.approval.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.ddit.approval.mapper.ApprovalMapper;
import com.sw.ddit.approval.service.ApprovalService;
import com.sw.ddit.approval.vo.ApprovalVO;
import com.sw.ddit.approval.vo.LineSeqVO;
import com.sw.ddit.common.vo.AttachFileVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ApprovalServiceImpl implements ApprovalService{
	
	@Autowired
	ApprovalMapper approvalMapper;	

	@Override
	public List<ApprovalVO> selectList(String empCd) {
		return this.approvalMapper.selectList(empCd);
	}

	// 결재 상신함 
	@Override
	public List<ApprovalVO> reportList(String empCd) {
		return this.approvalMapper.reportList(empCd);
	}

	//지출결의서 만들기
	@Override
	public int payformInsert(ApprovalVO apprVO) {
		return this.approvalMapper.payformInsert(apprVO);
	}

	//다중 파일업로드 처리
	@Override
	public int uploadAction(List<AttachFileVO> attachFileVOList) {
		return this.approvalMapper.uploadAction(attachFileVOList);
	}

	// 결재라인 inset
	@Override
	public int apprLinsInset(List<LineSeqVO> lineSeqVOList) {
		return this.approvalMapper.apprLinsInset(lineSeqVOList);
	}
	
	// 결재 상세 화면
	@Override
	public ApprovalVO payformDetail(String apprNo) {
		return this.approvalMapper.payformDetail(apprNo);
	}

	@Override
	public String sign(String empCd) {
		return this.approvalMapper.sign(empCd);
	}

	@Override
	public List<String> lineSign(String apprNo) {
		return this.approvalMapper.lineSign(apprNo);
	}

	@Override
	public int updateSign(HashMap<String, String> signMap) {
		return this.approvalMapper.updateSign(signMap);
	}

	@Override
	public int updateSign2(String apprNo) {
		return this.approvalMapper.updateSign2(apprNo);
	}

	@Override
	public int apprEnd(String empNm) {
		return this.approvalMapper.apprEnd(empNm);
	}

	@Override
	public List<ApprovalVO> selectAllList(String empCd) {
		return this.approvalMapper.selectAllList(empCd);
	}

	@Override
	public int apprReturn(ApprovalVO apprvalVO) {
		return this.approvalMapper.apprReturn(apprvalVO);
	}

	@Override
	public int ReturnLine(LineSeqVO lineSeqVO) {
		return this.approvalMapper.ReturnLine(lineSeqVO);
	}

	
	// 반려된결재 내역&사유 보기
	@Override
	public List<ApprovalVO> returnAppr(ApprovalVO apprvalVO){
		return this.approvalMapper.returnAppr(apprvalVO);
	}

	//apprNo 생성
	@Override
	public String getApprNo() {
		return this.approvalMapper.getApprNo();
	}
	
	// 요청결재 개수
	@Override
	public int getReceive(String empCd) {
		
		return this.approvalMapper.getReceive(empCd);
	}
	

	// 결재내역 개수 수신
	@Override
	public int getReceiveCmp(String empCd) {
		return this.approvalMapper.getReceiveCmp(empCd);
	}
	
	// 진행결재 상신
	@Override
	public int getReport(String empCd) {
		return this.approvalMapper.getReport(empCd);
	}
	
	// 완료결재 상신
	@Override
	public int getReportCmp(String empCd) {
		return this.approvalMapper.getReportCmp(empCd);
	}

	
	// 반려결재 상신
	@Override
	public int getReportRet(String empCd) {
		return this.approvalMapper.getReportRet(empCd);
	}

	
}
