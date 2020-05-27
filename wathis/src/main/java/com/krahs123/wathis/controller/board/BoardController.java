package com.krahs123.wathis.controller.board;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.krahs123.wathis.model.BoardVO;
import com.krahs123.wathis.service.board.BoardService;
import com.krahs123.wathis.util.FileControl;

@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	BoardService boardService;
	//관리자 게시판 리스트
	@RequestMapping("")
	public ModelAndView getBoardList(
			@RequestParam(defaultValue = "all") String searchOpt,
			@RequestParam(defaultValue = "") String words,
			@RequestParam(defaultValue = "1") int page
			) {
		ModelAndView mav = new ModelAndView();
		int boardCount = boardService.getBoardCount(searchOpt,words);
		
		//페이징
		Map<String,Object> paging = new HashMap<>();
		int pagePer = 10;//페이지 숫자
		int pageNum = (int)Math.ceil((double)boardCount/pagePer);//전체페이지의 수
		int pageIndex = (page-1)*pagePer;
		int pagingPer = 5; //페이지가 나올 갯수
		int startPage = ((int)Math.ceil((double)page/pagingPer)-1)*(pagingPer)+1;
		int endPage =startPage + pagingPer-1;
		endPage=(endPage>pageNum)?pageNum:endPage;
		paging.put("page", page);
		paging.put("startPage", startPage);
		paging.put("endPage", endPage);
		paging.put("pageNum", pageNum);
		
		List<BoardVO> boardList = boardService.getBoardList(searchOpt,words,pageIndex,pagePer);
		
		mav.addObject("template","board");
		mav.addObject("mypage","list");
		mav.addObject("searchOpt",searchOpt);
		mav.addObject("words",words);
		mav.addObject("boardList",boardList);
		mav.addObject("boardCount",boardCount);
		mav.addObject("paging",paging);
		mav.setViewName("/admin/admin");
		return mav;
	}
	//관리자 게시판 상세보기
	@RequestMapping("/getBoard")
	public ModelAndView getBoard(int id) {
		ModelAndView mav = new ModelAndView();
		BoardVO bvo = boardService.getBoardDetail(id);
		mav.addObject("template","board");
		mav.addObject("mypage","view");
		mav.addObject("bvo",bvo);
		mav.setViewName("/admin/admin");
		return mav;
	}
	//관리자 게시판 등록하기(화면)
	@RequestMapping(value = "/setBoard",method = RequestMethod.GET)
	public ModelAndView setBoard(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		HttpSession reSession =  request.getSession();
		String rootPath=reSession.getServletContext().getRealPath("/");
		String dirpath="WEB-INF/views/board/template";
		FileControl fileCon = new FileControl();
		List<String> listTemplate = fileCon.fileList(rootPath+dirpath+"/list");
		List<String> contentTemplate = fileCon.fileList(rootPath+dirpath+"/content");
		

		mav.addObject("listTemplate",listTemplate);
		mav.addObject("contentTemplate",contentTemplate);
		mav.addObject("template","board");
		mav.addObject("mypage","insert");
		mav.setViewName("/admin/admin");
		return mav;
	}
	//관리자 게시판 등록하기(동작)
	@RequestMapping(value="/setBoard",method = RequestMethod.POST)
	@ResponseBody
	public String setBoardDO(@ModelAttribute BoardVO vo) {
		StringBuilder sb = new StringBuilder();
		
		
		int result = boardService.setBoard(vo);
		String msg="게시판 등록이 실패하였습니다. 관리자에게 문의해 주세요.";
		String url="/board/setBoard";
		sb.append("<script>");
		if(result>0) {
			//게시판 테이블+댓글 테이블  CREATE
			boardService.createTblArticle(vo.getBoardCode());
			boardService.createTblComment(vo.getBoardCode());
			msg="게시판이 등록되었습니다.";
			url="/board";
		}
		sb.append("alert('"+msg+"');");
		sb.append("location.replace('"+url+"');");
		sb.append("</script>");
		return sb.toString();
	}
	//게시판 수정(화면)
	@RequestMapping(value="/getBoardModify" , method = RequestMethod.GET)
	public ModelAndView getBoardModify(HttpServletRequest request,@RequestParam int id) {
		ModelAndView mav = new ModelAndView();
		BoardVO bvo = boardService.getBoardDetail(id);

		HttpSession reSession =  request.getSession();
		String rootPath=reSession.getServletContext().getRealPath("/");
		String dirpath="WEB-INF/views/board/template";
		FileControl fileCon = new FileControl();
		List<String> listTemplate = fileCon.fileList(rootPath+dirpath+"/list");
		List<String> contentTemplate = fileCon.fileList(rootPath+dirpath+"/content");

		mav.addObject("listTemplate",listTemplate);
		mav.addObject("contentTemplate",contentTemplate);
		mav.addObject("template","board");
		mav.addObject("mypage","modify");
		mav.addObject("bvo",bvo);
		mav.setViewName("/admin/admin");
		return mav;
	}
	//게시판 수정(동작)
	@RequestMapping(value="/getBoardModify" , method = RequestMethod.POST)
	@ResponseBody
	public String getBoardModifyDO(@ModelAttribute BoardVO bvo) {
		StringBuilder sb = new StringBuilder();
		int result = boardService.updateBoard(bvo);
		String msg="게시판 수정이 실패하였습니다. 관리자에게 문의해 주세요.";
		String url="/board/getBoardModify?id="+bvo.getId();
		sb.append("<script>");
		if(result>0) {
			msg="게시판이 수정되었습니다.";
			url="/board";
		}
		sb.append("alert('"+msg+"');");
		sb.append("location.replace('"+url+"');");
		sb.append("</script>");
		return sb.toString();
	}
	//게시판 삭제 (ajax)
	@RequestMapping("/setBoardDeleteAjax")
	@ResponseBody
	public Map<String, Object> setBoardDeleteAjax(@RequestParam(value = "id") String boardCode) {
		Map<String, Object> map = new HashMap<>();
		int result = boardService.deleteBoard(boardCode);
		
		String msg="게시판 삭제가 실패하였습니다. 관리자에게 문의해 주세요.";
		Boolean status = false;
		if(result>0) {
			boardService.deleteTblArticle(boardCode);
			boardService.deleteTblComment(boardCode);
			msg="게시판이 삭제되었습니다.";
			status=true;
		}
		map.put("status", status);
		map.put("msg", msg);
		return map;
	}
	//게시판 삭제 (일반)
	@RequestMapping("/setBoardDelete")
	@ResponseBody
	public String setBoardDelete(@RequestParam String boardCode) {
		StringBuilder sb = new StringBuilder();
		
		Map<String,Object> result = this.setBoardDeleteAjax(boardCode);

		String msg="게시판 삭제가 실패하였습니다. 관리자에게 문의해 주세요.";
		String url="/board";
		sb.append("<script>");
		if((boolean) result.get("status")) {
			msg="게시판이 삭제되었습니다.";
			url="/board";
		}
		sb.append("alert('"+msg+"');");
		sb.append("location.replace('"+url+"');");
		sb.append("</script>");
		return sb.toString();
	}
	//게시판 선택삭제 (ajax)
	@RequestMapping("/deleteSelBoard")
	@ResponseBody
	public Map<String, Object> deleteSelBoard(
			@RequestParam(value="uid[]") List<String>  boardCodeList
			) {
		Map<String, Object> map = new HashMap<>();
		int result=1;
		Map<String,Object> resultMap;
		for(String boardCode:boardCodeList) {
			resultMap =this.setBoardDeleteAjax(boardCode);
			result*=((boolean) resultMap.get("status"))?1:0;
		}
		String msg="게시판 삭제가 실패하였습니다. 관리자에게 문의해 주세요.";
		Boolean status = false;
		if(result>0) {
			msg="게시판이 삭제되었습니다.";
			status=true;
		}
		map.put("status", status);
		map.put("msg", msg);
		return map;
	}
	//코드 확인
	@RequestMapping("/boardCodeChk")
	@ResponseBody
	public Map<String,Object> boardCodeChk(@RequestParam String boardCode){
		Map<String,Object> map = new HashMap<>();
		int result=boardService.getBoardCode(boardCode);
		String msg="사용중인 코드가 있습니다.";
		boolean bStatus=false;
		if(result==0) {
			msg="사용가능한 코드 입니다.";
			bStatus=true;
		}
		map.put("status", bStatus);
		map.put("msg", msg);
		return map;
	}
	@RequestMapping("/boardTest")
	public ModelAndView boardTest(@RequestParam String template) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("template",template);
		mav.setViewName("/board/boardList");
		return mav;
	}
	@RequestMapping("/boardTest2")
	public ModelAndView boardTest2(@RequestParam String template) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("template",template);
		mav.setViewName("/board/boardContent");
		return mav;
	}
}

