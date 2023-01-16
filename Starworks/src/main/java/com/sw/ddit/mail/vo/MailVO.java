package com.sw.ddit.mail.vo;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MailVO {

	private String emlCd;		// 이메일 코드
	private String empCd;		// 직원 코드
	private String emlTit;		// 이메일 제목
	private String emlCon;		// 이메일 내용
	private Date emlDendDt;		// 이메일 전송 일시
	private String emlDendDtToString;
	private String emlSitCd;	// 이메일 상태 코드
	private int emlNo = 0;		// 이메일 번호
	private String locName;
	private String emlDelWh;
	private String emlCallCd;
	private String emlSendYn;
	
	private String emlRefYn;	// 참조자여부
	private String emlRefCd;	// 참조자 배열
	private String emlImpYn;	// 중요여부
	
	// receiver
	private int serNo;			// 일련번호
	private String recNm;		// 수신자 직원 이름
	private String emlReadWh;	// 읽음 여부
	private String empNm;		// 보내는사람 명
	
	private String attchFileCd;
	private String flg;
	
	private String recTot;	// 보낸사람 , 받는사람 직급+부서+이름 전체
	
	
	private String emlReadYn;
}
