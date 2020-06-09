package com.krahs123.wathis.controller.admin;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.krahs123.wathis.model.BoardVO;
import com.krahs123.wathis.model.MemberVO;
import com.krahs123.wathis.service.article.ArticleService;
import com.krahs123.wathis.service.board.BoardService;
import com.krahs123.wathis.service.member.MemberService;
import com.krahs123.wathis.service.product.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	MemberService memSer;
	@Autowired
	BoardService boardSer;
	@Autowired
	ArticleService articleSer;
	@Autowired
	ProductService proSer;
	@RequestMapping("")
	public ModelAndView viewAdminMain() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/users?template=users&mypage=list");
		return mav;
	}
	@RequestMapping("/totalCnt")
	@ResponseBody
	public Map<String, Object> totalCntAjax(){
		Map<String,Object> map = new HashedMap();
		int memCnt = memSer.getMemberCount("all", "");
		
		List<BoardVO> boardList = boardSer.getBoardList("all", "", 0, 999999999);
		int articleCnt = 0;
		for(BoardVO bvo : boardList) {
			articleCnt += articleSer.getArticleCount(bvo.getBoardCode(), "all", "");
		}
		int proCnt = proSer.getProductCount(null, "");
		map.put("memCnt", memCnt);
		map.put("articleCnt", articleCnt);
		map.put("proCnt", proCnt);
		map.put("boardCnt", boardList.size());
		return map;
	}
}
