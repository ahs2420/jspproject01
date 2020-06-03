package com.krahs123.wathis.controller.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.krahs123.wathis.config.DbStatus;
import com.krahs123.wathis.model.ArticleVO;
import com.krahs123.wathis.model.AuditVO;
import com.krahs123.wathis.model.MakerInfoVO;
import com.krahs123.wathis.model.MemberVO;
import com.krahs123.wathis.model.ProductOptionVO;
import com.krahs123.wathis.model.ProductVO;
import com.krahs123.wathis.service.member.MemberService;
import com.krahs123.wathis.service.product.AuditService;
import com.krahs123.wathis.service.product.MakerInfoService;
import com.krahs123.wathis.service.product.ProductOptionService;
import com.krahs123.wathis.service.product.ProductService;

@Controller
@RequestMapping("/audit")
public class AuditController {
	@Autowired
	AuditService auditService;
	@Autowired
	MemberService memberService;
	@Autowired
	ProductOptionService proOptService;
	@Autowired
	ProductService proService;
	@Autowired
	MakerInfoService makerService;
	@RequestMapping("")
	public ModelAndView auditListView(@RequestParam(defaultValue = "all") String searchOpt,@RequestParam(defaultValue = "") String words,@RequestParam(defaultValue = "1") int page) {
		ModelAndView mav = new ModelAndView();
		
		int resultCnt = auditService.getAuditAdminCount(searchOpt, words);
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
		
		List<Map<String,Object>> avoList = auditService.getAuditAdminList(searchOpt, words, pageStart, pagePer);

		mav.addObject("avoList",avoList);
		mav.addObject("count",resultCnt);
		mav.addObject("searchOpt",searchOpt);
		mav.addObject("words",words);
		mav.addObject("pageStart",pageStart);
		mav.addObject("paging",pageMap);
		mav.addObject("auditStatus", DbStatus.auditStatus);
		mav.addObject("template", "audit");
		mav.addObject("mypage", "list");
		mav.setViewName("/admin/admin");
		return mav;
	}
	@RequestMapping(value="/getAuditModify" ,method=RequestMethod.GET)
	public ModelAndView getAuditModifyView(@RequestParam int id) {
		ModelAndView mav = new ModelAndView();
		AuditVO avo = auditService.getAuditDetail(id);
		MemberVO mvo = memberService.getMemberDetail(avo.getMember_id());
		ProductVO pvo = proService.getProductDetailAudit(id);
		MakerInfoVO mavo = makerService.getMakerDetailAudit(id);
		List<ProductOptionVO> optList = proOptService.getOptionProductList(pvo.getId());
		mav.addObject("auditStatus", DbStatus.auditStatus);
		mav.addObject("template", "audit");
		mav.addObject("mypage", "modify");
		mav.addObject("avo", avo);
		mav.addObject("mvo", mvo);
		mav.addObject("pvo", pvo);
		mav.addObject("mavo", mavo);
		mav.addObject("optList", optList);
		mav.setViewName("/admin/admin");
		return mav;
	}
	@RequestMapping(value="/getAuditModify",method = RequestMethod.POST)
	public ModelAndView getAuditModifyDO(@RequestParam int id,@RequestParam int status) {
		auditService.updateAuditStatus(id, status);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/audit");
		return mav;
	}
}
