package com.sw.ddit.attendance.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sw.ddit.approval.vo.VacApprovalVO;
import com.sw.ddit.approval.vo.VacUseVO;
import com.sw.ddit.attendance.service.AttendanceService;
import com.sw.ddit.attendance.vo.AttendanceVO;
import com.sw.ddit.calendar.vo.CalendarVO;
import com.sw.ddit.employee.service.PositionService;
import com.sw.ddit.employee.vo.EmployeeVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/attendance")
public class AttendanceController {
	
	@Autowired
	AttendanceService service;
	
	@GetMapping("/attendance")
	public String attendance(Model model, EmployeeVO employeeVO) {
		
		model.addAttribute("title", "근태관리");
		
		return "attendance/attendance";
	}
	
	
	// 출근하기
	@ResponseBody
	@PostMapping("/goWork")
	public int goWork(@RequestBody AttendanceVO attVO) {
		
		List<AttendanceVO> list =  this.service.checkGo(attVO);
		String aff = null;
		
		if(list.size() != 0) {
			aff = list.get(0).getAffDt();		
		}
		
		if(aff==null) {			
			int result = this.service.goWork(attVO);
			return result;
		}else {
			return 0;
		}
		
	}
	
	// 퇴근하기
	@ResponseBody
	@PostMapping("/leaveWork")
	public int leaveWork(@RequestBody AttendanceVO attVO) {

		int result = this.service.leaveWork(attVO);
		log.info("result : " + result);
		return result;
	}
	
	// 출근일 확인하기!!
	@ResponseBody
	@PostMapping("/dutyCheck")
	public List<AttendanceVO> dutyCheck(@RequestBody AttendanceVO attVO){
		List<AttendanceVO> list = this.service.dutyCheck(attVO);
		log.info("list : " + list);
		for(int i =0; i< list.size(); i++) {		
			if(list.get(i).getNonAtt() == null) {
				list.get(i).setNonAtt(" ");		
			}
		}
		return list;
	}

	
	// 연차 알려주기!!
	@ResponseBody
	@PostMapping("/yearCheck")
	public List<EmployeeVO> vacationCheck(@RequestBody EmployeeVO employeeVO){
		List<EmployeeVO> list = this.service.empDetail(employeeVO);
		log.info("list2 : " + list);
		
		return list;
	}
	
	// 하위직원 근태현황 확인하기
	@ResponseBody
	@PostMapping("/empAttend")
	public List<EmployeeVO> empAttend(@RequestBody EmployeeVO employeeVO){
		List<EmployeeVO> empAttend = this.service.empAttend(employeeVO);
	
		log.info("empAttend : " + empAttend);
		
		return empAttend;
	}
	
	// 휴가 확인하기
	@ResponseBody
	@PostMapping("/vacationCheck")
	public List<AttendanceVO> vacationCheck(@RequestBody AttendanceVO attVo){
		//atto : AttendanceVO [regDt=null, affAtt=null, affDt=null, nonAtt=null, workSitCd=null, empCd=null]
		
		List<AttendanceVO> vacationCheck= this.service.vacationCheck(attVo);
			log.info("vacationCheck :" + vacationCheck);
		
		return vacationCheck;
	}
	
	// 연차 사용 개수 확인하기 
	@ResponseBody
	@PostMapping("/useCount")
	public List<VacApprovalVO> useCount(@RequestBody VacApprovalVO vacVO){
		
		List<VacApprovalVO> useCount = this.service.useCount(vacVO);
		log.info("useCount :" + useCount);
		
		return useCount;
	}
	
	
	// 이번주 근무시간 구하기
	@ResponseBody
	@PostMapping("/weekTime")
	public List<AttendanceVO> weekTime(@RequestBody AttendanceVO attendVO) throws ParseException{
		List<AttendanceVO> weekTime = this.service.weekTime(attendVO);
		SimpleDateFormat newDate = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		log.info("asdfasdf : " + weekTime);
		List<AttendanceVO> newTime = new ArrayList<AttendanceVO>();
		AttendanceVO attend = new AttendanceVO();
		long time2 = 0;

		for(int i=0; i<weekTime.size();i++) {
			Date dateAtt = newDate.parse(weekTime.get(i).getAffAtt());
			Date dateNon = newDate.parse(weekTime.get(i).getNonAtt());
			 time2 += dateNon.getTime() - dateAtt.getTime();
		}
		
		// 초
		long weekSeconds = (time2/1000)%60;
		String weekAttSeconds = weekSeconds+"";
		if(weekSeconds< 10) {
			weekAttSeconds = "0"+ weekSeconds;
		}

		// 분
		long weekMin = (time2/(1000*60))%60;
		String weekAttMin = weekMin+ "";
		if(weekMin<10) {
			weekAttMin ="0"+weekMin;
		}
		
		long weekHour = time2/(1000*60*60);
		String weekAttHour = weekHour +"";
		if(weekHour <10) {
			weekAttHour = "0"+weekHour;
		}
		
		log.info("new Time : " + weekAttHour+"h "+weekAttMin+"m "+weekAttSeconds+"s");
		
		attend.setAffAtt(weekAttHour+"h "+weekAttMin+"m "+weekAttSeconds+"s");
		log.info("new Time : " + attend);
		newTime.add(attend);
		return newTime;
	}
	
	// 이번달 근무시간 구하기
	@ResponseBody
	@PostMapping("/monthTime")
	public List<AttendanceVO> monthTime(@RequestBody AttendanceVO attendVO) throws ParseException{
		log.info("attendVO123456 : "+ attendVO);
		List<AttendanceVO> monthTime = this.service.monthTime(attendVO);
		SimpleDateFormat newDate = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		log.info("monthTime : "+ monthTime);
		List<AttendanceVO> newTime = new ArrayList<AttendanceVO>();
		AttendanceVO attend = new AttendanceVO();
		long time2 = 0;
		
		for(int i=0; i<monthTime.size();i++) {
			Date dateAtt = newDate.parse(monthTime.get(i).getAffAtt());
			Date dateNon = newDate.parse(monthTime.get(i).getNonAtt());
			time2 += dateNon.getTime() - dateAtt.getTime();
		}
		long second =(time2/1000)%60;
		String monthAttSeconds = second +"";
		if(second <10) {
			monthAttSeconds = "0"+second;
		}
		
		long monthMin = (time2/(1000*60))%60;
		String monthAttMin = monthMin + "";
		if(monthMin < 10) {
			monthAttMin = "0" + monthMin;
		}
		
		long monthHour = time2/(1000*60*60);
		String monthAttHour =monthHour+"";
		if(monthHour < 10) {
			monthAttHour = "0" + monthHour;
		}
		
		log.info("12345 ::" + monthAttHour+"h "+monthAttMin+"m "+monthAttSeconds+"s");
		
		attend.setAffAtt(monthAttHour+"h "+monthAttMin+"m "+monthAttSeconds+"s");
		newTime.add(attend);
		log.info("monthTime : " + attend);
		return newTime;
	}
	
	
	
	
	
}



			