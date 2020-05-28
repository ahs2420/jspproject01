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
	@RequestMapping(value="/setPopup",method = RequestMethod.GET)
	public ModelAndView setPopupView() {

		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "popup");
		mav.addObject("mypage", "insert");
		mav.setViewName("/admin/admin");
		return mav;
	}
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
}
