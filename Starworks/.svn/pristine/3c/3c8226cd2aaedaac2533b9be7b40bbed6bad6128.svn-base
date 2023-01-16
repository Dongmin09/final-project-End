package com.sw.ddit.commu.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sw.ddit.commu.service.BoardService;
import com.sw.ddit.commu.vo.ComCmmtVO;
import com.sw.ddit.commu.vo.CommuVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/commu")
@Controller
public class CommunityController {
	
	/** @Resource 어노테이션은 빈의 이름을 사용해서 주입할 빈 객체를 찾기 때문에, @Resource 어노테이션의 값으로 빈 객체의 이름을 지정 **/
	/** @Autowired 와 같은 역할이지만 차이가 있음 **/
	/** boardService 빈 객체 생성 **/
	@Resource(name = "boardService")
	private BoardService boardService;
	
	/** 커뮤니티 게시글 list (datatbl사용)**/
	@RequestMapping("/selectCommuList")
	public String list(Model model) {
		
		List list = boardService.selectCommuList();
		log.info("list : " + list);
		
		//공통 약속
		model.addAttribute("title", "커뮤니티");
		model.addAttribute("list", list);
		
		return "community/board";
	}
	
	/** 메인 커뮤니티 게시글 list (datatbl사용)**/
	@RequestMapping("/mainCommuList")
	public String mainCommuList(Model model) {
		
		List commuList = boardService.mainCommuList();
		log.info("list : " + commuList);
		
		//공통 약속
		model.addAttribute("title", "커뮤니티");
		model.addAttribute("list", commuList);
		
		return "main/index";
	}
	
	/** 커뮤니티 상세 폼 **/
	@RequestMapping("/selectCommuDetail/{comNo}")
	public String detail(@PathVariable("comNo") int comNo, Model model) {
		// 로그인 세션 이 없으면 로그인화면으로 보내는 로직 필요
		// 파라미터도 필요
		
		// 조회수 +1 & 상세정보 조회 & 
		CommuVO commuVO = boardService.selectCommuDetail(comNo);
		
		model.addAttribute("title", "커뮤니티");
		model.addAttribute("commuVO", commuVO);
		
		return "community/detail";
	}
	
	
	/** 커뮤니티 등록 폼 **/
	@RequestMapping("/insertForm")
	public String insertForm(Model model) {
		
		model.addAttribute("title","커뮤니티");
		model.addAttribute("flg","create"); // create insert form flg
		
		return "community/insertForm";
	}
	
	/** 커뮤니티 추천/ 비추천  update**/
	@RequestMapping("/updateHit")
	@ResponseBody
	public String updateHit(CommuVO commuVO,Model model) {
		int result = boardService.updateHit(commuVO);
		
		log.info("result : " + result);
		
		return "success";
	}
	
	/** 커뮤니티 추천/비추천 list  **/
	@RequestMapping("/selectHit")
	@ResponseBody
	public CommuVO selectHit(CommuVO commuVO,Model model) {
		CommuVO commVO = boardService.selectHit(commuVO);
		
		log.info("commVO : " + commVO);
		
		return commVO;
	}
	
	
	/** 커뮤니티 등록  **/
	@PostMapping("/insertCommu")
	public String insertCommu(CommuVO commuVO, Model model) {
		
		log.info("commuVO", commuVO);
		int commuNo = boardService.insertCommu(commuVO);
		
		// 상세페이지에 등록했던 값 가져감
		// community/detail <--view
		// commuVO <--model
		// model 속성에 추가해가지고 "commuVO"라는 이름으로 community/detail(view)에서 데이터를 쓰겠다.
		// 당연하게 이름 바꾸면 다른이름으로 쓸수있음 
		// ex) model.addAttribute("vo", commuVO); 라고하면 view단에서 vo라고 쓰겠죠 ?
		
		model.addAttribute("commuVO", commuVO);
		// 등록한 상세보기니까 update
		model.addAttribute("flg","update");
		
		// 등록이 완료되면 상세보기 페이지로 이동함 
		return "redirect:/commu/selectCommuDetail/"+commuNo;
	}
	
	/** 게시글 delete **/
	@RequestMapping("/deleteCommu")
	public String deleteCommu(CommuVO commuVO, Model model) {
		
		int result = boardService.deleteCommu(commuVO);
		
		model.addAttribute("commuVO", commuVO);
		
		
		return "redirect:/commu/selectCommuList";
	}
	
	/** 게시글 수정 폼 **/
	@RequestMapping("/updateForm/{comNo}")
	public String updateForm(Model model, @PathVariable("comNo") int comNo) {
		
		// 조회수 +1 & 상세정보 조회 & 
		CommuVO vo = boardService.selectCommuDetail(comNo);
		
		model.addAttribute("commuVO", vo);
		model.addAttribute("flg","update"); // create insert form flg
		
		return "community/insertForm";
	}
	
	/** 게시글 수정 **/
	@PostMapping("/updateCommu")
	public String updateCommu(Model model, CommuVO commuVO) {
		
		// 조회수 +1 & 상세정보 조회 & 
		int result = boardService.updateCommu(commuVO);
		
		model.addAttribute("commuVO", commuVO);
		model.addAttribute("flg","update"); // create insert form flg
		
		//return "redirect:/commu/selectCommuDetail/"+commuVO.getComNo();
		return "community/detail";
	}
	
	/** 커뮤니티 댓글 list **/
	@RequestMapping("/selectCommuRep")
	@ResponseBody
	public List selectCommuRep(CommuVO commuVO,Model model) {
		List list = boardService.selectCommuRep(commuVO);
		model.addAttribute("list", list);
		return list;
	}
	
	/** 커뮤니티 댓글 insert **/
	@RequestMapping("/insertCommuRep")
	@ResponseBody
	public int insertCommuRep(ComCmmtVO comCmmtVO,Model model) {
		int result = boardService.insertCommuRep(comCmmtVO);
		return result;
	}
	
	/** 커뮤니티 댓글 update **/
	@RequestMapping("/updateCommuRep")
	@ResponseBody
	public int updateCommuRep(ComCmmtVO comCmmtVO,Model model) {
		int result = boardService.updateCommuRep(comCmmtVO);
		return result;
	}
	
	/** 커뮤니티 댓글 delete **/
	@RequestMapping("/deleteCommuRep")
	@ResponseBody
	public int deleteCommuRep(ComCmmtVO comCmmtVO,Model model) {
		int result = boardService.deleteCommuRep(comCmmtVO);
		return result;
	}
	
}
