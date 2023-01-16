package com.sw.ddit.mail.mapper;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.sw.ddit.common.vo.AttachFileVO;
import com.sw.ddit.mail.vo.MailReceiverVO;
import com.sw.ddit.mail.vo.MailVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository
public interface MailMapper {
	
	// 메일 리스트
	List<EgovMap> selectMailList(String empCd);

	// 메일 상세보기
	MailVO selectMailDetail(String emlCd);

	// 메일 읽음 표시
	int updateMailRead(MailReceiverVO mrVO);

//	// 메일 휴지통
//	int updateMailTrash(String emlCd);
	
	// 메일 자동완성
	List autoComplete(String empNm);

	List empList(MailVO mailVO);

	// 메일 휴지통
	int updateDel(List<MailReceiverVO> mailReceiverVOList);
	
	// 메일 send
	int insertMail(MailVO mailVO);
	
	// 메일 delete
	int deleteMailFile(MailVO mailVO);
	
	// 메일 첨부파일 key
	String selectMailFileKey();
	
	// 메일 file insert
	int insertMailFile(AttachFileVO fileVO);
	
	// 메일 receiver insert
	int insertMailReceiver(MailReceiverVO mrVO);

	// 메일 휴지통
	List delList(String empCd);

	// 메일 완전 삭제
	int deleteMail(List<MailReceiverVO> mailReceiverVOList);

	// 보낸 메일함
	List sendList(String empCd);

	// 보낸 메일함 삭제
//	int sendDel(List<MailReceiverVO> mailReceiverVOList);

	List selectReceiverList(MailReceiverVO mrVO);

	List selectAtchMailList(MailReceiverVO mrVO);
	
	MailVO selectMailDetailRep(MailReceiverVO mrVO);

	List selectReceiverListRep(MailReceiverVO mrVO);

	List selectRefList(MailReceiverVO mrVO);

	String prmDeleteMail(List<MailReceiverVO> mailReceiverVOList);

	AttachFileVO selectMailFileDetail(MailReceiverVO mrVO);

	int deleteMailFileList(String atchFileCd);

	String selectAtchFileCd(MailReceiverVO mailReceiverVO);

	List mainList(String empCd);

	List mainMailList(String empCd);

}
