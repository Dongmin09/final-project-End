package com.sw.ddit.common.vo;

public class CommonVO {

	private String commCd;
	private String grpCd;
	private String commCdNm;
	private String commCdExp;
	private String commCdYn;

	public CommonVO() { }

	public String getCommCd() {
		return commCd;
	}

	public void setCommCd(String commCd) {
		this.commCd = commCd;
	}

	public String getGrpCd() {
		return grpCd;
	}

	public void setGrpCd(String grpCd) {
		this.grpCd = grpCd;
	}

	public String getCommCdNm() {
		return commCdNm;
	}

	public void setCommCdNm(String commCdNm) {
		this.commCdNm = commCdNm;
	}

	public String getCommCdExp() {
		return commCdExp;
	}

	public void setCommCdExp(String commCdExp) {
		this.commCdExp = commCdExp;
	}

	public String getCommCdYn() {
		return commCdYn;
	}

	public void setCommCdYn(String commCdYn) {
		this.commCdYn = commCdYn;
	}

	@Override
	public String toString() {
		return "CommonVO [commCd=" + commCd + ", grpCd=" + grpCd + ", commCdNm=" + commCdNm + ", commCdExp=" + commCdExp
				+ ", commCdYn=" + commCdYn + "]";
	}
	
}
