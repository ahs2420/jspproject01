package com.krahs123.wathis.repository.article;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krahs123.wathis.model.ArticleVO;
import com.krahs123.wathis.model.BoardVO;

@Repository
public class ArticleDAOImpl implements ArticleDAO {
	@Autowired
	SqlSession sql;
	final String NAMESPACE = "mappers.ArticleMapper";
	
	@Override
	public BoardVO getBoardConfig(String boardCode) {
		// TODO Auto-generated method stub
		return sql.selectOne(NAMESPACE+".getBoardConfig",boardCode);
	}

	@Override
	public List<ArticleVO> getArticleList(String boardCode,String searchOpt,String words,int pageStart,int pagePer) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<>();
		map.put("boardCode", boardCode);
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		map.put("pageStart", pageStart);
		map.put("pagePer", pagePer);
		return sql.selectList(NAMESPACE+".getArticleList",map);
	}

	@Override
	public int getArticleCount(String boardCode,String searchOpt,String words) {
		Map<String,Object> map = new HashMap<>();
		map.put("boardCode", boardCode);
		map.put("searchOpt", searchOpt);
		map.put("words", words);
		return sql.selectOne(NAMESPACE+".getArticleCount",map);
	}
	
	@Override
	public void setArticle(ArticleVO avo) {
		// TODO Auto-generated method stub
		sql.insert(NAMESPACE+".setArticle",avo);
	}

	@Override
	public ArticleVO getArticleDetail(String boardCode,int id) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<>();
		map.put("boardCode", boardCode);
		map.put("id", id);
		return sql.selectOne(NAMESPACE+".getArticleDetail",map);
	}

	@Override
	public int deleteArticle(String boardCode, int id) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<>();
		map.put("boardCode", boardCode);
		map.put("id", id);
		return sql.delete(NAMESPACE+".deleteArticle",map);
	}

	@Override
	public int updateHit(String boardCode, int id) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<>();
		map.put("boardCode", boardCode);
		map.put("id", id);
		return sql.update(NAMESPACE+".updateHit",map);
	}


	@Override
	public int deleteCommentLink(String boardCode, int id) {
		Map<String,Object> map = new HashMap<>();
		map.put("boardCode", boardCode);
		map.put("id", id);
		return sql.delete(NAMESPACE+".deleteCommentLink",map);
	}

	@Override
	public ArticleVO getArticleReplyInfo(ArticleVO avo) {
		return sql.selectOne(NAMESPACE+".getArticleReplyInfo",avo);
	}

	@Override
	public int setArticleRef(ArticleVO avo) {
		// TODO Auto-generated method stub
		return sql.update(NAMESPACE+".setArticleRef",avo);
	}

	@Override
	public int setArticleReply(ArticleVO avo) {
		// TODO Auto-generated method stub
		return sql.insert(NAMESPACE+".setArticleReply",avo);
	}

	@Override
	public int modifyArticle(ArticleVO avo) {
		// TODO Auto-generated method stub
		return sql.update(NAMESPACE+".modifyArticle",avo);
	}

	@Override
	public ArticleVO getArticlePrev(String boardCode, int id) {
		Map<String,Object> map = new HashMap<>();
		map.put("boardCode", boardCode);
		map.put("id", id);
		return sql.selectOne(NAMESPACE+".getArticlePrev",map);
	}

	@Override
	public ArticleVO getArticleNext(String boardCode, int id) {
		Map<String,Object> map = new HashMap<>();
		map.put("boardCode", boardCode);
		map.put("id", id);
		return sql.selectOne(NAMESPACE+".getArticleNext",map);
	}

	@Override
	public List<ArticleVO> getArticleMainList(String boardCode, int count) {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<>();
		map.put("boardCode", boardCode);
		map.put("count", count);
		return sql.selectList(NAMESPACE+".getArticleMainList",map);
	}
}
