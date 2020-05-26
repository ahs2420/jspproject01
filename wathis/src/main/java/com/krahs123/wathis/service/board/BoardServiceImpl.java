package com.krahs123.wathis.service.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.BoardVO;
import com.krahs123.wathis.repository.board.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	BoardDAO boardDAO;
	@Override
	public List<BoardVO> getBoardList(String searchOpt,String words,int pageIndex,int pagePer) {
		// TODO Auto-generated method stub
		return boardDAO.getBoardList(searchOpt,words,pageIndex,pagePer);
	}
	@Override
	public int getBoardCount(String searchOpt,String words) {
		// TODO Auto-generated method stub
		return boardDAO.getBoardCount(searchOpt,words);
	}
	@Override
	public int setBoard(BoardVO bvo) {
		// TODO Auto-generated method stub
		return boardDAO.setBoard(bvo);
	}
	@Override
	public int createTblArticle(String boardCode) {
		// TODO Auto-generated method stub
		return boardDAO.createTblArticle(boardCode);
	}
	@Override
	public int createTblComment(String boardCode) {
		// TODO Auto-generated method stub
		return boardDAO.createTblComment(boardCode);
	}
	@Override
	public BoardVO getBoardDetail(int id) {
		// TODO Auto-generated method stub
		return boardDAO.getBoardDetail(id);
	}
	@Override
	public int updateBoard(BoardVO bvo) {
		// TODO Auto-generated method stub
		return boardDAO.updateBoard(bvo);
	}
	@Override
	public int deleteBoard(String boardCode) {
		// TODO Auto-generated method stub
		return boardDAO.deleteBoard(boardCode);
	}
	@Override
	public int deleteTblArticle(String boardCode) {
		// TODO Auto-generated method stub
		return boardDAO.deleteTblArticle(boardCode);
	}
	@Override
	public int deleteTblComment(String boardCode) {
		// TODO Auto-generated method stub
		return boardDAO.deleteTblComment(boardCode);
	}
	@Override
	public int getBoardCode(String boardCode) {
		// TODO Auto-generated method stub
		return boardDAO.getBoardCode(boardCode);
	}
}
