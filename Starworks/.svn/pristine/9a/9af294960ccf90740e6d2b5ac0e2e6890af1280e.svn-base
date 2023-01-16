package com.sw.ddit.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.sw.ddit.employee.mapper.EmployeeMapper;
import com.sw.ddit.employee.vo.EmployeeVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired   //DI(의존성 주입)
	private EmployeeMapper employeeMapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// username은 사용자 아이디. 로그인 화면에서 입력된 아이디 값을 말함
		log.warn("Load User By UserName : " + username);
		
		// 사용자 아이디를 통해 EMPLOYEE 테이블의 1 행 데이터를 받아서  EmployeeVO에 넣자
		EmployeeVO employeeVO = employeeMapper.read(username);
		log.warn("queried by employee mapper : " + employeeVO.toString());
		employeeVO.getEmpCd();
		
		return employeeVO== null?null:new CustomUser(employeeVO);
	}
	
}















