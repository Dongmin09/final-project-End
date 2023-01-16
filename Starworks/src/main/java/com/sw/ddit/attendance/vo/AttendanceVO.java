package com.sw.ddit.attendance.vo;

import java.util.Date;

public class AttendanceVO {


	private Date regDt;  //scheduleId
	private String affAtt; // 출근시간 / 날자 + 시간
	private String affDt; //출근날짜
	private String nonAtt;// 퇴근시간 /날짜 + 시간
	private String workSitCd; 
	private String empCd; //creatorId
	private int useCnt;
	
	public AttendanceVO() { }

	public Date getRegDt() {
		return regDt;
	}

	public void setRegDt(Date regDt) {
		this.regDt = regDt;
	}

	public String getAffAtt() {
		return affAtt;
	}

	public void setAffAtt(String affAtt) {
		this.affAtt = affAtt;
	}

	public String getAffDt() {
		return affDt;
	}

	public void setAffDt(String affDt) {
		this.affDt = affDt;
	}

	public String getNonAtt() {
		return nonAtt;
	}

	public void setNonAtt(String nonAtt) {
		this.nonAtt = nonAtt;
	}

	public String getWorkSitCd() {
		return workSitCd;
	}

	public void setWorkSitCd(String workSitCd) {
		this.workSitCd = workSitCd;
	}

	public String getEmpCd() {
		return empCd;
	}

	public void setEmpCd(String empCd) {
		this.empCd = empCd;
	}

	public int getUseCnt() {
		return useCnt;
	}

	public void setUseCnt(int useCnt) {
		this.useCnt = useCnt;
	}

	@Override
	public String toString() {
		return "AttendanceVO [regDt=" + regDt + ", affAtt=" + affAtt + ", affDt=" + affDt + ", nonAtt=" + nonAtt
				+ ", workSitCd=" + workSitCd + ", empCd=" + empCd + ", useCnt=" + useCnt + "]";
	}

}
