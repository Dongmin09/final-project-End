package com.sw.ddit.main.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sw.ddit.employee.vo.EmployeeVO;
import com.sw.ddit.main.service.ProfileService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/main")
public class ProfileController {
	
	@Autowired
	ProfileService profileService;

	@GetMapping("/profile")
	public String profile(Model modle) {
		
		modle.addAttribute("title", "마이페이지");
		return "main/profile";
	}
	
	// 직원정보 보기
	@ResponseBody
	@PostMapping("/empDetail")
	public List<EmployeeVO> empDetail(@RequestBody EmployeeVO employeeVO) {	
		List<EmployeeVO> empDetail = this.profileService.empDetail(employeeVO);	
		log.info("empDetail : " + empDetail);	
		return empDetail;
	}
	
	// 직원 개인정보 수정
	@ResponseBody
	@PostMapping("/empModify")
	public int empModify(@RequestBody EmployeeVO empVO) {
		int result = this.profileService.empModify(empVO);		
		log.info("result : " + result);

		return result;
	}

	// 직원 사진 업로드
	@ResponseBody
	@PostMapping("/uploadProfile")
	public EmployeeVO uploadProfile(@ModelAttribute EmployeeVO empVO
			, MultipartFile uploadFile, HttpServletRequest request, String empCd) {
		
		empVO.setEmpCd(empCd);
		// 업로드 폴더 설정
		String uploadFolder = "D:\\A_TeachingMaterial\\7.LastProject\\workspace\\Starworks\\src\\main\\webapp\\resources\\profileImg";
		String uploadFolderNode = "D:\\A_TeachingMaterial\\7.LastProject\\chat_node\\chat_node\\img\\profilePic";
		log.info("파일위치 : " +  uploadFolder);
		// 원래 파일명
		String uploadFileName = "";
		String uploadFileNameNode = "";
		MultipartFile multipartFile = uploadFile;
		
		uploadFileName = multipartFile.getOriginalFilename();
		uploadFileNameNode = multipartFile.getOriginalFilename();
		
		UUID uuid = UUID.randomUUID();
		uploadFileName = uuid.toString() + "_" + uploadFileName;
		uploadFileNameNode = uuid.toString() + "_" + uploadFileNameNode;
		
		File saveFile = new File(uploadFolder, uploadFileName);
		File saveFileNode = new File(uploadFolderNode, uploadFileNameNode);
		
		try {
			multipartFile.transferTo(saveFile);
			multipartFile.transferTo(saveFileNode);
			empVO.setProfile(uploadFileName);
			int result = this.profileService.uploadProfile(empVO);
			
			
			
			
			return empVO;
			
		} catch (IllegalStateException e) {
			e.printStackTrace();
			return null;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	@ResponseBody
	@PostMapping("/saveIamge")
	public String saveIamge(@RequestParam(value="file", required=true) MultipartFile uploadFile, @RequestParam String empCd, @ModelAttribute EmployeeVO empVO) {
		empVO.setEmpCd(empCd);
		
		// 업로드 폴더 설정
		String uploadFolder = "D:\\A_TeachingMaterial\\7.LastProject\\workspace\\Starworks\\src\\main\\webapp\\resources\\profileSign";
		log.info("파일위치 : " +  uploadFolder);
		// 원래 파일명
		String uploadFileName = "";
		MultipartFile multipartFile = uploadFile;
		
		uploadFileName = multipartFile.getOriginalFilename();
		
		UUID uuid = UUID.randomUUID();
		uploadFileName = uuid.toString() + "_" + empCd.trim() + ".png";
		
		File saveFile = new File(uploadFolder, uploadFileName);
		
		try {
			multipartFile.transferTo(saveFile);
			empVO.setSign(uploadFileName);
			int row = this.profileService.uploadSign(empVO);
			return uploadFileName;
			
		} catch (IllegalStateException e) {
			e.printStackTrace();
			return null;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}
}
