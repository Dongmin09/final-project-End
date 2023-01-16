package com.sw.ddit.company.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.ddit.company.mapper.CompanyMapper;
import com.sw.ddit.company.service.CompanyService;
import com.sw.ddit.company.vo.CompanyVO;

@Service
public class CompanyServiceImpl implements CompanyService{

	@Autowired
	CompanyMapper companyMapper;
	
	
	// COMPANY 회사정보 회원가입 
	@Override
	public int insertCom(CompanyVO companyVO) {
		return this.companyMapper.insertCom(companyVO);
	}
	
	// COMPANY 회사이름 중복체크
	@Override
	public int checkURL(String url) {
		return this.companyMapper.checkURL(url);
	}
}
