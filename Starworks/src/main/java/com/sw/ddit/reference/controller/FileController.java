package com.sw.ddit.reference.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sw.ddit.reference.service.ReferenceService;
import com.sw.ddit.reference.vo.TotalRefeVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class FileController {
	@Autowired
	ReferenceService referenceService;
	@RequestMapping(value="/download",produces=MediaType.APPLICATION_OCTET_STREAM_VALUE)
	public ResponseEntity<Resource> downloadFile(String refeFileNm, HttpSession session){
		
		log.info("download file : " + refeFileNm);
		
		String realPath = session.getServletContext().getRealPath("/resources/refeUpload");
		//core.io
		Resource resource = new FileSystemResource(realPath + refeFileNm);
		log.info("path : " + (realPath + refeFileNm));
		
		String resourceName = resource.getFilename();
		log.info("resourceName: " + resourceName);
		
		//springframework.http
		//헤더를 통해서 파일을 보냄
		HttpHeaders headers = new HttpHeaders();
		
		try {
			//파일명을 한글처리함
			headers.add("Content-Disposition", "attachment;filename=" + new String(resourceName.getBytes("UTF-8"),"ISO-8859-1"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		//resource : 파일/ header : 파일명 등 정보 / HttpStatus.OK : 상태200(성공)
		return new ResponseEntity<Resource>(resource,headers,HttpStatus.OK);
	}
}
