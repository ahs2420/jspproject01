package com.krahs123.wathis.service.article;

import java.util.List;

import com.krahs123.wathis.model.ArticleVO;
import com.krahs123.wathis.model.BoardVO;

public interface ArticleService {
	public BoardVO getBoardConfig(String boardCode);
	public void setArticle(ArticleVO avo);
	public List<ArticleVO> getArticleList(String boardCode,String searchOpt,String words,int pageStart,int pagePer);
	public int getArticleCount(String boardCode,String searchOpt,String words);
	public ArticleVO getArticleDetail(String boardCode,int aid);
	public int deleteArticle(String boardCode,int aid);
	public int updateHit(String boardCode,int aid);
	//게시물에 연결된 댓글 삭제
	public int deleteCommentLink(String boardCode,int aid);
	//답글에 사용할 정렬정보를 가져옴
	public int getArticleReplyInfo(ArticleVO avo);
	//게시글 수정
	public int modifyArticle(ArticleVO avo);
	//게시글 이전글
	public ArticleVO getArticlePrev(String boardCode,int id);
	//게시글 이후글
	public ArticleVO getArticleNext(String boardCode,int id);
	//메인 리스트
	public List<ArticleVO> getArticleMainList(String boardCode,int count);
	
}
