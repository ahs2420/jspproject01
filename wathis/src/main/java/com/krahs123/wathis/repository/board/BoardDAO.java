package com.krahs123.wathis.repository.board;

import java.util.List;

import com.krahs123.wathis.model.BoardVO;


public interface BoardDAO {
	//게시판 리스트
	public List<BoardVO> getBoardList(String searchOpt,String words,int pageIndex,int pagePer);
	//게시판 갯수
	public int getBoardCount(String searchOpt,String words);
	//게시판생성
	public int setBoard(BoardVO bvo);//db입력
	//테이블 생성
	public int createTblArticle(String boardCode);//게시판
	public int createTblComment(String boardCode);//댓글
	//게시판 상세
	public BoardVO getBoardDetail(int id);
	//게시판 수정
	public int updateBoard(BoardVO bvo);
	//테이블 삭제
	public int deleteBoard(String boardCode);
	public int deleteTblArticle(String boardCode);//게시판 테이블
	public int deleteTblComment(String boardCode);//댓글 테이블
	//게시판 코드 중복 확인
	public int getBoardCode(String boardCode);

}
