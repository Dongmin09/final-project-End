package com.sw.ddit.approval.mapper;

import java.util.List;

import com.sw.ddit.approval.vo.ApprovalVO;
import com.sw.ddit.approval.vo.LineSeqVO;
import com.sw.ddit.approval.vo.VacApprovalVO;
import com.sw.ddit.approval.vo.VacUseVO;
import com.sw.ddit.attendance.vo.VacationVO;

public interface VacationMapper {

	// 휴가신청 상신하기
	public int vacationInsert(VacApprovalVO appVO);
	public int vacationInsert2(List<LineSeqVO> lineSeqVOList);
	
	// 상신한 결재문서 불어오기!!
	public List<ApprovalVO> vacList(ApprovalVO apprVO);
	// 결재라인 불러오기
	public List<LineSeqVO> lineList(LineSeqVO lineVO);
	
	// 결재 하기
	public int apprFinish(LineSeqVO lineVO);
	// 상신자 상태 변경
	public int reporterFinish(VacApprovalVO apprVO);
	
	// 결재 승인되면 사용내역에 등록 
	public int vacationUse(VacUseVO vacUseVO);
	
	// 결재가 승인되면 나의 연차 횟수도 차감
	public int minusVacation(VacationVO vacationVO);
}
