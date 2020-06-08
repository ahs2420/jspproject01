package com.krahs123.wathis.controller.product;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;

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
import com.krahs123.wathis.model.MailVO;
import com.krahs123.wathis.model.MakerInfoVO;
import com.krahs123.wathis.model.MemberVO;
import com.krahs123.wathis.model.ProductOptionVO;
import com.krahs123.wathis.model.ProductVO;
import com.krahs123.wathis.service.mail.MailService;
import com.krahs123.wathis.service.member.MemberService;
import com.krahs123.wathis.service.product.AuditService;
import com.krahs123.wathis.service.product.MakerInfoService;
import com.krahs123.wathis.service.product.ProductOptionService;
import com.krahs123.wathis.service.product.ProductService;
import com.krahs123.wathis.service.siteConfig.SiteConfigService;
import com.krahs123.wathis.util.MailSend;

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
	@Autowired
	SiteConfigService siteService;
	@Autowired
	MailService mailService;
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
		mav.addObject("makerType", DbStatus.makerType);
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
	public ModelAndView getAuditModifyDO(
			HttpServletRequest request,
			@RequestParam int id,
			@RequestParam int status,
			@RequestParam int org_status,
			@RequestParam String mailTo,
			@RequestParam String proName) {
		MailSend ms = new MailSend();
		MailVO mvo = new MailVO();
		mvo.setMailto(mailTo);
		String siteName = siteService.getSiteConfigContent("head", "siteName");
		String ceo = siteService.getSiteConfigContent("footer", "ceo");
		
		String content="";
		String title=siteName+" - '"+proName+"' 심사 결과입니다.";
		if(org_status!=status) {
			auditService.updateAuditStatus(id, status);
			if(status==0||status==3) {
				if(status==0) {
					//반려일때
					content=siteName+"입니다. "+proName+"은 안타깝게도 심사에 반려되었습니다. <br>하지만 내용 수정 후에 다시 심사 신청이 가능하오니 내용 추가 후에 다시 심사 신청 해주시길 바랍니다. <br>감사합니다.<br>"+siteName+" "+ceo+" 올림";
				}
				if(status==3){
					//승인일때
					int pro_id = proService.getProductId(id);
					proService.updateProAutoStatus(pro_id, 1);
					content="축하합니다. "+siteName+"입니다. "+proName+"은 심사에 통과되었습니다. <br> 펀딩은 시작일자 이후로 자동으로 시작 되오니 변경 사항이 있을경우 시작전에 미리 변경 하시길 바랍니다.<br> 감사합니다.<br>"+siteName+" "+ceo+" 올림";
				}
				
				mvo.setContent(content);
				mvo.setTitle(title);
//				try {
//					ms.mailSender(request, mvo);
//				} catch (UnsupportedEncodingException | MessagingException | GeneralSecurityException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
				mailService.setMail(mvo);
			}
		}
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/audit");
		return mav;
	}
}
