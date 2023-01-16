package com.sw.ddit.common.vo;

import java.util.Date;

import lombok.Data;

@Data
public class AlertVO {
	private int alrNo;
	private String alrSitCd;
	private Date alrDt;
	private String alrCon;
	private String alrParam;
	private String empCd;
	private String fromNm;
	private String alrTit;
	private String alrType;
}
