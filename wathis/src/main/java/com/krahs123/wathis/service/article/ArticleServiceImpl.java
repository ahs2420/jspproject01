package com.krahs123.wathis.service.article;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.krahs123.wathis.model.ArticleVO;
import com.krahs123.wathis.model.BoardVO;
import com.krahs123.wathis.repository.article.ArticleDAO;
@Service
public class ArticleServiceImpl implements ArticleService{
	@Autowired
	ArticleDAO articleDao;
	
	@Override
	public BoardVO getBoardConfig(String boardCode) {
		// TODO Auto-generated method stub
		return articleDao.getBoardConfig(boardCode);
	}

	@Override
	public void setArticle(ArticleVO avo) {
		// TODO Auto-generated method stub
		articleDao.setArticle(avo);
	}

	@Override
	public List<ArticleVO> getArticleList(String boardCode,String searchOpt,String words,int pageStart,int pagePer) {
		// TODO Auto-generated method stub
		return articleDao.getArticleList(boardCode,searchOpt,words,pageStart,pagePer);
	}

	@Override
	public int getArticleCount(String boardCode,String searchOpt,String words) {
		// TODO Auto-generated method stub
		return articleDao.getArticleCount(boardCode,searchOpt,words);
	}

	@Override
	public ArticleVO getArticleDetail(String boardCode,int aid) {
		// TODO Auto-generated method stub
		return articleDao.getArticleDetail(boardCode, aid);
	}

	@Override
	public int deleteArticle(String boardCode, int aid) {
		// TODO Auto-generated method stub
		return articleDao.deleteArticle(boardCode, aid);
	}

	@Override
	public int updateHit(String boardCode, int aid) {
		// TODO Auto-generated method stub
		return articleDao.updateHit(boardCode, aid);
	}


	@Override
	public int deleteCommentLink(String boardCode, int aid) {
		// TODO Auto-generated method stub
		return articleDao.deleteCommentLink(boardCode, aid);
	}

	@Override
	public int getArticleReplyInfo(ArticleVO avo) {
		// TODO Auto-generated method stub
		ArticleVO parentVO = articleDao.getArticleReplyInfo(avo);
		avo.setRe_level(parentVO.getRe_level());
		avo.setRe_step(parentVO.getRe_step());
		avo.setRef(parentVO.getRef());

		int result=articleDao.setArticleRef(avo);
		result+=articleDao.setArticleReply(avo);
		return result;
	}

	@Override
	public int modifyArticle(ArticleVO avo) {
		// TODO Auto-generated method stub
		return articleDao.modifyArticle(avo);
	}

	@Override
	public ArticleVO getArticlePrev(String boardCode, int id) {
		// TODO Auto-generated method stub
		return articleDao.getArticlePrev(boardCode, id);
	}

	@Override
	public ArticleVO getArticleNext(String boardCode, int id) {
		// TODO Auto-generated method stub
		return articleDao.getArticleNext(boardCode, id);
	}

	@Override
	public List<ArticleVO> getArticleMainList(String boardCode, int count) {
		// TODO Auto-generated method stub
		return articleDao.getArticleMainList(boardCode, count);
	}


}