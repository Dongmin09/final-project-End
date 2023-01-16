package com.sw.ddit.approval.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sw.ddit.approval.service.ApprovalService;
import com.sw.ddit.approval.vo.ApprovalVO;
import com.sw.ddit.approval.vo.LineSeqVO;
import com.sw.ddit.common.vo.AttachFileVO;
import com.sw.ddit.security.CustomUser;

import lombok.extern.slf4j.Slf4j;
import net.coobird.thumbnailator.Thumbnailator;

@Slf4j
@RequestMapping("/approval")
@Controller
public class PayController {

	@Autowired
	ApprovalService approvalService;
	
	// 결재 수신함(대기요청만)
	@ResponseBody
	@PostMapping("/approvalReceive")
	public List<ApprovalVO> list(@RequestParam("empCd") String empCd) {
		log.info("empCd : " + empCd);
		List<ApprovalVO> list = this.approvalService.selectList(empCd);
		log.info("list : " + list.toString());
		return list;

	}
	
	// 결재 수신함(대기 요청만)
	@GetMapping("/approvalReceive")
	public String approvalReceive() {
		return "approval/approvalReceive";

	}
	
	
	// 결재 수신함 모든요청 가져오기
	@ResponseBody
	@PostMapping("/selectAllList")
	public List<ApprovalVO> AllList(@RequestParam("empCd") String empCd) {
		log.info("empCd : " + empCd);
		List<ApprovalVO> AllList = this.approvalService.selectAllList(empCd);
		return AllList;

	}
	// 결재 수신함 모든요청 가져오기
	// 결재 수신함
	@GetMapping("/selectAllList")
	public String approvalReceiveAll() {
		return "approval/selectAllList";

	}
	 
	// 결재 상신함
	@ResponseBody
	@PostMapping("/approvalReport")
	public List<ApprovalVO> reportList(@RequestBody ApprovalVO apprVO) {
		log.info("apprVO : " + apprVO);
		List<ApprovalVO> list = this.approvalService.reportList(apprVO.getEmpCd());
		log.info("list" , list );
		/*
		 * List<ApprovalVO> reportList = new ArrayList<ApprovalVO>();
		 * reportList.add(list); log.info("reportList : ", reportList);
		 */

		return list;
	}

	// 결재 상신함
	@GetMapping("/approvalReport")
	public String approvalReport() {
		return "approval/approvalReport";
	}
	
	// 결재 보관함
	@GetMapping("/approvalMain")
	public String approvalMain() {
		return "approval/approvalMain";
	}
	
	
	// 결재문서 작성 
	@GetMapping("/approvalCreate")
	public String approvalCreate() {
		return "approval/approvalCreate";
	}
	
	
	// 지출결의서 양식가져오기
	@GetMapping("/payform")
	public String payform(Model model, HttpServletRequest request) {
	     Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
	      CustomUser user = (CustomUser) authentication.getPrincipal();
	      
	      String apprNo = this.approvalService.getApprNo();
	      
	      HttpSession session = request.getSession();
	      
	      session.setAttribute("apprNo", apprNo);
	      
	      System.out.println("apprNo : " + apprNo);
	      
	      log.info("getEmpNm: " +user.getEmployeeVO().getEmpNm());
	      log.info("getEmpCd: " +user.getEmployeeVO().getEmpCd()); 
		model.addAttribute("empNm",user.getEmployeeVO().getEmpNm());
		model.addAttribute("empCd",user.getEmployeeVO().getEmpCd());
		model.addAttribute("apprNo", apprNo);
		
		return "approval/payform";
	}
	
	// 지출결의서 양식가져오기
	@GetMapping("/payformTest")
	public String payformTest(Model model) {
	     Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
	      CustomUser user = (CustomUser) authentication.getPrincipal();
	      
	      log.info("getEmpNm: " +user.getEmployeeVO().getEmpNm());
	      log.info("getEmpCd: " +user.getEmployeeVO().getEmpCd()); 
		model.addAttribute("empNm",user.getEmployeeVO().getEmpNm());
		model.addAttribute("empCd",user.getEmployeeVO().getEmpCd());
		
		return "approval/payformTest";
	}
	
	//지출결의서입력
	@ResponseBody
	@PostMapping("/payformInsertUpload")
	public String payformInsertUpload(ApprovalVO apprVO,HttpServletRequest request, MultipartFile[] fileData) throws ParseException {
		HttpSession session = request.getSession();
		String apprNo = (String)session.getAttribute("apprNo");
		log.info("apprNo(session) : " + apprNo);
		
		apprVO.setApprNo(apprNo);
		
		log.info("apprVO : " + apprVO);
		log.info("fileData : " + fileData);
		
		
		
		//----------파일업로드 처리 시작-----------------------------------------------
		
		String absolutePath = 
				request.getRealPath(request.getContextPath());
		log.info("absolutePath : " + absolutePath);
		
//				String uploadFolder = absolutePath + "resourses\\approvalUpload";
		String uploadFolder = "C:\\eGovFrameDev-3.10.0-64bit\\workspace\\Starworks\\src\\main\\webapp\\resources\\approvalUpload";
		
		log.info("uploadFolder : " + uploadFolder);
		
		/*
		  String realPath = session.getServletContext()
		  							.getRealPath("/resources/upload");
      		log.info("realPath : " + realPath);
		 */
		
		//연월일 폴더 생성
		File uploadPath = new File(uploadFolder,getFolder());
		log.info("upload Path : " + uploadPath);
		
		//만약 연/월/일 해당 폴더가 없으면 생성
		if(uploadPath.exists()==false) {
			uploadPath.mkdirs();
		}
		
		//원래 파일명
		String uploadFileName = "";
		List<AttachFileVO> attachFileVOList = new ArrayList<AttachFileVO>();
		MultipartFile[] uploadFile = null;
		for(MultipartFile multipartFile : fileData) {
			log.info("-----------------");
			log.info("upload File Name : " + multipartFile.getOriginalFilename());
			log.info("upload File Size :" + multipartFile.getSize());
			//개똥이.jpg
			uploadFileName = multipartFile.getOriginalFilename();
			
			//같은 날 같은 이미지 업로드 시 파일 중복 방지 시작----------------
			//java.util.UUID => 랜덤값 생성
			UUID uuid = UUID.randomUUID();
			//원래의 파일 이름과 구분하기 위해 _를 붙임(sdafjasdlfksadj_개똥이.jpg)
			uploadFileName = uuid.toString() + "_" + uploadFileName;
			//같은 날 같은 이미지 업로드 시 파일 중복 방지 끝----------------
			
			//File객체 설계(복사할 대상 경로, 파일명)
			//uploadPath : C:\\eGovFrameDev-3.10.0-64bit\\workspace
			//				 \\egovProj\\src\\main\\webapp\\resources\\upload\\2022\\11\\16
			File saveFile = new File(uploadPath, uploadFileName);
			log.info("uploadPath : " + uploadPath);
			log.info("uploadFileName : " + uploadFileName);
			
			try {
				//파일 복사 실행
				multipartFile.transferTo(saveFile);
				
				//썸네일 처리
				//이미지인지 체킹
				if(checkImageType(saveFile)) {//이미지라면
					FileOutputStream thumbnail = new FileOutputStream(
							new File(uploadPath,"s_"+uploadFileName)
							);
					//썸네일 생성
					Thumbnailator.createThumbnail(multipartFile.getInputStream(),
							thumbnail,100,100);
					thumbnail.close();
				}
				
				//ATTACH 테이블에 반영
				/*
				 UPDATE ATTACH
				 SET    FILENAME = '/2022/11/16/ASDFLDAS_개똥이.JPG'
				 WHERE  USER_NO = 3 AND SEQ = 5
				 */
				String filename = "/" + getFolder().replace("\\", "/") + "/" + uploadFileName;
				log.info("filename : " + filename);
				
				AttachFileVO attachVO = new AttachFileVO();
				attachVO.setAtchFileCd(apprVO.getApprNo());
				attachVO.setAtchFileNm(uploadFileName);
				attachVO.setAtchFilePath("/" + getFolder().replace("\\", "/"));
				attachVO.setAtchFileExten(multipartFile.getContentType());
				attachVO.setAtchFileSize((long) Long.valueOf(multipartFile.getSize()).intValue());
				attachVO.setAtchFileOrgNm(multipartFile.getOriginalFilename());
				attachVO.setFileSitCd("1");
				
				attachFileVOList.add(attachVO);
			}catch (IllegalStateException e) {
				log.error(e.getMessage());
				return null;
			}catch(IOException e) {
				log.error(e.getMessage());
				return null;
			}//end try
		}//end for
		
		log.info("attachFileVOList : " + attachFileVOList);
		
		int resultFiles = this.approvalService.uploadAction(attachFileVOList);
		log.info("resultFiles : " + resultFiles);
		String str = resultFiles + "";
		
		return str;
	}
	
	//지출결의서입력
	@PostMapping("/payformInsert")
	public String payformInsert(ApprovalVO apprVO, HttpServletRequest request, MultipartFile[] fileData) throws ParseException {
		
		log.info("fileData : " + fileData);
		
		String formCon = "";
		
		//formCon에 데이터 넣기 시작------------------------------------------------
		//지출일자
		String[] payDtArr = apprVO.getPayDt();
		//행의 수 구하기
		int rows = payDtArr.length;
		log.info("rows : " + rows);
		
		//적요
		String[] payconArr = apprVO.getPaycon();
		//금액
		String[] amountArr = apprVO.getAmount();
		//거래처명
		String[] accountArr = apprVO.getAccount();
		//결재방식
		String[] cashArr = apprVO.getCash();
		//지출합계
		
		for(int i=0;i<rows;i++) {
			formCon += payDtArr[i] + "," + payconArr[i] + "," + amountArr[i] + "," + accountArr[i] + "," + cashArr[i] + ",";
		}
		//금액의 합계를 구하여 formCon의 마지막에 넣어줌
		formCon += getAmountArrSum(amountArr);
		
		// 결재라인
		/*
		 * LineSeqVO line = new LineSeqVO(); List<LineSeqVO> lineList = null; int seq =
		 * 0; for(int i=0; i<lineList.size(); i++) { //다 담고 line.setLineTurn(seq);
		 * lineList.add(line); seq++; }
		 */
		apprVO.setFormCon(formCon);
		
		//formCon에 데이터 넣기 끝------------------------------------------------
		
		int result = 0;
		
		log.info("apprVO : " + apprVO.toString());
		
		//APPROVAL테이블에 insert
		//갈때는 apprNo=null -> apprNo=A23010101
		//갔다오면 apprNo=A23010101->필요없음
		String empCd = apprVO.getLine0();
		result = this.approvalService.payformInsert(apprVO);
		String sign = this.approvalService.sign(empCd);
		// 결재라인 LineSeqList 부분
		int lineResult = 0;
		List<LineSeqVO> lineSeqVOList = new ArrayList<LineSeqVO>();
		
		//상신자
		String[] lineName0 = apprVO.getLineName0();
		LineSeqVO lineSeqVO = new LineSeqVO();
		lineSeqVO.setLineTurn(0);
		lineSeqVO.setApprNo(apprVO.getApprNo());
		lineSeqVO.setApprSitCd("A02");
		lineSeqVO.setApprDt(apprVO.getRegDt());
		lineSeqVO.setLineYn("Y");
		lineSeqVO.setEmpCd(apprVO.getLine0());
		lineSeqVO.setApprNm(lineName0[0]);
		lineSeqVO.setSign(sign);
		lineSeqVOList.add(lineSeqVO);		
		
		//결재자1
		String[] lineName1 = apprVO.getLineName1();
		lineSeqVO = new LineSeqVO();
		lineSeqVO.setLineTurn(1);
		lineSeqVO.setApprNo(apprVO.getApprNo());
		lineSeqVO.setApprSitCd("A01");
		lineSeqVO.setApprDt(new Date());
		lineSeqVO.setLineYn("N");
		lineSeqVO.setEmpCd(apprVO.getLine1());
		lineSeqVO.setApprNm(lineName1[0]);
		lineSeqVO.setSign("");
		lineSeqVOList.add(lineSeqVO);
		
		//결재자2
		String[] lineName2 = apprVO.getLineName2();
		lineSeqVO = new LineSeqVO();
		lineSeqVO.setLineTurn(2);
		lineSeqVO.setApprNo(apprVO.getApprNo());
		lineSeqVO.setApprSitCd("A00");
		lineSeqVO.setApprDt(new Date());
		lineSeqVO.setLineYn("N");
		lineSeqVO.setEmpCd(apprVO.getLine2());
		lineSeqVO.setApprNm(lineName2[0]);	
		lineSeqVO.setSign("");
		lineSeqVOList.add(lineSeqVO);
		
		//결재자3
		String[] lineName3 = apprVO.getLineName3();
		lineSeqVO = new LineSeqVO();
		lineSeqVO.setLineTurn(3);
		lineSeqVO.setApprNo(apprVO.getApprNo());
		lineSeqVO.setApprSitCd("A00");
		lineSeqVO.setApprDt(new Date());
		lineSeqVO.setLineYn("N");
		lineSeqVO.setEmpCd(apprVO.getLine3());
		lineSeqVO.setApprNm(lineName3[0]);
		lineSeqVO.setSign("");
		lineSeqVOList.add(lineSeqVO);
		
		//LINE_SEQ 테이블로 insert all
		lineResult = this.approvalService.apprLinsInset(lineSeqVOList);
		log.info("lineResult : " + lineResult);
		
		//----------파일업로드 처리 시작-----------------------------------------------
		
		String absolutePath = 
				request.getRealPath(request.getContextPath());
		log.info("absolutePath : " + absolutePath);
		
//		String uploadFolder = absolutePath + "resourses\\approvalUpload";
		String uploadFolder = "C:\\eGovFrameDev-3.10.0-64bit\\workspace\\Starworks\\src\\main\\webapp\\resources\\approvalUpload";
		
		log.info("uploadFolder : " + uploadFolder);
		
		/*
		  String realPath = session.getServletContext()
		  							.getRealPath("/resources/upload");
      		log.info("realPath : " + realPath);
		 */
		
		//연월일 폴더 생성
		File uploadPath = new File(uploadFolder,getFolder());
		log.info("upload Path : " + uploadPath);
		
		//만약 연/월/일 해당 폴더가 없으면 생성
		if(uploadPath.exists()==false) {
			uploadPath.mkdirs();
		}
		
		//원래 파일명
		String uploadFileName = "";
		List<AttachFileVO> attachFileVOList = new ArrayList<AttachFileVO>();
		MultipartFile[] uploadFile = null;
	if (uploadFile != null) {//// 파일이 잇을때만 작동
		
		//파일 배열로부터 파일을 하나씩 가져와보자.
		//MultipartFile[] uploadFile
		for(MultipartFile multipartFile : uploadFile) {
			log.info("-----------------");
			log.info("upload File Name : " + multipartFile.getOriginalFilename());
			log.info("upload File Size :" + multipartFile.getSize());
			//개똥이.jpg
			uploadFileName = multipartFile.getOriginalFilename();
			
			//같은 날 같은 이미지 업로드 시 파일 중복 방지 시작----------------
			//java.util.UUID => 랜덤값 생성
			UUID uuid = UUID.randomUUID();
			//원래의 파일 이름과 구분하기 위해 _를 붙임(sdafjasdlfksadj_개똥이.jpg)
			uploadFileName = uuid.toString() + "_" + uploadFileName;
			//같은 날 같은 이미지 업로드 시 파일 중복 방지 끝----------------
			
			//File객체 설계(복사할 대상 경로, 파일명)
			//uploadPath : C:\\eGovFrameDev-3.10.0-64bit\\workspace
			//				 \\egovProj\\src\\main\\webapp\\resources\\upload\\2022\\11\\16
			File saveFile = new File(uploadPath, uploadFileName);
			log.info("uploadPath : " + uploadPath);
			log.info("uploadFileName : " + uploadFileName);
			
			try {
				//파일 복사 실행
//				multipartFile.transferTo(saveFile);
				
				//썸네일 처리
				//이미지인지 체킹
				if(checkImageType(saveFile)) {//이미지라면
					FileOutputStream thumbnail = new FileOutputStream(
							new File(uploadPath,"s_"+uploadFileName)
							);
					//썸네일 생성
					Thumbnailator.createThumbnail(multipartFile.getInputStream(),
							thumbnail,100,100);
					thumbnail.close();
				}
				
				//ATTACH 테이블에 반영
				/*
				 UPDATE ATTACH
				 SET    FILENAME = '/2022/11/16/ASDFLDAS_개똥이.JPG'
				 WHERE  USER_NO = 3 AND SEQ = 5
				 */
				String filename = "/" + getFolder().replace("\\", "/") + "/" + uploadFileName;
				log.info("filename : " + filename);
				
				AttachFileVO attachVO = new AttachFileVO();
				attachVO.setAtchFileCd(apprVO.getApprNo());
				attachVO.setAtchFileNm(uploadFileName);
				attachVO.setAtchFilePath("/" + getFolder().replace("\\", "/"));
				attachVO.setAtchFileExten(multipartFile.getContentType());
				attachVO.setAtchFileSize((long) Long.valueOf(multipartFile.getSize()).intValue());
				attachVO.setAtchFileOrgNm(multipartFile.getOriginalFilename());
				attachVO.setFileSitCd("1");
				
				attachFileVOList.add(attachVO);
			}catch (IllegalStateException e) {
				log.error(e.getMessage());
				return null;
			}catch(IOException e) {
				log.error(e.getMessage());
				return null;
			}//end try
		}//end for
		
		
		
//			int resultFiles = this.approvalService.uploadAction(attachFileVOList);
//			log.info("resultFiles : " + resultFiles);
	}// 추가부분
		//----------파일업로드 처리 끝-----------------------------------------------
		
		return "redirect:/main/main";
		
	}
	
	//연/월/일 폴더 생성
	public String getFolder() {
		//2022-11-16 형식(format) 지정
		//간단한 날짜 형식
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		//날짜 객체 생성(java.util 패키지)
		Date date = new Date();
		//2022-11-16
		String str = sdf.format(date);
		
		return str.replace("-", File.separator);
	}
	
	//이미지인지 판단. 썸네일은 이미지만 가능하므로..
	public boolean checkImageType(File file) {
		//MIME 타입 알아냄. .jpeg / .jpg의 MIME타입 : image/jpeg
		String contentType;
		try {
			contentType = Files.probeContentType(file.toPath());
			log.info("contentType : " + contentType);
			//image/jpeg는 image로 시작함->true
			return contentType.startsWith("image");
		} catch (IOException e) {
			e.printStackTrace();
		} catch (NullPointerException e) {
			e.printStackTrace();
		}
		//이 파일이 이미지가 아닐 경우
		return false;
	}
	
	//Array의 크기 구하기
	public int getArrayLength(String[] arr) {
		int size = 0;
		
		for(int i=0;i<arr.length;i++) {
			if(arr[0]==null&&arr[0].equals("")) {
				break;
			}
			size++;
		}
		
		return size;
	}
	
	//금액의 합계구하기
	public int getAmountArrSum(String[] amountArr) {
		int sum = 0;
		
		for(int i=0;i<amountArr.length;i++) {
			if(amountArr[i].length()<1) {
				break;
			}
			sum += Integer.parseInt(amountArr[i]);
			log.info("=>" + amountArr[i].length());
		}
		
		return sum;
	}
	
	// 결재화면 디테일
	@GetMapping("/payformDetail")
	public String Detail(String apprNo, Model model) {
		log.info("apprNo : " + apprNo);
		//결재 상세보기
		ApprovalVO apprVO = this.approvalService.payformDetail(apprNo);
		log.info("apprVO1 : " + apprVO);
		
		List<LineSeqVO> lineSeqVOList = apprVO.getLineSeqVOList();
		
		String line0 = "";//상신자
		String line1 = "";//첫번째결재자
		String line2 = "";//두번째결재자
		String line3 = "";//세번째결재자
		
		String lineCode0 = ""; // 상신자 코드
		String lineCode1 = ""; // 상신자 코드
		String lineCode2 = ""; // 상신자 코드
		String lineCode3 = ""; // 상신자 코드
		
		String sign0 = "";  // 상신자 사인
		String sign1 = "";  // 첫번째결재자 사인
		String sign2 = "";  // 두번째 결재자 사인
		String sign3 = "";  // 세번째 결재자 사인
		
		String apprSitCd0 = "";
		String apprSitCd1 = "";
		String apprSitCd2 = "";
		String apprSitCd3 = "";
		
		
		int cnt = 0;
		
		for(LineSeqVO vo : lineSeqVOList) {
			if(cnt==0) {
				line0 = vo.getApprNm();
				lineCode0 = vo.getEmpCd();
				sign0 = vo.getSign();
				apprSitCd0 = vo.getApprSitCd();
			}else if(cnt==1) {
				line1 = vo.getApprNm();
				lineCode1 = vo.getEmpCd();
				sign1 = vo.getSign();
				apprSitCd1 = vo.getApprSitCd();
			}else if(cnt==2) {
				line2 = vo.getApprNm();
				lineCode2 = vo.getEmpCd();
				sign2 = vo.getSign();
				apprSitCd2 = vo.getApprSitCd();
			}else{
				line3 = vo.getApprNm();
				lineCode3 = vo.getEmpCd();
				sign3 = vo.getSign();
				apprSitCd3 = vo.getApprSitCd();
			}
			
			cnt++;
		}
		
		log.info("line0 : " + line0 + ", line1 : " + line1 + ", line2 : " + line2 + ", line3 : " + line3);
		log.info("============================== 결재자 코드 부분 시작=====================");
		log.info("lineCode0 : " + lineCode0 + ", lineCode1 : " + lineCode1 + ", lineCode2 : " + lineCode2 + ", lineCode3 : " + lineCode3);
		
		//결재라인
		Map<String,String> apprNmMap = new HashMap<String, String>();
		apprNmMap.put("line0", line0);
		apprNmMap.put("line1", line1);
		apprNmMap.put("line2", line2);
		apprNmMap.put("line3", line3);
		
		//결재라인 사원코드
		Map<String, String> apprCdMap = new HashMap<String, String>();
		apprCdMap.put("lineCode0", lineCode0);
		apprCdMap.put("lineCode1", lineCode1);
		apprCdMap.put("lineCode2", lineCode2);
		apprCdMap.put("lineCode3", lineCode3);
		
		//결재라인 사인 코드
		Map<String, String> apprSignMap = new HashMap<String, String>();
		apprSignMap.put("sign0", sign0);
		apprSignMap.put("sign1", sign1);
		apprSignMap.put("sign2", sign2);
		apprSignMap.put("sign3", sign3);
		
		//결재라인 각 상태코드
		Map<String, String> apprSitCdMap = new HashMap<String, String>();
		apprSitCdMap.put("apprSitCd0", apprSitCd0);
		apprSitCdMap.put("apprSitCd1", apprSitCd1);
		apprSitCdMap.put("apprSitCd2", apprSitCd2);
		apprSitCdMap.put("apprSitCd3", apprSitCd3);
		
		log.info("apprSitCd0" + apprSitCd0);
		log.info("apprSitCd1" + apprSitCd1);
		log.info("apprSitCd2" + apprSitCd2);
		log.info("apprSitCd3" + apprSitCd3);
		//지출내역
		String[][] formConArr = new String[6][5];
		String formConStr = apprVO.getFormCon();
		String[] formConSplit = formConStr.split(",");
		int k = 0;
		
		for(int i=0;i<6;i++) {
			for(int j=0;j<5;j++) {
				formConArr[i][j] = formConSplit[k];
				
				k++;
			}
		}
		//formConArr[0][1]
		System.out.println("=======================================");
		for(int l=0;l<6;l++) {
			System.out.print(formConArr[l][0] + "\t");
			System.out.print(formConArr[l][1] + "\t");
			System.out.print(formConArr[l][2] + "\t");
			System.out.print(formConArr[l][3] + "\t");
			System.out.print(formConArr[l][4]);
			System.out.println("");
		}
		System.out.println("last : " + formConSplit[formConSplit.length-1]);
		System.out.println("=======================================");
		
		// 공통 약속
		model.addAttribute("apprNo","결제 상세");
		model.addAttribute("apprVO", apprVO);
		model.addAttribute("apprNmMap",apprNmMap); // 결재자 이름
		model.addAttribute("apprCdMap", apprCdMap); // 결재자 코드
		model.addAttribute("apprSignMap",apprSignMap); //결재라인 사인
		model.addAttribute("apprSitCdMap",apprSitCdMap); //결재라인 상태
		model.addAttribute("formConArr", formConArr);
		model.addAttribute("formConArrSum", formConSplit[formConSplit.length-1]);
		
		log.info("apprSitCdMap :  + " + apprSitCdMap);
		// forwarding
		return "approval/aform/payformDetail";
	}
	// 디테일 사인
	@ResponseBody
	@PostMapping("/apprDtlPost")
	public List<String> apprDtlPost(@RequestParam("apprNo") String apprNo) {
		log.info("apprNo : " + apprNo);
		List<String> sign = this.approvalService.lineSign(apprNo);
		return sign;
	}
	
	//data :  {"sign":"approved.jpg","apprNo":"A2301123"}
	@ResponseBody
	@PostMapping("/apprUpdateSign")
	public int apprUpdateSign(@RequestBody HashMap<String, String> signMap) {
		//signMap : {"sign":"e9944ed6-bb53-4481-b2e0-fc3380a85045_220602003.png","apprNo":"A23011216","empNm":"윤동기"}
		log.info("signMap : " + signMap);
		String apprNo = signMap.get("apprNo");
		String empNm = signMap.get("empNm");
		log.info("apprNo : " + apprNo);
		log.info("empNm : " + empNm);
		int sign = this.approvalService.updateSign(signMap);
		log.info("sign : " + sign);
		int sign2 = this.approvalService.updateSign2(apprNo);
		log.info("sign2 : " + sign2);
		int end = this.approvalService.apprEnd(empNm);
		log.info("end : " + end);
		return end;
	}
	
	// 디테일 반려부분(
	@ResponseBody
	@PostMapping("/apprReturn")
	public int apprReturn(@RequestBody ApprovalVO apprvalVO) {
		int result = this.approvalService.apprReturn(apprvalVO);
		
		log.info("result : 디테일 반려" + result);
		return result;
	}
	
	// 디테일 반려부분(
	@ResponseBody
	@PostMapping("/ReturnLine")
	public int ReturnLine(@RequestBody LineSeqVO lineSeqVO) {
		log.info("lineSeqVO : " + lineSeqVO);
		int result = this.approvalService.ReturnLine(lineSeqVO);
		
		return result;
	}
	
	// 반려된결재 내역&사유 보기
	@ResponseBody
	@PostMapping("/returnAppr")
	public List<ApprovalVO> returnAppr(@RequestBody ApprovalVO apprvalVO) {
		log.info("apprvalVO : " + apprvalVO);
		List<ApprovalVO> returnAppr = this.approvalService.returnAppr(apprvalVO);
		log.info("returnAppr"+ returnAppr);
		return returnAppr;
	}
	
	
	
	
	
	@GetMapping("/draft")
	public String draftform() {
		return "approval/draftform";
	}
	
	@GetMapping("/vacation")
	public String vacationform() {
		return "approval/vacationform";
	}
	
	
	
	//
	
	// 목록 개수 구하기
	
	//1. 요청결재
	//{"empCd" : empCd}
	@ResponseBody
	@PostMapping("/getReceive")
	public int getReceive(@RequestBody ApprovalVO approvalVO) {
		//ApprovalVO(apprNo=null, apprTit=null, regDt=null, formCon=null, empCd=220602003, ...
		log.info("approvalVO : " + approvalVO);
		
		String empCd = approvalVO.getEmpCd();
		log.info("empCd : " + empCd);
		
		int getReceive  = 0;
		
		getReceive  = this.approvalService.getReceive(empCd);
		
		log.info("getReceive : " + getReceive);
		return getReceive;
	}
	
	//2. 결재내역 개수
	//{"empCd" : empCd}
	@ResponseBody
	@PostMapping("/getReceiveCmp")
	public int getReceiveCmp(@RequestBody ApprovalVO approvalVO) {
		//ApprovalVO(apprNo=null, apprTit=null, regDt=null, formCon=null, empCd=220602003, ...
		log.info("approvalVO : " + approvalVO);
		
		String empCd = approvalVO.getEmpCd();
		log.info("empCd : " + empCd);
		
		int getReceiveCmp  = 0;
		
		getReceiveCmp  = this.approvalService.getReceiveCmp(empCd);
		
		log.info("getReceiveCmp : " + getReceiveCmp);
		return getReceiveCmp;
	}
	
	//3. 진행결재 상신 개수
	//{"empCd" : empCd}
	@ResponseBody
	@PostMapping("/getReport")
	public int getReport(@RequestBody LineSeqVO lineSeqVO) {
		//ApprovalVO(apprNo=null, apprTit=null, regDt=null, formCon=null, empCd=220602003, ...
		log.info("lineSeqVO : " + lineSeqVO);
		
		String empCd = lineSeqVO.getEmpCd();
		log.info("empCd : " + empCd);
		
		int getReport  = 0;
		
		getReport  = this.approvalService.getReport(empCd);
		
		log.info("getReport : " + getReport);
		return getReport;
	}
	
	//4. 완료결재 상신 개수
	//{"empCd" : empCd}
	@ResponseBody
	@PostMapping("/getReportCmp")
	public int getReportCmp(@RequestBody LineSeqVO lineSeqVO) {
		//ApprovalVO(apprNo=null, apprTit=null, regDt=null, formCon=null, empCd=220602003, ...
		log.info("lineSeqVO : " + lineSeqVO);
		
		String empCd = lineSeqVO.getEmpCd();
		log.info("empCd : " + empCd);
		
		int getReportCmp  = 0;
		
		getReportCmp  = this.approvalService.getReportCmp(empCd);
		
		log.info("getReportCmp : " + getReportCmp);
		return getReportCmp;
	}
	
	//5. 반려결재 상신 개수
	//{"empCd" : empCd}
	@ResponseBody
	@PostMapping("/getReportRet")
	public int getReportRet(@RequestBody LineSeqVO lineSeqVO) {
		//ApprovalVO(apprNo=null, apprTit=null, regDt=null, formCon=null, empCd=220602003, ...
		log.info("lineSeqVO : " + lineSeqVO);
		
		String empCd = lineSeqVO.getEmpCd();
		log.info("empCd : " + empCd);
		
		int getReportRet  = 0;
		
		getReportRet  = this.approvalService.getReportRet(empCd);
		
		log.info("getReport : " + getReportRet);
		return getReportRet;
	}
	
}





