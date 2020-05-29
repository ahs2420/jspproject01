package com.krahs123.wathis.controller.article;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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

import com.krahs123.wathis.model.ArticleVO;
import com.krahs123.wathis.model.BoardVO;
import com.krahs123.wathis.model.MenuVO;
import com.krahs123.wathis.service.article.ArticleService;
import com.krahs123.wathis.service.menu.MenuService;
import com.krahs123.wathis.util.FileControl;


@Controller
//게시물 페이지
@RequestMapping("/article")
public class AtricleController {
	final String DIR = "/article/";
	@Autowired
	ArticleService articleService;
	@Autowired
	MenuService menuService;
	//리스트
	@RequestMapping("")
	public ModelAndView viewArticleList(
			@RequestParam String boardCode,
			@RequestParam(defaultValue = "subject") String searchOpt,
			@RequestParam(defaultValue =  "") String words,
			@RequestParam(defaultValue = "1") int page
			) {
		
		ModelAndView mav = new ModelAndView();
		BoardVO bvo = articleService.getBoardConfig(boardCode);
		int resultCnt = articleService.getArticleCount(boardCode,searchOpt,words);
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
		
		List<ArticleVO> avoList = articleService.getArticleList(boardCode,searchOpt,words,pageStart,pagePer);

		List<MenuVO> menuList = menuService.getMenuList();
		mav.addObject("menuList", menuList);
		mav.addObject("template", bvo.getBoardListTemplate());
		mav.addObject("mypage", "list");
		mav.addObject("bvo", bvo);
		mav.addObject("avoList",avoList);
		mav.addObject("count",resultCnt);
		mav.addObject("searchOpt",searchOpt);
		mav.addObject("words",words);
		mav.addObject("pageStart",pageStart);
		mav.addObject("paging",pageMap);
		mav.setViewName(DIR+"getArticle");
		return mav;
	}
	//작성(화면)
	@RequestMapping(value = "/setArticle",method = RequestMethod.GET)
	public ModelAndView viewSetArticle(@RequestParam String boardCode) {
		ModelAndView mav = new ModelAndView();
		BoardVO bvo = articleService.getBoardConfig(boardCode);
		List<MenuVO> menuList = menuService.getMenuList();
		mav.addObject("menuList", menuList);
		mav.addObject("bvo", bvo);
		mav.addObject("template", "setArticle.jsp");
		mav.addObject("mypage", "write");
		mav.setViewName(DIR+"getArticle");
		return mav;
	}
	//작성(동작)
	@RequestMapping(value = "/setArticle",method = RequestMethod.POST)
	@ResponseBody
	public String doSetArticle(@ModelAttribute ArticleVO avo,@RequestPart MultipartFile files,HttpServletRequest hsr) {
		StringBuilder sb = new StringBuilder();
		FileControl fileAdd = new FileControl();
		Map<String,Object> fileResult = fileAdd.fileUpload(files, "img",null);
		String msg="게시물이 등록 되었습니다."+fileResult.get("msg");
		String url="/article?boardCode="+avo.getBoardCode();
		if(!files.isEmpty()) {
			if((boolean)fileResult.get("status")) {
				avo.setFileName(fileResult.get("fileName").toString());
				avo.setFileOriName(fileResult.get("fileOrgName").toString());
				avo.setFileUrl(fileResult.get("uploadDIR").toString());
				articleService.setArticle(avo);
			}else {
				msg=fileResult.get("msg").toString();
				url="/article/setArticle?boardCode="+avo.getBoardCode();
			}
		}else {
			articleService.setArticle(avo);
		}
		sb.append("<script>");
		sb.append("alert('"+msg+"');");
		sb.append("location.replace('"+url+"');");
		sb.append("</script>");
		return sb.toString();
	}
	//상세보기
	@RequestMapping("/detail")
	public ModelAndView viewDetail(@RequestParam String boardCode, int id,HttpSession session) {
		ModelAndView mav = new ModelAndView();
		BoardVO bvo = articleService.getBoardConfig(boardCode);

		List<MenuVO> menuList = menuService.getMenuList();
		mav.addObject("menuList", menuList);
		//세션 등록으로 하루 동안 동일 게시물 보면 hit 한번만 올라가게 하기
		List<Integer> hit = (List<Integer>) session.getAttribute("hit_"+boardCode);
		//게시판 코드를 이용해서 세션을 가져옴 -> getAttribute는 Object이므로 형변환 필수
		if(hit!=null) {
			//세션이 있을때
			if(hit.indexOf(id)<0) {
				//현제 게시물을 본적이 없으면 
				articleService.updateHit(boardCode, id);
				//hit 1증가
				hit.add(id);
				//게시물 ID 를 session에 추가할 준비
				session.setMaxInactiveInterval(60*60*24);
				//세션유지시간 60*60*24초(24시간)
				session.setAttribute("hit_"+boardCode, hit);
				//변경된 세션 등록
			}
		}else {
			// 세션이 아예없을때
			articleService.updateHit(boardCode, id);
			hit= new ArrayList<>();
			//hit가 null 이므로 생성자를 만들어줌
			// 나머지는 같다
			hit.add(id);
			session.setMaxInactiveInterval(60*60*24);
			session.setAttribute("hit_"+boardCode, hit);
		}

		
		ArticleVO resultVO = articleService.getArticleDetail(boardCode,id); 
		ArticleVO nextVO = articleService.getArticleNext(boardCode, id); 
		ArticleVO prevVO = articleService.getArticlePrev(boardCode, id);
		mav.addObject("template", bvo.getBoardContentTemplate());
		mav.addObject("mypage", "content");
		mav.addObject("bvo", bvo); 
		mav.addObject("avo", resultVO);
		mav.addObject("avoNext", nextVO);
		mav.addObject("avoPrev", prevVO);
		mav.setViewName(DIR+"getArticle");
		return mav;
	}
	//삭제 ajax
	@RequestMapping("/deleteItemAjax")
	@ResponseBody
	public Map<String,Object> deleteItemAjax(@RequestParam String boardCode,@RequestParam(value="id") int id,HttpServletRequest hsr){
		Map<String,Object> map = new HashMap<>();
		ArticleVO avo = articleService.getArticleDetail(boardCode,id);
		String msg="게시글 삭제에 실패하였습니다\n.관리자에게 문의해 주세요.";
		boolean status=false;
		articleService.deleteCommentLink(boardCode, id);//댓글 삭제
		
		if(avo.getFileName()!=null) {
			//파일 있을때 파일 삭제
			FileControl fileAdd = new FileControl();
			Map<String,Object> fileMap = fileAdd.fileDelete(avo.getFileUrl(), avo.getFileName(),null);//파일 삭제
//			if(!(boolean)fileMap.get("status")) {
//				//파일 삭제에 실패하면 바로 에러띄움
//				msg+="(err File)";
//				map.put("msg", msg);
//				map.put("status", status);
//				return map;
//			}
		}
		int result = articleService.deleteArticle(boardCode, id);
		if(result>0) {
			msg="게시글이 삭제되었습니다.";
			status=true;
		}
		
		map.put("msg", msg);
		map.put("status", status);
		return map;
	}
	//삭제(일반)
	@RequestMapping("/deleteItem")
	@ResponseBody
	public String deleteItem(@RequestParam String boardCode,@RequestParam int id,HttpServletRequest hsr) {
		Map<String,Object> map=this.deleteItemAjax(boardCode, id, hsr);
		StringBuilder sb = new StringBuilder();
		String url = "/article?boardCode="+boardCode;
		sb.append("<script>");
		sb.append("alert('"+map.get("msg")+"');");
		sb.append("location.replace('"+url+"');");
		sb.append("</script>");
		return sb.toString();
	}
	//선택 삭제
	@RequestMapping("/deleteItemSelAjax")
	@ResponseBody
	public Map<String,Object> deleteItemSelAjax(@RequestParam String boardCode,@RequestParam(value = "id[]") List<Integer> idList,HttpServletRequest hsr) {
		Map<String,Object> map= new HashMap<>();
		int result=0;
		String msg="게시글 삭제에 실패하였습니다\n.관리자에게 문의해 주세요.";
		boolean status=false;
		
		for(int id:idList) {
			Map<String,Object> deleteMap=this.deleteItemAjax(boardCode, id, hsr);
			result=((boolean)deleteMap.get("status"))?result+1:result;
		}
		if(result>0) {
			msg="게시글이 삭제되었습니다.";
			status=true;
		}
		map.put("msg", msg);
		map.put("status", status);
		return map;
	}
	//답글 달기(페이지)
	@RequestMapping("/getArticleReply")
	public ModelAndView getArticleReply(@RequestParam String boardCode,@RequestParam int id) {
		ModelAndView mav = new ModelAndView();
		BoardVO bvo = articleService.getBoardConfig(boardCode);
		ArticleVO resultVO = articleService.getArticleDetail(boardCode,id); 
		mav.addObject("bvo", bvo);
		mav.addObject("avo",resultVO);
		mav.setViewName(DIR+"getArticleReply");
		return mav;
	}
	//답글달기(동작)
	@RequestMapping("/doArticleReply")
	@ResponseBody
	public String doArticleReply(@ModelAttribute ArticleVO avo,@RequestPart MultipartFile files,HttpServletRequest hsr) {
		StringBuilder sb = new StringBuilder();
		String msg="시스템 오류입니다.관리자에게 문의해 주세요.";
		String url="/article?boardCode="+avo.getBoardCode();
		
		int result = articleService.getArticleReplyInfo(avo);

		if(result>0) {
			msg="게시물이 등록 되었습니다.";
		}
		sb.append("<script>");
		sb.append("alert('"+msg+"');");
		sb.append("location.replace('"+url+"');");
		sb.append("</script>");
		return sb.toString();
	}
	//게시물 수정하기(페이지)
	@RequestMapping(value = "/modifyArticle",method = RequestMethod.GET)
	public ModelAndView modifyArticleView(@RequestParam String boardCode,@RequestParam int id) {
		ModelAndView mav = new ModelAndView();
		BoardVO bvo = articleService.getBoardConfig(boardCode);
		ArticleVO avo = articleService.getArticleDetail(boardCode, id);
		List<MenuVO> menuList = menuService.getMenuList();
		mav.addObject("menuList", menuList);
		mav.addObject("bvo",bvo);
		mav.addObject("avo",avo);
		mav.addObject("template", "getArticleModify.jsp");
		mav.addObject("mypage", "write");
		mav.setViewName(DIR+"getArticle");
		return mav;
	}
	//게시물 수정(동작)
	@RequestMapping(value = "/modifyArticle",method = RequestMethod.POST)
	@ResponseBody
	public String modifyArticleDO(@ModelAttribute ArticleVO avo,@RequestPart MultipartFile files,HttpServletRequest hsr) {
		StringBuilder sb = new StringBuilder();
		
		String msg="시스템 오류입니다.관리자에게 문의해 주세요.";
		String url="/article?boardCode="+avo.getBoardCode();
		int result;
		Map<String,Object> fileMap;
		if(!files.getOriginalFilename().equals("")) {
			//파일 수정 할때
			FileControl fileAdd = new FileControl();
			if(!avo.getFileName().equals("")&&avo.getFileName()!=null) {
				//원본 파일이 있을때 삭제
				fileAdd.fileDelete(avo.getFileUrl(), avo.getFileName(),null);
			}
			
			fileMap = fileAdd.fileUpload(files, "nomal",null);
			if((boolean)fileMap.get("status")) {
				avo.setFileName(fileMap.get("fileName").toString());
				avo.setFileOriName(fileMap.get("fileOrgName").toString());
				avo.setFileUrl(fileMap.get("uploadDIR").toString());
				result = articleService.modifyArticle(avo);
				if(result>0) {
					msg="게시물이 수정 되었습니다.";
					url="/article/detail?boardCode="+avo.getBoardCode()+"&id="+avo.getId();
				}
			}else {
				msg+="(err: file)";
			}
		}else{
			//파일 수정 없을 때
			result = articleService.modifyArticle(avo);
			if(result>0) {
				msg="게시물이 수정 되었습니다.";
				url="/article/detail?boardCode="+avo.getBoardCode()+"&id="+avo.getId();
			}
		}
		sb.append("<script>");
		sb.append("alert('"+msg+"');");
		sb.append("location.replace('"+url+"');");
		sb.append("</script>");
		return sb.toString();
	}
}
