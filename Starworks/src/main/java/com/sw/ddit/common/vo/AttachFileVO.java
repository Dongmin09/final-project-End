package com.sw.ddit.common.vo;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AttachFileVO {
	
	// 파일 업로드
	private String atchFileCd;		// 첨부파일 코드
	private int atchFileNo;			// 첨부파일 순서 번호
	private String atchFileNm;		// 첨부파일 원본파일 명
	private String atchFilePath;	// 파일경로
	private Date atchFileDwnldTerm;	// 다운로드 기한
	private String atchFileExten;	// 확장자
	private Date atchFileUploDt;	// 업로드 일시
	private Long atchFileSize;		// 크기
	private String atchFileOrgNm;	// 원본명
	private String fileSitCd;		// 상태코드
	
	
	// 게시글 번호
	private int notiNo;
}
