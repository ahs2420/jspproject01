package com.krahs123.wathis.repository.article;

import java.util.List;

import com.krahs123.wathis.model.ArticleVO;
import com.krahs123.wathis.model.BoardVO;


public interface ArticleDAO {
	//게시판 정보
	public BoardVO getBoardConfig(String boardCode);
	//게시물 리스트
	public List<ArticleVO> getArticleList(String boardCode,String searchOpt,String words,int pageStart,int pagePer);
	//게시물 갯수
	public int getArticleCount(String boardCode,String searchOpt,String words);
	//게시물 등록
	public void setArticle(ArticleVO avo);
	//게시글 상세
	public ArticleVO getArticleDetail(String boardCode,int id);
	//게시글 삭제
	public int deleteArticle(String boardCode,int id);
	//조회수더하기
	public int updateHit(String boardCode,int id);
	//게시물에 연결된 댓글 삭제
	public int deleteCommentLink(String boardCode,int id);
	//답글에 사용할 정렬정보를 가져옴
	public ArticleVO getArticleReplyInfo(ArticleVO avo);
	//답글 정렬에 필요한 내용을 수정함
	public int setArticleRef(ArticleVO avo);
	//답글을 입력함
	public int setArticleReply(ArticleVO avo);
	//게시글 수정
	public int modifyArticle(ArticleVO avo);
	//게시글 이전글
	public ArticleVO getArticlePrev(String boardCode,int id);
	//게시글 이후글
	public ArticleVO getArticleNext(String boardCode,int id);
	//메인 리스트
	public List<ArticleVO> getArticleMainList(String boardCode,int count);
}
