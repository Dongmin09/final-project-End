package com.sw.ddit.notice.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sw.ddit.common.Browser;
import com.sw.ddit.common.vo.AttachFileVO;
import com.sw.ddit.commu.vo.CommuVO;
import com.sw.ddit.notice.service.NoticeService;
import com.sw.ddit.notice.vo.NoticeVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/noti")
@Controller
public class NoticeController {

	/** @Resource 어노테이션은 빈의 이름을 사용해서 주입할 빈 객체를 찾기 때문에, @Resource 어노테이션의 값으로 빈 객체의 이름을 지정 **/
	/** @Autowired 와 같은 역할이지만 차이가 있음 **/
	/** noticeService 빈 객체 생성 **/
	@Resource(name = "noticeService")
	private NoticeService noticeService;
	
	/** 공지사항 게시글 list **/
	@RequestMapping("/selectNotiList")
	public String list(Model model) {
		
		List list = noticeService.selectNotiList();
		log.info("list : " + list);
		
		// 공통 약속
		model.addAttribute("title", "공지사항");
		model.addAttribute("list", list);
		
		return "notice/notiBoard";
	}
	
	/** 메인화면 공지사항 게시글 list **/
	@RequestMapping("/mainNotiList")
	public String mainList(Model model) {
		
		List mainList = noticeService.mainNotiList();
		log.info("list : " + mainList);
		
		// 공통 약속
		model.addAttribute("title", "공지사항");
		model.addAttribute("list", mainList);
		
		return "main/index";
	}
	
	/** 공지사항 상세 폼 **/
	@RequestMapping("/selectNotiDetail/{notiNo}")
	public String detail(@PathVariable("notiNo") int notiNo, Model model) {
		
		// 조회수 +1 & 상세정보 조회
		NoticeVO notiVO = noticeService.selectNotiDetail(notiNo);
		
		// 첨부파일 있는지 조회
		AttachFileVO attchVO = noticeService.selectNotiFileDetail(notiNo);
		
		model.addAttribute("title", "공지사항");
		model.addAttribute("notiVO", notiVO);
		model.addAttribute("attchVO", attchVO);
		
		return "notice/notiDetail";
	}
	
	/** 공지사항 등록 폼 **/
	@RequestMapping("notiInsertForm")
	public String notiInsertForm(Model model) {
		
		model.addAttribute("title", "공지사항");
		model.addAttribute("flg","create");
		
		return "notice/notiInsertForm";
	}
	
	/** 공지사항 게시글 delete **/
	@RequestMapping("/deleteNoti")
	public String deleteNoti(NoticeVO notiVO,Model model) {
		
		int result = noticeService.deleteNoti(notiVO);
		
		model.addAttribute("notiVO", notiVO);
		
		return "redirect:/noti/selectNotiList";
	}
	
	// 공지사항 수정 
	@RequestMapping("/notiUpdateForm/{notiNo}")
	public String notiUpdateForm(Model model, @PathVariable("notiNo") int notiNo) {
		
		NoticeVO vo = noticeService.selectNotiDetail(notiNo);
		
		// 첨부파일 있는지 조회
		AttachFileVO attchVO = noticeService.selectNotiFileDetail(notiNo);
		
		model.addAttribute("title", "공지사항");
		model.addAttribute("attchVO", attchVO);
		model.addAttribute("notiVO", vo);
		model.addAttribute("flg","update");
		
		return "notice/notiInsertForm";
	}
	
	/** 공지사항 수정 **/
	@PostMapping("/updateNoti")
	public String updateNoti(Model model, NoticeVO notiVO,  MultipartHttpServletRequest mReq) {
		
		int result = noticeService.updateNoti(notiVO);

		MultipartFile mf = mReq.getFile("boFile");
		
		// 첨부파일이 있으면
		if(!mf.isEmpty()) {
			// 첨부파일 method 호출
			notiVO = insertNotiFile(mf, notiVO);
		}
		
		model.addAttribute("notiVO", notiVO);
		model.addAttribute("flg", "update");
		
		return "redirect:/noti/selectNotiDetail/"+notiVO.getNotiNo();
	}
	
	/** 공지사항 등록 **/
	@PostMapping("/insertNoti")
	public String insertNoti(NoticeVO notiVO, Model model, MultipartHttpServletRequest mReq) {
		
		log.info("notiVO", notiVO);
		
		MultipartFile mf = mReq.getFile("boFile");
		
		// 첨부파일이 있으면
		if(!mf.isEmpty()) {
			// 첨부파일 method 호출
			notiVO = insertNotiFile(mf, notiVO);
		}
		
		int notiNo = noticeService.insertNoti(notiVO);
		
		model.addAttribute("title", "공지사항");
		model.addAttribute("notiVO", notiVO);
		// 등록한 상세보기 update
		model.addAttribute("flg","update");
		
		// 등록이 완료되면 상세보기 페이지로 이동함
		return "redirect:/noti/selectNotiDetail/"+notiNo;
	}
	
	/** 파일업로드 **/
	public NoticeVO insertNotiFile(MultipartFile mf, NoticeVO notiVO) {
		
		// 번호가 있으면
		if(notiVO.getNotiNo() > 0 ) {
			noticeService.deleteNotiFile(notiVO);
		}
		
		AttachFileVO fileVO = new AttachFileVO();
		
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
		
		// 원본 첨부파일 명 
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
		String atchFileCd = noticeService.insertNotiFile(fileVO);
		notiVO.setAtchFileCd(atchFileCd);
		
		return notiVO;
	}
	
	
	/** 공지사항 파일 다운로드 **/
	@GetMapping("/downloadNotiFile")
	public void downloadNotiFile(@RequestParam int notiNo ,HttpServletRequest request,
							   HttpServletResponse response, @RequestHeader(value="User-Agent", required=false) String agent) throws IOException {
		
		AttachFileVO attchVO = noticeService.selectNotiFileDetail(notiNo);
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
	
	
	/** 공지사항 파일 삭제 **/
	@RequestMapping("/deleteFile")
	@ResponseBody
	public String deleteFile(AttachFileVO acthVO, Model model) {
		int result = noticeService.deleteFile(acthVO);
		
		log.info("result : " + result);
		
		return "success";
	}
	
	
	
}
