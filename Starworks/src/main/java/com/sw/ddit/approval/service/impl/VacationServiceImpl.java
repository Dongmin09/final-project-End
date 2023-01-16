package com.sw.ddit.approval.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sw.ddit.approval.mapper.VacationMapper;
import com.sw.ddit.approval.service.VacationService;
import com.sw.ddit.approval.vo.ApprovalVO;
import com.sw.ddit.approval.vo.LineSeqVO;
import com.sw.ddit.approval.vo.VacApprovalVO;
import com.sw.ddit.approval.vo.VacUseVO;
import com.sw.ddit.attendance.vo.VacationVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class VacationServiceImpl implements VacationService{

	@Autowired
	VacationMapper vacationMapper;
	
	// 휴가신청 상신하기
	@Override
	public int vacationInsert(VacApprovalVO appVO) {
		return this.vacationMapper.vacationInsert(appVO);
	}
	
	@Transactional
	@Override
	public int vacationInsert2(VacApprovalVO appVO) {
		log.info("appvo : " + appVO)
		;
		//1) APPROVAL 테이블로 insert
		int vacationInsert = this.vacationMapper.vacationInsert(appVO);
		
		List<VacApprovalVO> list = new ArrayList<VacApprovalVO>();
		String[] formCon = appVO.getFormCon().split(",");
		if(formCon.length < 4) {
			return 0;
		}
		
		String [] empCode = appVO.getEmpCode().split(",");
		log.info("empCode : "+empCode.length);
		int seq = 1;
		
		List<LineSeqVO> lineSeqVOList = new ArrayList<LineSeqVO>();
		LineSeqVO lineSeqVO = new LineSeqVO();
		
		for(int i=0; i<empCode.length;i++) {
			lineSeqVO = new LineSeqVO();
			
			lineSeqVO.setLineTurn(seq++);
			lineSeqVO.setApprNo(appVO.getApprNo());
			lineSeqVO.setEmpCd(empCode[i]);
			if(i==0) {
				lineSeqVO.setApprSitCd("A01");
			}else {
				lineSeqVO.setApprSitCd("A00");				
			}
			
			lineSeqVOList.add(lineSeqVO);
		}
		log.info("lineSeqVOList : " + lineSeqVOList);
		//2) LINE_SEQ 테이블에 insert
		int vacationInsert2 = this.vacationMapper.vacationInsert2(lineSeqVOList);
		
		return vacationInsert + vacationInsert2;
	}
	
	// 상신한 결재문서 불어오기!!
	@Override
	public List<ApprovalVO> vacList(ApprovalVO apprVO){
		return this.vacationMapper.vacList(apprVO);
	}
	// 결재라인 불러오기
	@Override
	public List<LineSeqVO> lineList(LineSeqVO lineVO){
		return this.vacationMapper.lineList(lineVO);
	}
	
	// 결재 하기
	@Override
	public int apprFinish(LineSeqVO lineVO) {
		return this.vacationMapper.apprFinish(lineVO);
	}
	// 상신자 상태 변경
	@Override
	public int reporterFinish(VacApprovalVO apprVO) {
		return this.vacationMapper.reporterFinish(apprVO);
	}
	
	// 결재 승인되면 사용내역에 등록 
	@Override
	public int vacationUse(VacUseVO vacUseVO) {
		return this.vacationMapper.vacationUse(vacUseVO);
	}
	
	// 결재가 승인되면 나의 연차 횟수도 차감
	@Override
	public int minusVacation(VacationVO vacationVO) {
		return this.vacationMapper.minusVacation(vacationVO);
	}
	
}
