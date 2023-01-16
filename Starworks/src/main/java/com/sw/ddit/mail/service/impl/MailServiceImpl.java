package com.sw.ddit.mail.service.impl;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sw.ddit.common.vo.AttachFileVO;
import com.sw.ddit.mail.mapper.MailMapper;
import com.sw.ddit.mail.service.MailService;
import com.sw.ddit.mail.vo.MailReceiverVO;
import com.sw.ddit.mail.vo.MailVO;

@Service("mailService")
public class MailServiceImpl implements MailService{

	@Resource(name = "mailMapper")
	private MailMapper mailMapper;
	
	// 메일 리스트
	@Override
	public List selectMailList(String empCd) {
		
		// int mailTrash = mailMapper.updateMailTrash(emlCd);
		
		return mailMapper.selectMailList(empCd);
	}

	// 메일 상세정보
	@Override
	public MailVO selectMailDetail(MailReceiverVO mrVO) {
		
		int mailRead = mailMapper.updateMailRead(mrVO);
		
		return mailMapper.selectMailDetail(mrVO.getEmlCd());
	}

	@Override
	public List autoComplete(String empNm) {
		
		return mailMapper.autoComplete(empNm);
	}

	@Override
	public List empList(MailVO mailVO) {
		return mailMapper.empList(mailVO);
	}

	// 메일 휴지통
	@Override
	public String updateDel(List<MailReceiverVO> mailReceiverVOList) {
		int cnt = mailMapper.updateDel(mailReceiverVOList);
		
		String result = "";
		
		if(cnt>0) {
			result = "success";
		}
		return result;
	}
	
	@Transactional
	@Override
	public int insertMail(MailVO mailVO) {
		
		String[] emlCallCdArr = mailVO.getEmlCallCd().split(",");
		
		// 3. 메일마스터
		mailMapper.insertMail(mailVO);
		 
		
		// 1. 메일 수신자  
		int result = insertMailReceiver(mailVO, emlCallCdArr, "N");
		
		if(StringUtils.isNotEmpty(mailVO.getEmlRefCd())) {
			String[] emlRefCdArr = mailVO.getEmlRefCd().split(",");
			
			// 2. 메일 참조자
			int data = insertMailRef(mailVO, emlRefCdArr,emlCallCdArr.length ,"Y");
		}
		
		return result;
	}

	@Override
	public int deleteMailFile(MailVO mailVO) {
		return mailMapper.deleteMailFile(mailVO);
	}

	@Override
	public String selectMailFileKey() {
		return mailMapper.selectMailFileKey();
	}

	@Override
	public int insertMailFile(AttachFileVO fileVO) {
		// 마스터 Mail 테이블에 정보 넣어주기
		return mailMapper.insertMailFile(fileVO);
	}
	
	// 메일 수신자 
	public int insertMailReceiver(MailVO mailVO, String[] mailArr, String flg) {
		
		int result = 0;
		for (int i = 0; i < mailArr.length; i++) {
			MailReceiverVO mrVO = new MailReceiverVO();
			mrVO.setEmlCd(mailVO.getEmlCd());
			mrVO.setEmlCallCd(mailArr[i]);
			mrVO.setSerNo(i+1);
			mrVO.setRecNm(mailVO.getEmpNm());
			mrVO.setEmlRefYn(flg);
			
			result = mailMapper.insertMailReceiver(mrVO);
		}
		
		return result;
	}
	// 메일 참조자
	public int insertMailRef(MailVO mailVO, String[] mailArr,int length ,String flg) {
		
		int result = 0;
		for (int i = 0; i < mailArr.length; i++) {
			MailReceiverVO mrVO = new MailReceiverVO();
			mrVO.setEmlCd(mailVO.getEmlCd());
			mrVO.setEmlCallCd(mailArr[i]);
			mrVO.setSerNo(length+i+1);
			mrVO.setRecNm(mailVO.getEmpNm());
			mrVO.setEmlRefYn(flg);
			
			result = mailMapper.insertMailReceiver(mrVO);
		}
		
		return result;
	}

	// 메일 휴지통 리스트
	@Override
	public List delList(String empCd) {
		return mailMapper.delList(empCd);
	}

	// 메일 완전삭제
	@Override
	public int deleteMail(List<MailReceiverVO> mailReceiverVOList) {
		String atchFileCd = mailMapper.selectAtchFileCd(mailReceiverVOList.get(0));
		
		mailMapper.deleteMailFileList(atchFileCd);
		
		return mailMapper.deleteMail(mailReceiverVOList);
	}

	// 보낸 메일함
	@Override
	public List sendList(String empCd) {
		return mailMapper.sendList(empCd);
	}

	// 보낸 메일함
//	@Override
//	public String sendDel(List<MailReceiverVO> mailReceiverVOList) {
//		int cnt = mailMapper.sendDel(mailReceiverVOList);
//		
//		String result = "";
//		
//		if(cnt>0) {
//			result = "success";
//		}
//		return result;
//	}

	@Override
	public List selectReceiverList(MailReceiverVO mrVO) {
		return mailMapper.selectReceiverList(mrVO);
	}

	@Override
	public List selectAtchMailList(MailReceiverVO mrVO) {
		return mailMapper.selectAtchMailList(mrVO);
	}

	@Override
	public MailVO selectMailDetailRep(MailReceiverVO mrVO) {
		return mailMapper.selectMailDetailRep(mrVO);
	}

	@Override
	public List selectReceiverListRep(MailReceiverVO mrVO) {
		return mailMapper.selectReceiverListRep(mrVO);
	}

	@Override
	public List selectRefList(MailReceiverVO mrVO) {
		return mailMapper.selectRefList(mrVO);
	}

	@Override
	public String prmDeleteMail(List<MailReceiverVO> mailReceiverVOList) {
		return mailMapper.prmDeleteMail(mailReceiverVOList);
	}

	@Override
	public AttachFileVO selectMailFileDetail(MailReceiverVO mrVO) {
		return mailMapper.selectMailFileDetail(mrVO);
	}

	@Override
	public List mainList(String empCd) {
		return mailMapper.mainList(empCd);
	}

	@Override
	public List mainMailList(String empCd) {
		return mailMapper.mainMailList(empCd);
	}
	

}
