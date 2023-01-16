package com.sw.ddit.mail.service;

import java.util.List;

import com.sw.ddit.common.vo.AttachFileVO;
import com.sw.ddit.mail.vo.MailReceiverVO;
import com.sw.ddit.mail.vo.MailVO;

public interface MailService {

	// 메일 리스트
	public List selectMailList(String empCd);

	// 메일 상세정보
	public MailVO selectMailDetail(MailReceiverVO mrVO);
	
	// 메일 받는사람 autoCompelete
	public List autoComplete(String empNm);
	
	// 메일 받는사람 multi selectbox
	public List empList(MailVO mailVO);

	// 메일 휴지통
	public String updateDel(List<MailReceiverVO> mailReceiverVOList);
	
	// 메일 insert
	public int insertMail(MailVO mailVO);
	
	// 매일 첨부파일 delete
	public int deleteMailFile(MailVO mailVO);
	
	// 메일 pk 
	public String selectMailFileKey();
	
	// 파일 insert
	public int insertMailFile(AttachFileVO fileVO);

	// 메일 휴지통
	public List delList(String empCd);

	// 메일 완전 삭제
	public int deleteMail(List<MailReceiverVO> mailReceiverVOList);

	// 보낸 메일함
	public List sendList(String empCd);

	// 보낸 메일함 삭제
//	public String sendDel(List<MailReceiverVO> mailReceiverVOList);
	
	// 메일 상세 받은사람 리스트
	public List selectReceiverList(MailReceiverVO mrVO);
	
	// 메일 상세 첨부파일 리스트 
	public List selectAtchMailList(MailReceiverVO mrVO);
	
	// 메일 전달 or 답장
	public MailVO selectMailDetailRep(MailReceiverVO mrVO);

	public List selectReceiverListRep(MailReceiverVO mrVO);

	public List selectRefList(MailReceiverVO mrVO);

	public String prmDeleteMail(List<MailReceiverVO> mailReceiverVOList);

	public AttachFileVO selectMailFileDetail(MailReceiverVO mrVO);

	public List mainList(String empCd);

	public List mainMailList(String empCd);

}
