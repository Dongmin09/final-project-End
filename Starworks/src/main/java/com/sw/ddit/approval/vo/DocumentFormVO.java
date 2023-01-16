package com.sw.ddit.approval.vo;


// 문서양식
public class DocumentFormVO {
	
	private int formNo; // 문서양식번호
	private String formNm; // 문서명
	private String formCon; // 문서양식내용
	
	// 기본생성자
	public DocumentFormVO() {	}

	public int getFormNo() {
		return formNo;
	}

	public void setFormNo(int formNo) {
		this.formNo = formNo;
	}

	public String getFormNm() {
		return formNm;
	}

	public void setFormNm(String formNm) {
		this.formNm = formNm;
	}

	public String getFormCon() {
		return formCon;
	}

	public void setFormCon(String formCon) {
		this.formCon = formCon;
	}

	@Override
	public String toString() {
		return "DocumentFormVO [formNo=" + formNo + ", formNm=" + formNm + ", formCon=" + formCon + "]";
	}
	
	
	
}
