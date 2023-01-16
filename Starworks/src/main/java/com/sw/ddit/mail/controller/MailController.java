package com.sw.ddit.mail.controller;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sw.ddit.common.Browser;
import com.sw.ddit.common.vo.AttachFileVO;
import com.sw.ddit.mail.service.MailService;
import com.sw.ddit.mail.vo.MailReceiverVO;
import com.sw.ddit.mail.vo.MailVO;
import com.sw.ddit.notice.vo.NoticeVO;
import com.sw.ddit.security.CustomUser;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/mail")
@Controller
public class MailController {
	
	@Resource(name = "mailService")
	private MailService mailService;
	HttpSession session;
	
	// 메일 리스트
	@RequestMapping("/selectMailList")
	public String list(Model model) {
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		CustomUser user = (CustomUser) authentication.getPrincipal();
	      
		log.info("getEmpNm: " +user.getEmployeeVO().getEmpNm());
		log.info("getEmpCd: " +user.getEmployeeVO().getEmpCd()); 
		
		List list = mailService.selectMailList(user.getEmployeeVO().getEmpCd());
		
		model.addAttribute("title", "받은 메일함");
		model.addAttribute("list", list);
		return "mail/mailBoard";
	}
	// 메인화면 메일 리스트
	@RequestMapping("/mainList")
	public String mainList(Model model) {
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		CustomUser user = (CustomUser) authentication.getPrincipal();
		
		log.info("getEmpNm: " + user.getEmployeeVO().getEmpNm());
		log.info("getEmpCd: " + user.getEmployeeVO().getEmpCd()); 
		
		List list = mailService.mainList(user.getEmployeeVO().getEmpCd());
		
		model.addAttribute("list", list);
		return "main/index";
	}
	
	// 메일 상세 폼
	@GetMapping("/selectMailDetail/{emlNo}")
	public String detail(@PathVariable("emlNo") String emlCd, Model model) {
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		CustomUser user = (CustomUser) authentication.getPrincipal();
	      
		log.info("getEmpCd: " +user.getEmployeeVO().getEmpCd()); 
		
		MailReceiverVO mrVO = new MailReceiverVO();
		mrVO.setEmlCallCd(user.getEmployeeVO().getEmpCd());
		mrVO.setEmlCd(emlCd);
		
		// 1. 메일 마스터 상세
		MailVO mailVO = mailService.selectMailDetail(mrVO);
		
		// 2. 메일 받는사람
		List reList = mailService.selectReceiverList(mrVO);
		
		// 3. 메일 첨부파일 
		List atchList = mailService.selectAtchMailList(mrVO);
		
		
		model.addAttribute("title", "받은 메일함");
		model.addAttribute("mailVO", mailVO);
		model.addAttribute("reList", reList);
		model.addAttribute("atchList", atchList);

		return "mail/mailDetail";
	}
	
	/** 메일 발신 폼 **/
	@GetMapping("/mailSend")
	public String send(Model model) {
		
		model.addAttribute("title", "메일 쓰기");
		
		return "mail/mailSend";
	}
	
	/** 메일 발신 폼 **/
	@GetMapping("/mailSendBoard")
	public String mailSendBoard(Model model) {
		
		model.addAttribute("title", "메일 쓰기");
		
		return "mail/mailSendBoard";
	}
	
	/** 받는 사람 multi selectbox **/
	@RequestMapping("/empList")
	@ResponseBody
	public List empList(Model model, MailVO mailVO) {
		
		List list = mailService.empList(mailVO);
		
		return list;
	}
	
	/** 참조 사람 multi selectbox **/
	@RequestMapping("/refList")
	@ResponseBody
	public List refList(Model model, MailVO mailVO) {
		
		MailReceiverVO mrVO = new MailReceiverVO();
		if(StringUtils.isNotEmpty(mailVO.getEmlCd())) {
			mrVO.setEmlCd(mailVO.getEmlCd());
		}
		List list = mailService.selectRefList(mrVO);
		
		return list;
	}
	
	/** main 화면 list **/
	@RequestMapping("/mainMailList")
	@ResponseBody
	public List mainMailList(Model model, MailVO mailVO) {
		
		MailReceiverVO mrVO = new MailReceiverVO();
		if(StringUtils.isNotEmpty(mailVO.getEmlCd())) {
			mrVO.setEmlCd(mailVO.getEmlCd());
		}
		List list = mailService.selectRefList(mrVO);
		
		return list;
	}
	
//	/** 받는 사람 autoComplete **/
//	/** 공지사항 파일 삭제 **/
//	@RequestMapping("/autoComplete")
//	@ResponseBody
//	public List autoComplete(@RequestParam String searchParam, Model model) {
//		// 받는사람 검색조건
//		List list = mailService.autoComplete(searchParam);
//		
//		return list;
//	}
//	
	@RequestMapping("/updateDel")
	@ResponseBody
	public String updateDel(@RequestParam(value="mailArr[]") String[] mailArr, Model model) {
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		CustomUser user = (CustomUser) authentication.getPrincipal();
		
		String empCd = user.getEmployeeVO().getEmpCd();
		log.info("getEmpCd: " +user.getEmployeeVO().getEmpCd());
		
		List<MailReceiverVO> mailReceiverVOList = new ArrayList<MailReceiverVO>();
		
		for(String mail : mailArr) {
			MailReceiverVO vo = new MailReceiverVO();
			
			log.info("mail : " + mail);
			
			vo.setEmlCd(mail);
			vo.setEmlCallCd(empCd);
			
			mailReceiverVOList.add(vo);
		}	
		
		String result = "0";
		
		result = mailService.updateDel(mailReceiverVOList);
		
		log.info("result : " + result);
		
		return "success";
	}
	
	
	// 메일 리스트
	@RequestMapping("/insertMail")	// , MultipartHttpServletRequest mReq
	public String insertMail(Model model, MailVO mailVO, MultipartHttpServletRequest mReq) {
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		CustomUser user = (CustomUser) authentication.getPrincipal();
		
		String empNm =  user.getEmployeeVO().getEmpNm();
		String empCd = user.getEmployeeVO().getEmpCd();
		
		log.info("getEmpNm: " + empNm);
		log.info("getEmpCd: " + empCd);
		
		if(StringUtils.isNotEmpty(empCd)){
			mailVO.setEmpNm(empNm);
			mailVO.setEmpCd(empCd);
		}
		
		// 첨부파일이 있으면
		if (mReq.getContentType().startsWith("multipart")) {
			// 파일 리스트 
			 List<MultipartFile> files = mReq.getFiles("mailFile");
			
			// 첨부파일 method 호출
			mailVO = insertMailFile(files, mailVO);
			
		}
		int mailCd = mailService.insertMail(mailVO);
		
		model.addAttribute("title", "메일 쓰기");
		model.addAttribute("mailVO", mailVO);
		
		// 등록이 완료되면 메일 발송완료 페이지로 이동함
		// 지금은 페이지가없어서 리스트로 이동하게해놨음
		return "mail/completeMail";
	}
	
	// 메일 첨부파일 
	private MailVO insertMailFile(List<MultipartFile> files, MailVO mailVO) {
		
		// 번호가 있으면
		if(StringUtils.isNotEmpty(mailVO.getEmlCd())) {
			mailService.deleteMailFile(mailVO);
		}
		
		// 마스터 selectkey 만들기
		String attchFileCd = mailService.selectMailFileKey();
		mailVO.setAttchFileCd(attchFileCd);
		
		int index = 0;
		// 원본 첨부파일 명 
		for (MultipartFile mf : files) {
			index++;
			
			// 파일 pk 통일
			AttachFileVO fileVO = new AttachFileVO();
			fileVO.setAtchFileCd(attchFileCd);
			fileVO.setAtchFileNo(index);
			// 마스터 파일에도 insert 필요함 
			mailVO.setAttchFileCd(attchFileCd);
			
			
			// 파일경로
			String path = "D:\\A_TeachingMaterial\\7.LastProject\\workspace\\Starworks\\src\\main\\webapp\\resources\\noticeUpload";
			// 연월일 폴더 생성
			File uploadPath = new File(path);
			// 파일 path 저장 
			fileVO.setAtchFilePath(path);
			log.info("upload path  : " + path);
			
			// 만약 연/월/일 해당 폴더가 없으면 생성
			if(uploadPath.exists()==false) {
				uploadPath.mkdirs();
			}
			
			String originFileName = mf.getOriginalFilename(); 
			fileVO.setAtchFileOrgNm(originFileName);
			
			// 파일 사이즈
			long fileSize = mf.getSize(); 
			fileVO.setAtchFileSize(fileSize);
			
			log.info("originFileName : " + originFileName);
			log.info("fileSize : " + fileSize);
			log.info("mf.getContentType : " + mf.getContentType());
			
			// 파일확장자명
			fileVO.setAtchFileExten(mf.getContentType());
			
			// 첨부파일 저장명
			UUID uuid = UUID.randomUUID();
			//원래의 파일 이름과 구분하기 위해 _를 붙임(sdafjasdlfksadj_개똥이.jpg)
			String saveFileNm = uuid.toString() + "_" + originFileName;
			fileVO.setAtchFileNm(saveFileNm);
			
			log.info("saveFileNm : " + saveFileNm);
			
			// 파일 경로 , 파일 이름 으로 파일 객체 생성
			File saveFile = new File(uploadPath, saveFileNm);
			
			try {
				// 파일 복사
				mf.transferTo(saveFile);
			} catch (IllegalStateException e) {
				log.error(e.getMessage());
				return null;
			} catch (IOException e) {
				log.error(e.getMessage());
				return null;
			}
			
			// 첨부파일 insert & 첨부파일 코드 pk를 게시글 vo에 넣어주기
			int result = mailService.insertMailFile(fileVO);
		}
		
		return mailVO;
		
	}
	
	@RequestMapping("/delList")
	public String delList(Model model) {
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		CustomUser user = (CustomUser) authentication.getPrincipal();
	      
		log.info("getEmpNm: " +user.getEmployeeVO().getEmpNm());
		log.info("getEmpCd: " +user.getEmployeeVO().getEmpCd()); 
		
		List list = mailService.delList(user.getEmployeeVO().getEmpCd());
		
		model.addAttribute("title", "받은 메일함");
		model.addAttribute("list", list);
		
		return "mail/mailDel";
	}
	
	@RequestMapping("/sendList")
	public String sendList(Model model) {
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		CustomUser user = (CustomUser) authentication.getPrincipal();
		
		log.info("getEmpNm: " +user.getEmployeeVO().getEmpNm());
		log.info("getEmpCd: " +user.getEmployeeVO().getEmpCd()); 
		
		List list = mailService.sendList(user.getEmployeeVO().getEmpCd());
		
		model.addAttribute("title", "받은 메일함");
		model.addAttribute("list", list);
		
		return "mail/mailSendBoard";
	}
	
	// 메일 완전삭제
	@RequestMapping("/deleteMail")
	@ResponseBody
	public String deleteMail(@RequestParam(value="mailArr[]") String[] mailArr, Model model) {
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		CustomUser user = (CustomUser) authentication.getPrincipal();
		
		String empCd = user.getEmployeeVO().getEmpCd();
		log.info("getEmpCd: " +user.getEmployeeVO().getEmpCd()); 
		
		
		List<MailReceiverVO> mailReceiverVOList = new ArrayList<MailReceiverVO>();
		
		for(String emlCd : mailArr) {
			MailReceiverVO vo = new MailReceiverVO();
			
			vo.setEmlCd(emlCd);
			vo.setEmlCallCd(empCd);
			
			log.info("emlCd : " + emlCd);
			log.info("empCd : " + empCd);
			
			mailReceiverVOList.add(vo);
		}	
		
		int result = mailService.deleteMail(mailReceiverVOList);
		
		log.info("result : " + result);
		
		
		return "success";
	}
	
	@RequestMapping("/repMailForm")
	public String sendList(Model model, @RequestParam("emlCd") String emlCd) {
		Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		CustomUser user = (CustomUser) authentication.getPrincipal();
	      
		log.info("getEmpCd: " +user.getEmployeeVO().getEmpCd()); 
		
		MailReceiverVO mrVO = new MailReceiverVO();
		mrVO.setEmlCallCd(user.getEmployeeVO().getEmpCd());
		mrVO.setEmlCd(emlCd);
		
		// 1. 메일 마스터 상세
		MailVO mailVO = mailService.selectMailDetail(mrVO);
		
		// 2. 메일 첨부파일 
		List atchList = mailService.selectAtchMailList(mrVO);
		
		// 2. 메일 받는사람
		List reList = mailService.selectReceiverList(mrVO);
		
		model.addAttribute("title", "메일 전달");
		model.addAttribute("mailVO", mailVO);
		model.addAttribute("atchList", atchList);
		model.addAttribute("reList", reList);
		model.addAttribute("flg", "reply");

		return "mail/mailSend";
	}
	
	
	/** 메일 첨부파일 파일 다운로드 **/
	@GetMapping("/downloadMailFile")
	public void downloadMailFile(MailReceiverVO mrVO ,HttpServletRequest request,
							   HttpServletResponse response, @RequestHeader(value="User-Agent", required=false) String agent) throws IOException {
		// 일단 보류...
		AttachFileVO attchVO = mailService.selectMailFileDetail(mrVO);
		Browser browser = Browser.getBrowserConstant(agent);
		
		// AttachVO 가져오기
		String borwserType = request.getHeader("User-Agent");
		
		// 저장이름, 파일 이름 가져오기
		String savename = attchVO.getAtchFileNm();
		String filename = attchVO.getAtchFileOrgNm();
		
		// 브라우저마다 처리하는 방식이 다를 수 있음
		if(Browser.TRIDENT.equals(browser)) {
			// utf-8로 인코딩해주기
			filename = URLEncoder.encode(filename, "UTF-8");
		}else {
			// 비 ms 계열
			byte[] bytes = filename.getBytes();
			// 무조건 byte로 쪼갠 후 무작위로 더해서 문자열 하나로 만든다.
			filename = new String(bytes, "ISO-8859-1");
		}
		// header에 저장
		response.setHeader("Content-Disposition", "attachment;filename=\"" +filename + "\"");
		File saveFile = new File(attchVO.getAtchFilePath(), savename);
		// 이진데이터 이니까 브라우저는 실행하지 않고 다운로드로 진행
		response.setContentType("application/octet-stream");
		try(
			OutputStream os = response.getOutputStream();	
		){
			FileUtils.copyFile(saveFile, os);
		}
		
	}
	
}
