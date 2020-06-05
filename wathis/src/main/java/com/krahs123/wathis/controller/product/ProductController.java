package com.krahs123.wathis.controller.product;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.krahs123.wathis.model.AuditVO;
import com.krahs123.wathis.model.BoardVO;
import com.krahs123.wathis.model.CategoryVO;
import com.krahs123.wathis.model.MakerInfoVO;
import com.krahs123.wathis.model.MemberAddrVO;
import com.krahs123.wathis.model.MemberVO;
import com.krahs123.wathis.model.MenuVO;
import com.krahs123.wathis.model.OrderDetailVO;
import com.krahs123.wathis.model.OrderVO;
import com.krahs123.wathis.model.PopupVO;
import com.krahs123.wathis.model.ProductCommentVO;
import com.krahs123.wathis.model.ProductNoticeVO;
import com.krahs123.wathis.model.ProductOptionVO;
import com.krahs123.wathis.model.ProductVO;
import com.krahs123.wathis.service.category.CategoryService;
import com.krahs123.wathis.service.member.MemberAddrService;
import com.krahs123.wathis.service.member.MemberService;
import com.krahs123.wathis.service.menu.MenuService;
import com.krahs123.wathis.service.order.OrderDetailService;
import com.krahs123.wathis.service.order.OrderService;
import com.krahs123.wathis.service.popup.PopupService;
import com.krahs123.wathis.service.product.AuditService;
import com.krahs123.wathis.service.product.MakerInfoService;
import com.krahs123.wathis.service.product.ProductCommentService;
import com.krahs123.wathis.service.product.ProductNoticeService;
import com.krahs123.wathis.service.product.ProductOptionService;
import com.krahs123.wathis.service.product.ProductService;
import com.krahs123.wathis.service.siteConfig.SiteConfigService;
import com.krahs123.wathis.util.AES256;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	MenuService menuService;
	@Autowired
	PopupService popupService;
	@Autowired
	SiteConfigService siteService;
	@Autowired
	CategoryService cateService;
	@Autowired
	ProductService proService;
	@Autowired
	ProductCommentService proComService;
	@Autowired
	ProductNoticeService proNotService;
	@Autowired
	AuditService auditService;
	@Autowired
	MakerInfoService makerService;

	@Autowired
	ProductOptionService proOptService;
	@Autowired
	MemberService memService;
	@Autowired
	MemberAddrService memAddrService;
	@Autowired
	OrderService orderService;
	@Autowired
	OrderDetailService orderDetailService;
	
	final String BASEDIR="/product/";
	//상품 페이지
	@RequestMapping("/product")
	public ModelAndView viewProduct(@RequestParam int id) {
		ModelAndView mav = new ModelAndView();
		List<MenuVO> menuList = menuService.getMenuList();
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");

		int proComCnt = proComService.getProCommentCount(id);
		int proNotCnt = proNotService.getProNoticeCount(id);
		
		ProductVO pvo = proService.getProductDetail(id);
		AuditVO avo = auditService.getAuditDetail(pvo.getAudit_id());
		MakerInfoVO mvo = makerService.getMakerDetailAudit(pvo.getAudit_id());
		String cate = cateService.getCateTitle(pvo.getCategory_id());
		List<ProductCommentVO> proComList = proComService.getProCommentList(id);
		List<ProductNoticeVO> proNotList = proNotService.getProNoticeList(id);
		List<ProductOptionVO> proOptList = proOptService.getOptionProductList(id);
		
		Date now = new Date();
		String[] end_day = pvo.getEnd_date().split("-");
		Date end_date = new Date(Integer.parseInt(end_day[0])-1900,Integer.parseInt(end_day[1])-1,Integer.parseInt(end_day[2]));
		int dDay = (int)Math.ceil( (end_date.getTime() - now.getTime())/(double)(1000*60*60*24) );
		
		mav.setViewName(BASEDIR+"product");
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
		mav.addObject("menuList", menuList);
		mav.addObject("pvo", pvo);
		mav.addObject("avo", avo);
		mav.addObject("cate", cate);
		mav.addObject("proComCnt", proComCnt);
		mav.addObject("proNotCnt", proNotCnt);
		mav.addObject("proComList", proComList);
		mav.addObject("proNotList", proNotList);
		mav.addObject("proOptList", proOptList);
		mav.addObject("dDay", dDay);
		mav.addObject("mvo", mvo);
		return mav;
	}
	//상품 옵션 선택 페이지
	@RequestMapping("/product-select")
	public ModelAndView viewProductSelect(@RequestParam int id,@RequestParam(defaultValue = "0") int option_id) {
		ModelAndView mav = new ModelAndView();
		List<MenuVO> menuList = menuService.getMenuList();
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");

		ProductVO pvo = proService.getProductDetail(id);
		List<ProductOptionVO> proOptList = proOptService.getOptionProductList(id);
		String cate = cateService.getCateTitle(pvo.getCategory_id());
		mav.setViewName(BASEDIR+"product-select");
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
		mav.addObject("pvo", pvo);
		mav.addObject("proOptList", proOptList);
		mav.addObject("cate", cate);
		mav.addObject("option_id", option_id);
		return mav;
	}
	// 상품 결제 페이지(화면
	@RequestMapping("/product-payment")
	public ModelAndView viewProductPayment(
			@RequestParam(value = "buy-item[]") List<String> optIDList,
			@RequestParam(value = "buy-item-count[]") List<String> optCntList,
			@RequestParam(value = "buy-item-option[]") List<String> optOptionList, 
			@RequestParam String donation, 
			@RequestParam int id,
			HttpSession session) throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException {
		ModelAndView mav = new ModelAndView();
		List<MenuVO> menuList = menuService.getMenuList();
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");
		ProductVO pvo = proService.getProductDetail(id);
		MemberVO mvo = memService.getMemberDetail(Integer.parseInt(session.getValue("id").toString()));
		AES256 aes = new AES256();
		if(mvo.getUtel()!=null) {
			mvo.setUtel(aes.decrypt(mvo.getUtel()));
		}
			
		/*금액 총합 결산 하기 + 배송비 산정 하기*/
		int donationMoney =(donation.equals("")||donation==null)?0:Integer.parseInt(donation.replace(",", ""));
		//추가 후원비
		int total = donationMoney;
		//금액 총합
		int delevery = 0;
		//배송비
		int i=0;
		List<Integer> itemPrice = new ArrayList<>();
		//개별금액
		List<String> itemTitle = new ArrayList<>();
		//개별이름
		for(String optID:optIDList) {
			ProductOptionVO pvOpt = proOptService.getOptionDetail(Integer.parseInt(optID));
			itemTitle.add(pvOpt.getTitle());
			itemPrice.add(pvOpt.getPrice());
			total += pvOpt.getPrice()*Integer.parseInt(optCntList.get(i));
			//배송비 산정 (가장 금액 높은 배송비 한번만 결제 되게)
			delevery = (pvOpt.getDelevery_chk().equals("1")&&pvOpt.getDelevery_price()>delevery)?pvOpt.getDelevery_price():delevery;
			i++;
		}
		total+=delevery;
		/*//금액 총합 결산 하기 + 배송비 산정 하기 */
		String cate = cateService.getCateTitle(pvo.getCategory_id());
		
		//주소 정보 불러오기
		MemberAddrVO baseAddr = memAddrService.getAddrFirst(mvo.getId());//기본 주소 정보
		if(baseAddr!=null) {
			baseAddr.setShip_tel(aes.decrypt(baseAddr.getShip_tel()));
		}
		List<MemberAddrVO> addrList = memAddrService.getAddrList(mvo.getId());//주소 리스트
		for(int j=0;j<addrList.size();j++) {
			addrList.get(j).setShip_tel(aes.decrypt(addrList.get(j).getShip_tel()));
		}
		//주소 정보 불러오기 끝
		
		mav.setViewName(BASEDIR+"product-payment");
		//사이트 정보 + 메뉴 정보
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
		mav.addObject("menuList", menuList);
		//기본 정보(상품 + 회원 + 카테고리 이름)
		mav.addObject("pvo", pvo);
		mav.addObject("mvo", mvo);
		mav.addObject("cate", cate);
		//옵션정보
		mav.addObject("donationMoney", donationMoney);
		mav.addObject("total", total);
		mav.addObject("delevery", delevery);
		mav.addObject("optIDList", optIDList);
		mav.addObject("optCntList", optCntList);
		mav.addObject("optOptionList", optOptionList);
		mav.addObject("optPriceList", itemPrice);
		mav.addObject("optTitleList", itemTitle);
		//옵션정보끝
		//주소 정보
		mav.addObject("baseAddr", baseAddr);
		mav.addObject("addrList", addrList);
		//주소 정보끝
		return mav;
	}
	//상품 결제 페이지(동작)
	@RequestMapping("/paymentDo")
	@ResponseBody
	public String productPaymentDo(
			@ModelAttribute OrderVO ovo,
			@RequestParam(value = "buy-item[]") List<String> optIDList,
			@RequestParam(value = "buy-item-count[]") List<String> optCntList,
			@RequestParam(value = "buy-item-option[]") List<String> optOptionList,
			@RequestParam String utel,
			@RequestParam int deleverChk,
			@RequestParam(value = "receiver_addrDetail[]") List<String> receiver_addrDetail
			) {
		StringBuilder sb = new StringBuilder();
		
		AES256 aes = new AES256();
		ProductVO pvo = proService.getProductDetail(ovo.getProduct_id());
		ovo.setReceiver_tel(aes.encrypt(ovo.getReceiver_tel()));
		ovo.setReceiver_addr3(receiver_addrDetail.get(0)+" "+receiver_addrDetail.get(1));
		int result = 0;
		MemberVO mvo = memService.getMemberDetail(ovo.getMember_id());
		//회원 전화번호 없으면 입력해줌
		if(!utel.equals("")||utel!=null) {
			utel =aes.encrypt(utel);
			memService.updateMemberTel(ovo.getMember_id(),utel);
		}
		//새주소면 입력
		if(deleverChk==0) {
			MemberAddrVO mavo = new MemberAddrVO();
			mavo.setAddr1(ovo.getReceiver_addr1());
			mavo.setAddr2(ovo.getReceiver_addr2());
			mavo.setAddr3(receiver_addrDetail.get(0));
			mavo.setAddr4(receiver_addrDetail.get(1));
			mavo.setMember_id(ovo.getMember_id());
			mavo.setShip_desc("");
			mavo.setShip_name(ovo.getReceiver_name());
			mavo.setShip_tel(ovo.getReceiver_tel());
			memAddrService.setAddr(mavo);
		}

		// 상품 등록
		result += orderService.setOrder(ovo);
		// 상품 상세 등록
		OrderDetailVO odvo = new OrderDetailVO();
		odvo.setMember_id(ovo.getMember_id());
		odvo.setProduct_id(ovo.getProduct_id());
		int i=0;
		String option="";
		for(String optID:optIDList) {
			ProductOptionVO pvOpt = proOptService.getOptionDetail(Integer.parseInt(optID));
			odvo.setOption_id(Integer.parseInt(optID));
			odvo.setAmount(Integer.parseInt(optCntList.get(i)));
			odvo.setPrice(pvOpt.getPrice());
			odvo.setOption_name(pvOpt.getTitle()+" "+optOptionList.get(i));
			result+=orderDetailService.setOrderDetail(odvo);
			i++;
		}
		sb.append("<script>");
		sb.append("alert('정상적으로 구매 되었습니다.');");
		sb.append("location.replace('/product/product?id="+ovo.getProduct_id()+"');");
		sb.append("</script>");
		return sb.toString();
	}
	//상품리스트 페이지
	@RequestMapping("/product-list")
	public ModelAndView viewProductList(@RequestParam(defaultValue = "") String words,@RequestParam(defaultValue = "") String category_id) {
		ModelAndView mav = new ModelAndView();
		List<MenuVO> menuList = menuService.getMenuList();
		List<PopupVO> popupList =popupService .getDisplayList("product");
		List<CategoryVO> cateList = cateService.getCateList();
		Map<String, Object> headConfig = siteService.getSiteConfigGroup("head");
		Map<String, Object> footConfig = siteService.getSiteConfigGroup("footer");
		mav.setViewName(BASEDIR+"product-list");
		mav.addObject("words", words);
		mav.addObject("category_id", category_id);
		mav.addObject("headConfig", headConfig);
		mav.addObject("footConfig", footConfig);
		mav.addObject("menuList", menuList);
		mav.addObject("popupList", popupList);
		mav.addObject("cateList", cateList);
		return mav;
	}
	//상품리스트 ajax 페이지
	@RequestMapping("/product-ajax")
	@ResponseBody
	public Map<String,Object> viewProductAjax(@RequestParam(defaultValue = "") String words,@RequestParam(defaultValue = "1") int page,@RequestParam(defaultValue = "") String category_id) {
		Map<String,Object> map = new HashedMap();

		int resultCnt = proService.getProductCount(category_id,words);
		
		int pagePer = 6;//페이지당 게시물수
		int pageStart =(page-1)*pagePer;//페이시 시작 인덱스
		int pageCnt = (int)Math.ceil((double)resultCnt/pagePer);//전체 페이지의 수
		
		String msg ="검색에 실패하였습니다.";
		boolean status =false;
		
		List<Map<String, Object>> pvoList = proService.getProductList(category_id,words, pageStart, pagePer);
		
		if(pvoList.size()>0) {
			msg ="검색된 결과는 "+resultCnt+"건 입니다.";
			status =true;
			map.put("resultCnt", resultCnt);
			map.put("nextPage", page+1);
			map.put("pageCnt", pageCnt);
			map.put("pvoList", pvoList);
		}else {
			msg ="검색된 결과가 없습니다.";
			status =true;
			map.put("nextPage", page+1);
			map.put("resultCnt", 0);
			
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
	}
	
	//관리자 리스트
	@RequestMapping("")
	public ModelAndView viewProductAdminList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("template", "product");
		mav.addObject("mypage", "list");
		mav.setViewName("/admin/admin");
		return mav;
	}
	
	
}
