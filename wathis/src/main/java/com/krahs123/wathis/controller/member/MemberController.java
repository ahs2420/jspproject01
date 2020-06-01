package com.krahs123.wathis.controller.member;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.annotation.MultipartConfig;
import javax.validation.constraints.Min;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.krahs123.wathis.config.DbStatus;
import com.krahs123.wathis.model.MemberVO;
import com.krahs123.wathis.service.member.MemberService;
import com.krahs123.wathis.util.AES256;
import com.krahs123.wathis.util.FileControl;

@Controller
@RequestMapping("/users")
public class MemberController {
	@Autowired
	MemberService memberService;
	//관리자 리스트 화면
	@RequestMapping("")
	public ModelAndView viewMemberList(
			@RequestParam(defaultValue = "all") String searchOpt,
			@RequestParam(defaultValue = "") String words,
			@RequestParam(defaultValue = "1") int page) 
	{
		ModelAndView mav = new ModelAndView();
		
		int resultCnt = memberService.getMemberCount(searchOpt, words);
		
		//페이징 처리
		Map<String, Object> pageMap = new HashMap<>();//ModelAndView로 넘길 페이지 관련된 것들
		int pagePer = 10;//페이지당 게시물수
		int pageStart =(page-1)*pagePer;//페이시 시작 인덱스
		int pageCnt = (int)Math.ceil((double)resultCnt/pagePer);//전체 페이지의 수
		int disPaging = 5;//페이징할 갯수
		int endPage = (int)Math.ceil((double)page/disPaging)*disPaging;
		int startPage = endPage - disPaging +1;
		endPage =(endPage<pageCnt)?endPage:pageCnt;
		pageMap.put("page", page);
		pageMap.put("startPage", startPage);
		pageMap.put("endPage", endPage);
		pageMap.put("pageCnt", pageCnt);
		pageMap.put("pagePer", pagePer);

		List<MemberVO> mvoList = memberService.getMemberList(searchOpt, words, pageStart, pagePer);
		mav.addObject("searchOpt",searchOpt);
		mav.addObject("words",words);
		mav.addObject("ugroup",DbStatus.ugroup);
		mav.addObject("ustatus",DbStatus.ustatus);
		mav.addObject("mvoList",mvoList);
		mav.addObject("count",resultCnt);
		mav.addObject("pageStart",pageStart);
		mav.addObject("paging",pageMap);
		mav.addObject("template", "users");
		mav.addObject("mypage", "list");
		mav.setViewName("/admin/admin");
		return mav;
	}
	//회원수정 화면
	@RequestMapping(value="/getUsersModify",method = RequestMethod.GET)
	public ModelAndView getUsersModify(@RequestParam int id) {
		ModelAndView mav = new ModelAndView();
		AES256 aes = new AES256();
		MemberVO mvo = memberService.getMemberDetail(id);
		if(mvo.getUtel()!=null) {
			try {
				mvo.setUtel(aes.decrypt(mvo.getUtel()));
			} catch (UnsupportedEncodingException | GeneralSecurityException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		mav.addObject("mvo", mvo);
		mav.addObject("ugroup",DbStatus.ugroup);
		mav.addObject("ustatus",DbStatus.ustatus);
		mav.addObject("template", "users");
		mav.addObject("mypage", "modify");
		mav.setViewName("/admin/admin");
		return mav;
	}
	//회원수정 동작
	@RequestMapping(value="/getUsersModify",method = RequestMethod.POST)
	public ModelAndView getUsersModifyDO(@ModelAttribute MemberVO mvo,@RequestPart MultipartFile userImage) {
		ModelAndView mav = new ModelAndView();
		AES256 aes = new AES256();

		if(mvo.getUtel()!=null) {
			mvo.setUtel(aes.encrypt(mvo.getUtel()));
		}
		if(userImage!=null&&!userImage.getOriginalFilename().equals("")) {
			FileControl fc = new FileControl();
			if(mvo.getUimg()!=null&&!mvo.getUimg().equals("")) {
				fc.fileDelete("", mvo.getUimg(), null);
			}
			Map<String,Object> fileMap=fc.fileUpload(userImage, "img", null);
			mvo.setUimg(fileMap.get("uploadDIR").toString()+fileMap.get("fileName").toString());
		}
		
		int result = memberService.updateMember(mvo);
		
		mav.setViewName("redirect:/users");
		return mav;
	}
	
	//회원 권한 수정
	@RequestMapping("/authUpdate")
	@ResponseBody
	public Map<String,Object> authUpdate(@RequestParam(value = "uid") int id ,@RequestParam(value="auth") int ugroup){
		Map<String,Object> map = new HashMap<>();
		
		int result = memberService.updateAuthMember(id, ugroup);
		String msg="권한 수정에 실패하였습니다\n.관리자에게 문의해 주세요.";
		boolean status=false;
		
		if(result>0) {
			msg="권한이 수정되었습니다.";
			status=true;
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
		
	}
	//회원 삭제 ajax
	@RequestMapping("/deleteUser")
	@ResponseBody
	public Map<String,Object> deleteMemberAjax(@RequestParam int id){
		Map<String,Object> map = new HashMap<>();

		int result = this.deleteMember(id);
		String msg="회원 삭제에 실패하였습니다\n.관리자에게 문의해 주세요.";
		boolean status=false;
		
		if(result>0) {
			msg="회원이 삭제되었습니다.";
			status=true;
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
	}
	@RequestMapping("/deleteSelUser")
	@ResponseBody
	public Map<String,Object> deleteSelUser(@RequestParam(value="uid[]") List<Integer> idList){
		Map<String,Object> map = new HashMap<>();
		int result = 0 ;
		for(int id:idList ) {
			result += this.deleteMember(id);
		}
		String msg="회원 삭제에 실패하였습니다\n.관리자에게 문의해 주세요.";
		boolean status=false;
		
		if(result>0) {
			msg="선택하신 회원이 삭제되었습니다.";
			status=true;
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
	}
	
	//회원 삭제
	public int deleteMember(int id){
		MemberVO mvo = memberService.getMemberDetail(id);
		if(mvo.getUimg()!=null&&!mvo.getUimg().equals("")) {
			FileControl fc = new FileControl();
			fc.fileDelete("", mvo.getUimg(), null);
		}
		return memberService.deleteMember(id);
	}
	
	
}
