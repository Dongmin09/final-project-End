package com.sw.ddit.reference.controller;

import java.io.File;
import java.io.FileInputStream;
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
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sw.ddit.department.vo.DepartmentVO;
import com.sw.ddit.meet.vo.MeetBookVO;
import com.sw.ddit.reference.service.ReferenceService;
import com.sw.ddit.reference.vo.TotalRefeVO;

import lombok.extern.slf4j.Slf4j;
import net.coobird.thumbnailator.Thumbnailator;

@Slf4j
@RequestMapping("/reference")
@Controller
public class ReferenceController {
	
	@Autowired
	ReferenceService referenceService;
	
	//전사 자료실
	@GetMapping("/company")
	public String company(Model model) {
		List<TotalRefeVO> totalRefeVOList = this.referenceService.list();
		
		model.addAttribute("totalRefeVOList",totalRefeVOList);
		return "reference/company";
	}
	//전사 자료실 관리
	@GetMapping("/companyAdmin")
	public String companyAdmin(Model model) {
		List<TotalRefeVO> totalRefeVOList = this.referenceService.list();
		
		model.addAttribute("totalRefeVOList",totalRefeVOList);
		return "reference/companyAdmin";
	}
	//부서 자료실
	@GetMapping("/department")
	public String department(Model model) {
		List<TotalRefeVO> totalRefeVOList = this.referenceService.list();
		
		model.addAttribute("totalRefeVOList",totalRefeVOList);
		return "reference/department";
	}
	//개인 자료실
	@GetMapping("/personal")
	public String personal(Model model) {
		List<TotalRefeVO> totalRefeVOList = this.referenceService.list();
		log.info("total: " + totalRefeVOList);
		model.addAttribute("title", "개인 자료게시판");
		model.addAttribute("totalRefeVOList",totalRefeVOList);
		return "reference/personal";
	}
	//삭제
	@ResponseBody
	@PostMapping("/deletePost")
	public String deletePost(@RequestBody List<String> refeCdList) {
		int delSum  = 0;
		log.info("refeCdList: " + refeCdList);
		for (String refeCd : refeCdList) {
			int result = this.referenceService.deletePost(refeCd);
			log.info("result: " + result);
			delSum += result;
		}

		if(delSum == refeCdList.size()) {
			return "OK";
		}
		
		return "NG";
	}
	
	//상세
	@GetMapping("/detail")
	public String detail(Model model, @ModelAttribute TotalRefeVO totalRefeVO) {
		//조회수 
		referenceService.updateViewCnt(totalRefeVO.getRefeCd());
		
		totalRefeVO = this.referenceService.detail(totalRefeVO);
		log.info("detailtotalRefeVO"+ totalRefeVO);
		model.addAttribute("title", "자료 상세보기");
		model.addAttribute("totalRefeVO",totalRefeVO);
		model.addAttribute("refeCd", totalRefeVO.getRefeCd());
		return "reference/detail";
	}
	
	//검색
	@ResponseBody
	@PostMapping("/search")
	public List<TotalRefeVO> search(Model model, @RequestBody TotalRefeVO totalRefeVO) {
		List<TotalRefeVO> totalRefeVOList = this.referenceService.search(totalRefeVO);
		log.info("asdfg",totalRefeVOList);
		
		model.addAttribute("totalRefeVOList",totalRefeVOList);
		return totalRefeVOList;
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
	
	public boolean checkImageType(File file) {
		String contentType;
		try {
			contentType = Files.probeContentType(file.toPath());
			log.info("contentType : " + contentType);
			return contentType.startsWith("image");
		} catch (IOException e) {
			e.printStackTrace();
		}
		//이 파일이 이미지가 아닐 경우
		return false;
	}
	
	//등록
	@ResponseBody
	@PostMapping("/uploadAjaxAction")
	public Map<String, String> uploadAjaxAction(MultipartFile[] uploadFile, String prcEmpCd, String prcDepCd, String refeNm, String[] refeCon) {
		log.info("filecon: " + refeCon);
		log.info("uploadFile: "+ uploadFile.length);
		log.info("uploadFile: "+ uploadFile[0].getOriginalFilename());
//		log.info("filecon: "  + filecon);
		// 업로드 폴더 설정
		String uploadFolder = "D:\\A_TeachingMaterial\\7.LastProject\\workspace\\Starworks\\src\\main\\webapp\\resources\\refeUpload";

		// 연월일 폴더 생성
		File uploadPath = new File(uploadFolder, getFolder());
		log.info("upload Path : " + uploadPath);

		// 만약 연/월/일 해당 폴더가 없으면 생성
		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}

		// 원래 파일명
		String uploadFileName = "";
		// 매퍼xml의 <update id="uploadAjaxAction" parameterType="java.util.List">
		List<TotalRefeVO> totalRefeVOList = new ArrayList<TotalRefeVO>();
		
		// 파일 배열로부터 파일을 하나씩 가져와보자.
		// MultipartFile[] uploadFile
		int i = 0;
		for (MultipartFile multipartFile : uploadFile) {
			TotalRefeVO totalRefeVO = new TotalRefeVO();
			log.info("-----------------");
			log.info("upload File Name : " + multipartFile.getOriginalFilename());
			log.info("upload File Size :" + multipartFile.getSize());
			// 개똥이.jpg
			uploadFileName = multipartFile.getOriginalFilename();

			// 같은 날 같은 이미지 업로드 시 파일 중복 방지 시작----------------
			// java.util.UUID => 랜덤값 생성
			UUID uuid = UUID.randomUUID();
			// 원래의 파일 이름과 구분하기 위해 _를 붙임(sdafjasdlfksadj_개똥이.jpg)
			uploadFileName = uuid.toString() + "_" + uploadFileName;
			// 같은 날 같은 이미지 업로드 시 파일 중복 방지 끝----------------

			// File객체 설계(복사할 대상 경로, 파일명)
			// uploadPath : C:\\eGovFrameDev-3.10.0-64bit\\workspace
			// \\egovProj\\src\\main\\webapp\\resources\\upload\\2022\\11\\16
			File saveFile = new File(uploadPath, uploadFileName);
			
			try {
				// 파일 복사 실행
				multipartFile.transferTo(saveFile);
				log.info("타입???? "+ Files.probeContentType(saveFile.toPath()));
				
				// 썸네일 처리
				// 이미지인지 체킹
				if (checkImageType(saveFile)) {
					FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + uploadFileName));
					// 썸네일 생성
					Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 100, 100);
					thumbnail.close();
				}

				String refeFileNm = "/" + getFolder().replace("\\", "/") + "/" + uploadFileName;
				log.info("refeFileNm? : " + refeFileNm);
				String refeFileOrgNm = multipartFile.getOriginalFilename();
				
				totalRefeVO.setRefeFileNm(refeFileNm);
				totalRefeVO.setRefeFileOrgNm(refeFileOrgNm);
				totalRefeVO.setRefeFileExten(Files.probeContentType(saveFile.toPath()));
				totalRefeVO.setRefeFileSize(Long.valueOf(multipartFile.getSize()).intValue());
				totalRefeVO.setRefeFilePath(uploadPath.toString());
				totalRefeVO.setDepCd(prcDepCd);
				totalRefeVO.setEmpCd(prcEmpCd);
				totalRefeVO.setRefeNm(refeNm);
				totalRefeVO.setRefeCon(refeCon[i]);
				i++;
				totalRefeVOList.add(totalRefeVO);
			} catch (IllegalStateException e) {
				log.error(e.getMessage());
				return null;
			} catch (IOException e) {
				log.error(e.getMessage());
				return null;
			} // end try
		} // end for

		int rslt = this.referenceService.uploadAjaxAction(totalRefeVOList);

		Map<String, String> map = new HashMap<String, String>();
		map.put("uploadFileName", uploadFileName);
		map.put("status", rslt + "");

		return map;
	
	}
	 @RequestMapping(value = "/downloadZipFile", method = RequestMethod.POST)
	 public void downloadZipFile(@RequestParam("refeCd") String refeCdList,HttpServletResponse response, HttpSession session) {
		log.info("bbbb:" + refeCdList);
	    response.setStatus(HttpServletResponse.SC_OK);
	    response.setContentType("application/zip");
	    response.addHeader("Content-Disposition", "attachment; filename=\"document.zip\"");
	
	    FileOutputStream fos = null;
	    ZipOutputStream zipOut = null;
	    FileInputStream fis = null;
	
	    try {
	        zipOut = new ZipOutputStream(response.getOutputStream());
	
		// DB에 저장되어 있는 파일 목록을 읽어온다.
	        String downRefeCd[] = refeCdList.split(",");   // 이스케이프 문자인 "∖∖"를 앞에 붙여줘야 됨 
	        List<TotalRefeVO> atchmnFileInfoList = new ArrayList<>();
	        List<File> fileList = new ArrayList<File>();
	        for (String refeCd : downRefeCd) {
	        	atchmnFileInfoList = referenceService.downlist(refeCd);
	        
	        log.info("totalRefeFileList: " + atchmnFileInfoList);
	        log.info("리스트 사이즈: "+atchmnFileInfoList.size() );
//	        List<TotalRefeVO> atchmnFileInfoList = referenceService.downlist(refeCd);
		// 실제 Server에 파일들이 저장된 directory 경로를 구해온다.
	        String filePath = session.getServletContext().getRealPath("/resources/refeUpload");
	        
		// File 객체를 생성하여 List에 담는다.
//	        List<File> fileList = atchmnFileInfoList.stream().map(fileInfo -> {
//	        	log.info("fileinfo:" + fileInfo.getRefeFileNm());
//	            return new File(filePath + "/" + fileInfo.getRefeFileNm());
//	        }).collect(Collectors.toList());
	        
	       
	        for (TotalRefeVO one : atchmnFileInfoList) {
				log.info("" + one.getRefeFileNm());
	        	
				File newFile = new File(filePath + "/" + one.getRefeFileNm());
				
				log.info("체크:" + newFile.isFile());
	        	fileList.add(newFile);
			}
	        }
		// 루프를 돌며 ZipOutputStream에 파일들을 계속 주입해준다.
	        for(File file : fileList) {
	        	log.info("파일리스트 갯수: " + fileList.size());
	        	log.info("다운로드: " + file.getName());
	            zipOut.putNextEntry(new ZipEntry(file.getName()));
	            fis = new FileInputStream(file);
	
	            StreamUtils.copy(fis, zipOut);
	
	            fis.close();
	            zipOut.closeEntry();
	        }
	        
	        zipOut.close();
	        log.info("???다운로드???");
	
	    } catch (IOException e) {
	        System.out.println(e.getMessage());
	        try { if(fis != null)fis.close(); } catch (IOException e1) {System.out.println(e1.getMessage());/*ignore*/}
	        try { if(zipOut != null)zipOut.closeEntry();} catch (IOException e2) {System.out.println(e2.getMessage());/*ignore*/}
	        try { if(zipOut != null)zipOut.close();} catch (IOException e3) {System.out.println(e3.getMessage());/*ignore*/}
	        try { if(fos != null)fos.close(); } catch (IOException e4) {System.out.println(e4.getMessage());/*ignore*/}
	    }
	 }
}
