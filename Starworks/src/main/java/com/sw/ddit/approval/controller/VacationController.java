package com.sw.ddit.approval.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sw.ddit.approval.service.ApprovalService;
import com.sw.ddit.approval.service.VacationService;
import com.sw.ddit.approval.vo.ApprovalVO;
import com.sw.ddit.approval.vo.LineSeqVO;
import com.sw.ddit.approval.vo.VacApprovalVO;
import com.sw.ddit.approval.vo.VacUseVO;
import com.sw.ddit.attendance.vo.VacationVO;
import com.sw.ddit.employee.vo.EmployeeVO;
import com.sw.ddit.tree.service.TreeService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/vacation")
@Controller
public class VacationController {

	@Autowired
	ApprovalService approvalService;
	@Autowired
	TreeService treeService;
	@Autowired
	VacationService vacationService;

	
	// 연차신청서
	@GetMapping("/vacationform2")
	public String vacationform(Model model) {
		
		return "approval/aform/vacationform";
	}
	// 연차신청서
	@GetMapping("/vacationform")
	public String vacationform(Model model, EmployeeVO empVO) {
		List<EmployeeVO> empInfo = this.treeService.empInfo(empVO);
		model.addAttribute("empInfo", empInfo);
		log.info("empInfo : " + empInfo);
		return "approval/aform/vacationform";
	}
	
	// 연차신청서
	@GetMapping("/vacationFormDetail")
	public String vacationFormDetail(Model model, ApprovalVO apprVO, LineSeqVO lineVO) {
		List<ApprovalVO> vacList = this.vacationService.vacList(apprVO);
		String[] formCon = vacList.get(0).getFormCon().split(",");
		List<LineSeqVO> lineList = this.vacationService.lineList(lineVO);
		log.info("dfs : " + vacList);
		log.info("dfs : " + lineList);

		String type = formCon[0];
		String sdate = formCon[1];
		String edate = formCon[2];
		String reason = formCon[3];
		
		model.addAttribute("type", type); // 연차유형
		model.addAttribute("sdate", sdate); // 연차기간 시작
		model.addAttribute("edate", edate); // 연차기간 끝
		model.addAttribute("reason", reason); // 사유
		
		model.addAttribute("lineList", lineList); // 결재라인 모든 List
		model.addAttribute("line1", lineList.get(0)); // 결재라인 1번
		model.addAttribute("line2", lineList.get(1));  // 결재라인 2번
		model.addAttribute("line3", lineList.get(2)); // 결재라인 3번
		
		model.addAttribute("vacList", vacList); // 상신자 정보
		return "approval/aform/vacationFormDetail";
	}
	

	
	// 휴가신청 상신하기
	@ResponseBody
	@PostMapping("/vacationInsert2")
	public int vacationInsert2(@RequestBody VacApprovalVO appVO) {
		UUID uuid = UUID.randomUUID();
		String apprNo = uuid.toString().substring(0,8);
		appVO.setApprNo(apprNo);
		appVO.setApprTit("연차사용신청서");
	
		int result = this.vacationService.vacationInsert2(appVO);
		
		return result;
	}
	// 결재라인 보기!!
	@ResponseBody
	@PostMapping("/lineList")
	public List<LineSeqVO>  lineList(@RequestBody LineSeqVO lineVO) {
		List<LineSeqVO> lineList = this.vacationService.lineList(lineVO);
		
		return lineList;
	}

	// 결재하기
	@ResponseBody
	@PostMapping("/apprFinish")
	public int  apprFinish(@RequestBody LineSeqVO lineVO) {
		int apprFinish = this.vacationService.apprFinish(lineVO);
		log.info("update : " + apprFinish);
		
		return apprFinish;
	}
	// 결재가 승인되었을때 approval 테이블에도 상태 변경해주기
	@ResponseBody
	@PostMapping("/reporterFinish")
	public int  reporterFinish(@RequestBody VacApprovalVO apprVO) {
		int reporterFinish = this.vacationService.reporterFinish(apprVO);
		log.info("update : " + reporterFinish);
		
		return reporterFinish;
	}
	// 결재가 승인되었을때 vac_use테이블에도 연차 사용내역 등록해주기
	@ResponseBody
	@PostMapping("/vacationUse")
	public int vacationUse(@RequestBody VacUseVO vacUseVO) {
		log.info("vacUseVO : " + vacUseVO);
		int vacationUse = this.vacationService.vacationUse(vacUseVO);
		log.info("vacationUse : " + vacationUse);
		return vacationUse;
	}
	
	// 결재가 승인되면 나의 연차 횟수도 차감
	@ResponseBody
	@PostMapping("/minusVacation")
		public int minusVacation(@RequestBody VacationVO vacationVO) {
		int minusVacation = this.vacationService.minusVacation(vacationVO);
		log.info("vacationUse : " + minusVacation);
		return minusVacation;
	}
	
	
}
