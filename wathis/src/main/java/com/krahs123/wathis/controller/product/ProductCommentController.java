package com.krahs123.wathis.controller.product;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.krahs123.wathis.model.MemberVO;
import com.krahs123.wathis.model.ProductCommentVO;
import com.krahs123.wathis.service.member.MemberService;
import com.krahs123.wathis.service.menu.MenuService;
import com.krahs123.wathis.service.product.ProductCommentServiceImpl;
import com.krahs123.wathis.service.product.ProductService;

@Controller
@RequestMapping("/proComment")
public class ProductCommentController {
	@Autowired
	ProductCommentServiceImpl proComService;
	@Autowired
	MemberService memberService;
	@RequestMapping("/setComment")
	@ResponseBody
	public Map<String, Object> setComment(@ModelAttribute ProductCommentVO pvo){

		Map<String,Object> map = new HashedMap();
		String msg ="댓글 등록에 실패하였습니다.";
		boolean status =false;
		MemberVO mvo = memberService.getMemberDetail(pvo.getMember_id());
		pvo.setMember_imgae(mvo.getUimg());
		pvo.setMember_userid(mvo.getUname());
		int result = proComService.setProComment(pvo);
		if(result>0) {
			msg ="댓글이 등록되었습니다.";
			status =true;
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
	}

	@RequestMapping("/getComment")
	@ResponseBody
	public Map<String, Object> getComment(@RequestParam int product_id){

		Map<String,Object> map = new HashedMap();
		String msg ="댓글 출력에 실패하였습니다.";
		boolean status =false;
		int count = proComService.getProCommentCount(product_id);
		List<ProductCommentVO> pvoList = proComService.getProCommentList(product_id);
		if(count>0) {
			msg ="댓글이 출력되었습니다.";
			status =true;
		}
		map.put("msg", msg);
		map.put("status", status);
		map.put("count", count);
		map.put("pvoList", pvoList);
		return map;
	}
	@RequestMapping("/deleteComment")
	@ResponseBody
	public Map<String, Object> deleteComment(@RequestParam int id){

		Map<String,Object> map = new HashedMap();
		String msg ="댓글 삭제에 실패하였습니다.";
		boolean status =false;
		int result = proComService.deleteProComment(id);
		if(result>0) {
			msg ="댓글이 삭제되었습니다.";
			status =true;
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
	}
}
