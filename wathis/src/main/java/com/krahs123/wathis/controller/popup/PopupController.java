package com.krahs123.wathis.controller.popup;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import com.krahs123.wathis.model.ArticleVO;
import com.krahs123.wathis.model.BoardVO;
import com.krahs123.wathis.model.MenuVO;
import com.krahs123.wathis.model.PopupVO;
import com.krahs123.wathis.service.popup.PopupService;
import com.krahs123.wathis.util.FileControl;

@Controller
@RequestMapping("/popup")
public class PopupController {
	final String DIR = "/popup";
	@Autowired
	PopupService popupService;
	//팝업 관리자 리스트
	@RequestMapping("")
	public ModelAndView popupView(
			@RequestParam(defaultValue = "title") String searchOpt,
			@RequestParam(defaultValue =  "") String words,
			@RequestParam(defaultValue = "1") int page
			) {
		
		ModelAndView mav = new ModelAndView();
		int resultCnt = popupService.getPopupCount(searchOpt,words);
		//페이징 처리
		Map<String, Object> pageMap = new HashMap<>();//ModelAndView로 넘길 페이지 관련된 것들
		int pagePer = 12;//페이지당 게시물수
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
		
		List<PopupVO> pvoList = popupService.getPopupList(searchOpt,words,pageStart,pagePer);

		mav.addObject("status", DbStatus.popupStatus);
		mav.addObject("pvoList", pvoList);
		mav.addObject("template", "popup");
		mav.addObject("mypage", "list");
		mav.addObject("count",resultCnt);
		mav.addObject("searchOpt",searchOpt);
		mav.addObject("words",words);
		mav.addObject("pageStart",pageStart);
		mav.addObject("paging",pageMap);
		mav.setViewName("/admin/admin");
		return mav;
	}
	//팝업 등록 화면
	@RequestMapping(value="/setPopup",method = RequestMethod.GET)
	public ModelAndView setPopupView() {

		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "popup");
		mav.addObject("mypage", "insert");
		mav.setViewName("/admin/admin");
		return mav;
	}
	//팝업 등록 동작
	@RequestMapping(value="/setPopup",method = RequestMethod.POST)
	public ModelAndView setPopupDo(@ModelAttribute PopupVO pvo , @RequestPart MultipartFile files) {
		
		ModelAndView mav = new ModelAndView();
		FileControl fc = new FileControl();
		Map<String,Object> fileMap=fc.fileUpload(files, "img", null);
		String img = fileMap.get("uploadDIR").toString()+fileMap.get("fileName").toString();
		pvo.setImg(img);
		int result=popupService.setPopup(pvo);
		
		mav.setViewName("redirect:/popup");
		return mav;
	}
	//팝업삭제(ajax)
	@RequestMapping("/setPopupDeleteAjax")
	@ResponseBody
	public Map<String,Object> setPopupDeleteAjax(@RequestParam int id){
		int result = this.setPopupDelete(id);
		Map<String,Object> map = new HashMap<>();
		String msg="팝업 삭제에 실패하였습니다\n.관리자에게 문의해 주세요.";
		boolean status=false;
		if(result>0) {
			msg="팝업이 삭제되었습니다.";
			status=true;
		}
		map.put("status", status);
		map.put("msg", msg);
		return map;
	}
	//팝업 선택삭제(ajax)
	@RequestMapping("/deleteSelPopup")
	@ResponseBody
	public Map<String,Object> deleteSelPopup(@RequestParam(value = "uid[]") List<Integer> idList){
		int result = 0;
		for(int id : idList) {
			result += this.setPopupDelete(id);
		}
		Map<String,Object> map = new HashMap<>();
		String msg="팝업 삭제에 실패하였습니다\n.관리자에게 문의해 주세요.";
		boolean status=false;
		if(result>0) {
			msg="팝업이 삭제되었습니다.";
			status=true;
		}
		map.put("status", status);
		map.put("msg", msg);
		return map;
		
	}
	//팝업삭제
	@RequestMapping("/setPopupDelete")
	public ModelAndView setPopupDeleteDO(@RequestParam int id) {
		ModelAndView mav = new ModelAndView();
		int result = this.setPopupDelete(id);
		mav.setViewName("redirect:/popup");
		return mav;
	}
	//팝업 삭제 공통(실제 실행부분)
	public int setPopupDelete(@RequestParam int id) {
		PopupVO pvo = popupService.getPopupDetail(id);
		if(pvo.getImg()!=null&&pvo.getImg().equals("")) {
			FileControl fc = new FileControl();
			fc.fileDelete("", pvo.getImg(), null);
		}
		return popupService.deletePopup(id);
	}
	//팝업 수정 화면
	@RequestMapping(value = "/getPopupModify",method = RequestMethod.GET)
	public ModelAndView getPopupModify(@RequestParam int id) {
		ModelAndView mav = new ModelAndView();
		PopupVO pvo =  popupService.getPopupDetail(id);
		mav.addObject("status", DbStatus.popupStatus);
		mav.addObject("pvo", pvo);
		mav.addObject("template", "popup");
		mav.addObject("mypage", "modify");
		mav.setViewName("/admin/admin");
		return mav;
	}
	//팝업 수정 동작
	@RequestMapping(value = "/getPopupModify",method = RequestMethod.POST)
	public ModelAndView getPopupModifyDo(@ModelAttribute PopupVO pvo,@RequestPart MultipartFile files) {
		ModelAndView mav = new ModelAndView();
		if(!files.getOriginalFilename().equals("")) {
			FileControl fc = new FileControl();
			fc.fileDelete("", pvo.getImg(), null);
			Map<String,Object> fileMap = fc.fileUpload(files, "img", null);
			pvo.setImg(fileMap.get("uploadDIR").toString()+fileMap.get("fileName").toString());
		}
		int result = popupService.getPopupModify(pvo);
		mav.setViewName("redirect:/popup");
		return mav;
	}
	//팝업 상세
	@RequestMapping( "/getPopup")
	public ModelAndView getPopupView(@RequestParam int id) {
		ModelAndView mav = new ModelAndView();
		PopupVO pvo =  popupService.getPopupDetail(id);
		mav.addObject("status", DbStatus.popupStatus);
		mav.addObject("pvo", pvo);
		mav.addObject("template", "popup");
		mav.addObject("mypage", "view");
		mav.setViewName("/admin/admin");
		return mav;
	}
}
