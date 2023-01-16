package com.sw.ddit.employee.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sw.ddit.attendance.vo.VacationVO;
import com.sw.ddit.common.vo.CommonVO;
import com.sw.ddit.department.vo.DepartmentVO;
import com.sw.ddit.employee.mapper.PositionMapper;
import com.sw.ddit.employee.service.PositionService;
import com.sw.ddit.employee.vo.AuthVO;
import com.sw.ddit.employee.vo.EmployeeVO;

@Service
public class PositionServiceImpl implements PositionService {

	@Autowired
	PositionMapper positionMappper;
	
	// 최초 회원가입자 리스트 불러오기
	@Override
	public List<EmployeeVO> notPosiList(){
		return this.positionMappper.notPosiList();
	}
	
	// 직급 리스트 가져오기
	@Override
	public List<CommonVO> positionList(){
		return this.positionMappper.positionList();
	}

	//부서테이블의 팀을 불러오기 
	@Override
	public List<DepartmentVO> departmentList(){
		return this.positionMappper.departmentList();
	}
	
	// 회원가입한 직원에게 직급, 부서 설정하기 
	@Override
	public int empUpdate(EmployeeVO employeeVO) {
		return this.positionMappper.empUpdate(employeeVO);
	}
	
	// 전체 회원 리스트 불러오기
	@Override
	public List<EmployeeVO> allList(){
		return this.positionMappper.allList();
	}
	
	// 직급코드 불러오기
	@Override
	public List<CommonVO> workList(){
		return this.positionMappper.workList();
	}
	
	// 회원 삭제 및 회원가입 승인 거절
	@Override
	public int  empDelete(EmployeeVO employeeVO) {
		return this.positionMappper.empDelete(employeeVO);
	}
	
	// 회원 정보 상세보기
	@Override
	public List<EmployeeVO> empDetail(EmployeeVO employeeVO){
		return this.positionMappper.empDetail(employeeVO);
	}
	
	// 권한코드 불러오기
	@Override
	public List<CommonVO> authList(){
		return this.positionMappper.authList();
	}
	
	// 권한 부여하기
	@Override
	public int authInsert(AuthVO authVO) {
		return this.positionMappper.authInsert(authVO);
	}

	// 직원정보 수정하기
	@Override
	public int empModify(EmployeeVO empVO) {
		return this.positionMappper.empModify(empVO);
	}
	
	// 직원 프로필 업로드
	@Override
	public int uploadProfile(EmployeeVO empVO) {
		return this.positionMappper.uploadProfile(empVO);
	}
	
	//	 휴가도 조금 주기!!
	public int insertVacation(VacationVO vacVO) {
		return this.positionMappper.insertVacation(vacVO);
	}
}
